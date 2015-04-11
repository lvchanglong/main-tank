package main.tank

import grails.converters.JSON
import grails.transaction.Transactional;
import java.nio.CharBuffer
import java.text.DateFormat
import javax.servlet.http.HttpSession;
import static org.springframework.http.HttpStatus.*

/**
 * 系统后台（爱你，在心中）
 * @author lvchanglong
 *
 */
class X520Controller {
	
	/**
	 * 用户登录(私有)
	 * @param zhangHao 账号
	 * @param miMa 密码
	 */
	def yongHuDengLu(String zhangHao, String miMa) {
		if (zhangHao) {
			def yonghu = YongHu.findByZhangHaoAndMiMa(zhangHao, miMa.encodeAsMD5())
			if (yonghu) {
				session.uid = yonghu.id
				render status: OK, text: '操作成功，初始化...'
				return
			} else {
				render status: UNAUTHORIZED, text: '认证失败'
				return
			}
		}
		render status: BAD_REQUEST, text: '请输入账号'
	}
	
	/**
	 * 用户注销(私有)
	 */
	def yongHuZhuXiao() {
		session.invalidate()
		render status: OK
	}
	
	/**
	 * 用户注册
	 */
	@Transactional
	def yongHuZhuCe(String zhangHao, String miMa, String queRenMiMa) {
		if (zhangHao) {
			if (miMa == queRenMiMa) {//确认密码一致性
				def yongHuInstance = YongHu.findByZhangHao(zhangHao)
				if (yongHuInstance) {//账号冲突
					render status: CONFLICT, text: '账号已存在'
					return
				}
				def yonghu = new YongHu([zhangHao: zhangHao, miMa: miMa])//注册用户
				if (!yonghu.hasErrors()) {
					yonghu.save flush: true
					render status: OK, text: '注册成功'
					return
				}
			}
			render status: NOT_ACCEPTABLE, text: '密码不一致'
			return
		}
		render status: BAD_REQUEST, text: '请输入账号'
	}
	
	/**
	 * 修改密码
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	@Transactional
	def miMaXiuGai(YongHu yongHuInstance, String yuanMiMa, String xinMiMa, String queRenMiMa) {
		if (yongHuInstance && yuanMiMa && xinMiMa && queRenMiMa) {
			if (xinMiMa == queRenMiMa) {//确认密码一致性
				if (yongHuInstance.miMa == yuanMiMa.encodeAsMD5()) {//原始密码验证
					yongHuInstance.miMa = xinMiMa.encodeAsMD5() //更新密码
					yongHuInstance.save(flush: true)
					render status: OK, text: "修改成功"
					return
				}
				render status: UNAUTHORIZED, text: "原密码有误"
				return
			}
			render status: NOT_ACCEPTABLE, text: "新密码不一致"
			return
		}
		render status: BAD_REQUEST, text: "请求不合法 "
	}
	
	/**
	 * 头像上传
	 * @param uid 被处理用户
	 */
	@Transactional
	def touXiangShangChuan(String fileName, String uid) {
		withForm {
			def yongHuInstance = YongHu.get(uid)
			if (yongHuInstance) {
				def assetPath = "KongJian/${yongHuInstance.zhangHao}/TuPian/${fileName}"
				BufferedInputStream fileIn = new BufferedInputStream(request.getInputStream())
				byte[] buf = new byte[1024]
				File file = ZiYuanGuanLi.getFile("grails-app/assets/working/${assetPath}")
				BufferedOutputStream fileOut = new BufferedOutputStream(new FileOutputStream(file))
				while (true) {
				   int bytesIn = fileIn.read(buf, 0, 1024)
				   if (bytesIn == -1) {
					  break
				   } else {
					  fileOut.write(buf, 0, bytesIn)
				   }
				}
				fileOut.flush()
				fileOut.close()
				
				yongHuInstance.touXiang = assetPath
				yongHuInstance.save(flush: true)//更新路径
				
				TuPian.yaSuo(file, 180, 180)//图片压缩处理
				
				render assetPath
			} else {
				render status: NOT_FOUND
			}
		}.invalidToken {
			// bad request
		}
	}
	
	/**
	 * 图片压缩
	 * @param fileName 文件名
	 * @param width 宽度限定
	 * @param height 高度限定
	 */
	def tuPianYaSuo(String fileName, Integer width, Integer height) {
		withForm {
			if(!fileName) {
				render status: BAD_REQUEST, text: "请求不合法 "
				return
			}
			if ((width == null && height == null) || (width && width <= 0) || (height && height <= 0)) {//错误数据处理
				width = 180
				height = 180
			} else if (width != null && height == null) {//宽度限定，高度自适
				height = 0
			} else if (width == null && height != null) {//高度限定，宽度自适
				width = 0
			}
			
			def assetPath = "LinShi/${fileName}"
			def filePath = "grails-app/assets/working/${assetPath}"
			
			BufferedInputStream fileIn = new BufferedInputStream(request.getInputStream())
			byte[] buf = new byte[1024]
			File file = ZiYuanGuanLi.getFile(filePath)
			BufferedOutputStream fileOut = new BufferedOutputStream(new FileOutputStream(file))
			while (true) {
				int bytesIn = fileIn.read(buf, 0, 1024)
				if (bytesIn == -1) {
					  break
				} else {
					  fileOut.write(buf, 0, bytesIn)
				}
			}
			fileOut.flush()
			fileOut.close()
			
			TuPian.yaSuo(file, width, height)//图片压缩处理
			
			render createLink(controller:"x520", action:"xiaZai", params:["filePath":filePath])
		}.invalidToken {
			// bad request
		}
	}
	
	/**
	 * 生肖查询
	 * @param nian 年份
	 */
	def shengXiaoChaXun(Integer nian) {
		if (nian && nian >= 0) {
			render BangZhu.getShengXiao(nian) as JSON
			return
		}
		render status: NOT_ACCEPTABLE
	}
	
	/**
	 * ip详情
	 * @param ip地址
	 */
	def ipXiangQing(String ip) {
		try {
			def url = new URL("http://wap.ip138.com/ip138.asp?ip=" + ip)
			def text = url.getText()
			render text.find(/(?<=<b>).*?(?=<\/b>)/)
		} catch(Exception e) {
			
		}
	}
	
	/**
	 * 下载
	 * @param filePath 文件路径  grails-app/assets/working/LinShi/${fileName}
	 */
	def xiaZai(String filePath) {
		File file = new File(filePath)
		def fileName = file.getName()
		def fileType = BangZhu.getFileType(fileName)
		response.contentType = grailsApplication.config.grails.mime.types[fileType]
		response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(fileName, "UTF-8"))
		def out = response.getOutputStream()
		out << file.getBytes()
		out.flush()
		out.close()
	}
	
}
