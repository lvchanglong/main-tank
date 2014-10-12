package main.tank

import grails.rest.RestfulController;

class FanKuiRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	FanKuiRestfulController() {
		super(FanKui)
	}
}
