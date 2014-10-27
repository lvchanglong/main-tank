package main.tank

import grails.converters.JSON
import grails.transaction.Transactional;

import java.nio.CharBuffer
import java.text.DateFormat

import javax.servlet.http.HttpSession;

/**
 * 系统前台
 * @author lvchanglong
 *
 */
class X520Controller {

	static defaultAction = "index" //默认方法
	
	/**
	 * 网站首页
	 * @param max
	 * @return
	 */
	def index() {
		ArrayList slideList = [
			new TuPian("seth.jpg"), new TuPian("yeshou.jpg"), new TuPian("gen.jpg"), new TuPian("sakura.jpg"), new TuPian("vega.jpg"), new TuPian("ken.jpg"), new TuPian("jingcha.jpg")
		]
		
		ArrayList cardList = [new TuPian("1.jpg"), new TuPian("2.jpg"), new TuPian("3.jpg"), new TuPian("4.png")]
		
		[
			slideList:slideList, cardList:cardList
		]
	}
	
	/**
	 * 个人空间
	 */
	def geRenKongJian(String zhangHao) {
		def yongHuInstance = YongHu.findByZhangHao(zhangHao)
		if (!yongHuInstance) {
			render status: ZhuangTai.WEI_ZHAO_DAO
			return
		}
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人资料
	 * @param yongHuInstance 被查看用户
	 */
	def geRenZiLiao(YongHu yongHuInstance) {
		render(template:"/layouts/other/yongHu/kongJian/ziLiao/1", model:[yongHuInstance: yongHuInstance])
	}
	
	/**
	 * 个人空间-个人说说
	 * @param yongHuInstance 被查看用户
	 */
	def geRenShuoShuo(YongHu yongHuInstance) {
		render(template:"/layouts/other/yongHu/kongJian/shuoShuo/0", model:[yongHuInstance: yongHuInstance])
	}
	
	/**
	 * 测试
	 * @param yongHuInstance
	 */
	def test(YongHu yongHuInstance) {
		
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
		render status: ZhuangTai.WU_FA_FANG_WEN
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
					render status: ZhuangTai.CHONG_TU
					return
				}
	
				def yonghu = new YongHu([zhangHao: zhangHao, miMa: miMa])//注册用户
				if (!yonghu.hasErrors()) {
					yonghu.save flush:true
					render status: ZhuangTai.ZHENG_CHANG
					return
				}
			}
		}
		render status: ZhuangTai.WU_FA_FANG_WEN
	}
	
	/**
	 * 头像上传
	 * grails-app/assets/images/KongJian/${yongHuInstance.zhangHao}/${fileName}
	 */
	@Transactional
	def touXiangShangChuan(String fileName, String userID) {
		def yongHuInstance = YongHu.get(userID)
		if (yongHuInstance) {
			def xiangDuiLuJing = "KongJian/${yongHuInstance.zhangHao}/${fileName}"//相对路径
			BufferedInputStream fileIn = new BufferedInputStream(request.getInputStream())
			byte[] buf = new byte[1024]
			File file = ZiYuanGuanLi.getFile("grails-app/assets/images/${xiangDuiLuJing}")
			BufferedOutputStream fileOut = new BufferedOutputStream(new FileOutputStream(file))
			while (true) {
			   int bytesIn = fileIn.read(buf, 0, 1024)
			   //System.out.println(bytesIn)
			   if (bytesIn == -1) {
				  break
			   } else {
				  fileOut.write(buf, 0, bytesIn)
			   }
			}
			fileOut.flush()
			fileOut.close()
			
			yongHuInstance.touXiang = xiangDuiLuJing
			yongHuInstance.save(flush: true)//更新路径
			
			render xiangDuiLuJing
		} else {
			render status: ZhuangTai.WU_FA_FANG_WEN
		}
	}
	
	/**
	 * 修改密码
	 */
	@Transactional
	def miMaXiuGai(YongHu yongHuInstance, String yuanMiMa, String xinMiMa, String queRenMiMa) {
		if (xinMiMa == queRenMiMa) {//确认密码一致性
			if (yongHuInstance) {
				if (yongHuInstance.miMa == yuanMiMa.encodeAsMD5()) {//原始密码验证
					yongHuInstance.miMa = xinMiMa.encodeAsMD5() //更新密码
					yongHuInstance.save(flush: true)
					//println yongHuInstance.errors
					render status: ZhuangTai.ZHENG_CHANG
					return
				}
			}
		}
		render status: ZhuangTai.WU_FA_FANG_WEN
	}
	
	/**
	 * 用户登录
	 * @param zhangHao 账号
	 * @param miMa 密码
	 */
	def yongHuDengLu(String zhangHao, String miMa) {
		def yonghu = YongHu.findByZhangHaoAndMiMa(zhangHao, miMa.encodeAsMD5())
		if (yonghu) {
			session.uid = yonghu.id
			render status: ZhuangTai.ZHENG_CHANG
		} else {
			render status: ZhuangTai.WU_FA_FANG_WEN
		}
	}
	
	/**
	 * 用户注销
	 */
	def yongHuZhuXiao() {
		session.invalidate()
		render status: ZhuangTai.ZHENG_CHANG
	}
	
	/**
	 * ip详情
	 * @param ip地址
	 */
	def ipXiangQing(String ip) {
		def url = new URL("http://wap.ip138.com/ip138.asp?ip=" + ip)
		def text = url.getText()
		//println text
		render text.find(/(?<=<b>).*?(?=<\/b>)/)
	}
	
	/**
	 * 用前必读
	 */
	def yongQianBiDu() {
		
	}
	
	/**
	 * 联系方式
	 */
	def lianXiFangShi() {
		
	}
	
	/**
	 * 网站相关
	 */
	def wangZhanXiangGuan() {
		
	}
	
	/**
	 * 建议反馈
	 */
	def jianYiFanKui() {
		
	}
	
}
