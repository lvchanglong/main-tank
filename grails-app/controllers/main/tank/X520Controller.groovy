package main.tank

import java.text.DateFormat

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
	 * 个人空间
	 */
	def geRenKongJian(String zhangHao) {
		def yongHuInstance = YongHu.findByZhangHao(zhangHao)
		if (!yongHuInstance) {
			render status: ZhuangTai.WEI_ZHAO_DAO
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
