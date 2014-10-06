package main.tank

import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController
import grails.transaction.Transactional

/**
 * 更新日志
 * @author lvchanglong
 *
 */
@Transactional(readOnly = true)
class GengXinController extends RestfulController {
	static responseFormats = ['json', 'xml']
	GengXinController() {
		super(GengXin)
	}
}
