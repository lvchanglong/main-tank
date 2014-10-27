package main.tank

import grails.rest.RestfulController;

class YongHuRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	YongHuRestfulController() {
		super(YongHu)
	}
}
