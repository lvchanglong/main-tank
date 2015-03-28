package main.tank

import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController;
import grails.transaction.Transactional

/**
 * 世界
 * @author lvchanglong
 */
class ShiJieRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	ShiJieRestfulController() {
		super(ShiJie)
	}
	
	@Transactional
	def xsave(ShiJie shiJieInstance, String biaoTi) {
		if (shiJieInstance == null || !biaoTi) {
			render status: BAD_REQUEST, text:"参数不合法"
			return
		}
		
		def kouLing = biaoTi.encodeAsMD5()//生成口令
		
		if (ShiJie.findByKouLing(kouLing)) {
			render status: CONFLICT, text: '已存在'
			return
		}
		
		shiJieInstance.kouLing = kouLing

		shiJieInstance.validate()
		if (shiJieInstance.hasErrors()) {
			render status: NOT_ACCEPTABLE, text:"未通过验证"
			return
		}
					
		shiJieInstance.save flush: true
		
		def map = new HashMap([
			"yongHu":shiJieInstance.yongHu.xingMing,
			"dateCreated":formatDate(date:shiJieInstance.dateCreated,format:"yyyy-MM-dd HH:mm:ss"),
			"biaoTi":shiJieInstance.biaoTi,
			"kouLing":"<a href='${createLink(controller:'x360', action:'kaiFangKongJian', id:shiJieInstance.kouLing)}' target='_blank'>${shiJieInstance.kouLing}</a>"
		])
		respond map, [status: CREATED]
	}
	
}