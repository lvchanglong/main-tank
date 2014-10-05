package main.tank

import java.text.DateFormat

/**
 * 系统前台
 * @author lvchanglong
 *
 */
class X520Controller {

	static defaultAction = "index" //默认方法
	
	def index() {
		
	}
	
	/**
	 * 1：个人空间
	 */
	def kongJian(String zhangHao) {
		[yonghu: YongHu.findByZhangHao(zhangHao)]
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
	 * ip详情
	 * @param ip
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
	
}
