package main.tank

import grails.rest.RestfulController
import grails.transaction.Transactional
import static org.springframework.http.HttpStatus.*
import static org.springframework.http.HttpMethod.*

class ShuoShuoRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	ShuoShuoRestfulController() {
		super(ShuoShuo)
	}
	
	@Transactional
	def xsave(ShuoShuo shuoShuoInstance) {
		if (shuoShuoInstance == null) {
			render status: NOT_FOUND, text:"无法创建实例"
			return
		}

		shuoShuoInstance.validate()
		if (shuoShuoInstance.hasErrors()) {
			render status: NOT_ACCEPTABLE, text:"未通过验证"
			return
		}
		
		shuoShuoInstance.save flush: true
		
		def map = new HashMap([
			"yongHu":shuoShuoInstance.yongHu.xingMing,
			"dateCreated":formatDate(date:shuoShuoInstance.dateCreated,format:"yyyy-MM-dd HH:mm:ss"),
			"neiRong":shuoShuoInstance.neiRong
		])
		respond map, [status: CREATED]
	}
}