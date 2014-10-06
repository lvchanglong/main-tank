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
		respond YongHu.list(params), model:[yongHuInstanceCount:YongHu.count()]
	}
	
	/**
	 * 1：个人空间
	 */
	def kongJian(String zhangHao) {
		[yonghu: YongHu.findByZhangHao(zhangHao)]
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
	
	def test() {
	   println "test"
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
