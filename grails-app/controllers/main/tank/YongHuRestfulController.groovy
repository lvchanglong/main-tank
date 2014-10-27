package main.tank

import grails.rest.RestfulController;

class YongHuRestfulController extends RestfulController {
	static responseFormats = ['json', 'xml']
	YongHuRestfulController() {
		super(YongHu)
	}
	
	/**
	 * 个人资料
	 * @param yongHuInstance 被查看用户
	 */
	def geRenZiLiao(YongHu yongHuInstance) {
		render(template:"/layouts/other/yongHu/ziLiao/1", model:[yongHuInstance: yongHuInstance])
	}
	
	/**
	 * 个人说说
	 * @param yongHuInstance 被查看用户
	 */
	def geRenShuoShuo(YongHu yongHuInstance) {
		render(template:"/layouts/other/yongHu/shuoShuo/0", model:[yongHuInstance: yongHuInstance])
	}
}
