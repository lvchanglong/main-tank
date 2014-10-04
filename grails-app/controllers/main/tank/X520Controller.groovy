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
	
	def ip138(String ip) {
		def url = new URL("http://wap.ip138.com/ip138.asp?ip=" + "119.119.125.72")
		 
		println "-=============================="
		render url.getText().find(/(?=查询结果：).*?(?<=\<)/)
	}
	
	def test(String ip) {
		def url = new URL("http://wap.ip138.com/ip138.asp?ip=" + "119.119.125.72")
		
	   println "-==============================+++++++++++++++++++"
	   render url.getText().find(/查询结果：(.*?)</)
	}
	
}
