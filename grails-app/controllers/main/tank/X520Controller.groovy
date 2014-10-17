package main.tank

import java.text.DateFormat

import javax.servlet.http.HttpSession;

/**
 * 系统前台
 * @author lvchanglong
 *
 */
class X520Controller {

	static defaultAction = "index" //默认方法
	
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond GengXin.list(params), model:[gengXinInstanceCount:GengXin.count()]
	}
	
	/**
	 * 登录
	 * @param zhangHao 账号
	 * @param miMa 密码
	 */
	def dengLu(String zhangHao, String miMa) {
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
	def zhuXiao() {
		session.invalidate()
		render status: ZhuangTai.ZHENG_CHANG
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
