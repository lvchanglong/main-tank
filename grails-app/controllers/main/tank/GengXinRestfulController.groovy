package main.tank

import grails.rest.RestfulController;

class GengXinRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	GengXinRestfulController() {
		super(GengXin)
	}
}
