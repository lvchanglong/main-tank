package main.tank

/**
 * 文章
 * @author lvchanglong
 *
 */
class WenZhangController {

	static scaffold = true

	/**
	 * 某人的文章列表
	 * @param yongHuInstance 被查看人(id:YongHu)
	 */
	def index(YongHu yongHuInstance, Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		def wenZhangInstanceList
		def wenZhangInstanceCount
		if (yongHuInstance) {//过滤
			def criteria = WenZhang.where {
				yongHu {
					id == yongHuInstance.id
				}
			}
			params.sort = "dateCreated"//创建时间
			params.order = "desc"//降序
			wenZhangInstanceList = criteria.list(params)
			wenZhangInstanceCount = criteria.count()
		} else {
			wenZhangInstanceList = WenZhang.list(params)
			wenZhangInstanceCount = WenZhang.count()
		}
		respond wenZhangInstanceList, model:[wenZhangInstanceCount: wenZhangInstanceCount, yongHuInstance:yongHuInstance]
	}
	
}
