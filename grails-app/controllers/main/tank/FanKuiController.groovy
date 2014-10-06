package main.tank

import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController;
import grails.transaction.Transactional

/**
 * 建议反馈
 * @author lvchanglong
 *
 */

@Transactional(readOnly = true)
class FanKuiController extends RestfulController {
	static responseFormats = ['json', 'xml']
	FanKuiController() {
		super(FanKui)
	}
}
