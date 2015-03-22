package main.tank

import grails.rest.RestfulController
import grails.transaction.Transactional
import static org.springframework.http.HttpStatus.*
import static org.springframework.http.HttpMethod.*

class KongJianRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	KongJianRestfulController() {
		super(KongJian)
	}
}