package main.tank

import grails.rest.RestfulController
import grails.transaction.Transactional
import static org.springframework.http.HttpStatus.*
import static org.springframework.http.HttpMethod.*

class WenZhangRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	WenZhangRestfulController() {
		super(WenZhang)
	}
	
	@Transactional
	def xsave(WenZhang wenZhangInstance) {
		if (wenZhangInstance == null) {
			render status: NOT_FOUND
			return
		}

		wenZhangInstance.validate()
		if (wenZhangInstance.hasErrors()) {
			render status: NOT_ACCEPTABLE
			return
		}
		
		wenZhangInstance.save flush:true
		
		def map = new HashMap([
			"id":wenZhangInstance.id,
			"yongHu":wenZhangInstance.yongHu.xingMing,
			"dateCreated":formatDate(date:wenZhangInstance.dateCreated,format:"yyyy-MM-dd HH:mm:ss"),
			"biaoTi":"<a href='${createLink(controller:'wenZhang', action:'show', id:wenZhangInstance.id)}' target='_blank'>${wenZhangInstance.biaoTi}</a>"
		])
		respond map, [status: CREATED]
	}
}