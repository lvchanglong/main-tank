package main.tank

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
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond GengXin.list(params), model:[gengXinInstanceCount:GengXin.count()]
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
	 * 测试
	 * @param yongHuInstance
	 */
	def test(YongHu yongHuInstance) {
		render(template:"/layouts/other/yonghu/ziliao/1", model:[yongHuInstance: yongHuInstance])
	}
	
	/**
	 * 头像上传
	 */
	def touXiangShangChuan(String fileName, String userID) {
		YongHu.get(userID)
		BufferedInputStream fileIn = new BufferedInputStream(request.getInputStream())
		byte[] buf = new byte[1024]
		
		File file = ZiYuanGuanLi.getFile("web-app/space/${path}/${fileName}")
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
		
		render file.getPath()
	}
	
	/**
	 * 修改密码
	 */
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
