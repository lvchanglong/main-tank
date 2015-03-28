package main.tank

/**
 * 说说
 * @author lvchanglong
 *
 */
class ShuoShuoController {

	static scaffold = true

	/**
	 * 某人的说说列表
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def index(YongHu yongHuInstance, Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		def shuoShuoInstanceList
		def shuoShuoInstanceCount
		if (yongHuInstance) {//过滤
			def criteria = ShuoShuo.where {
				yongHu {
					id == yongHuInstance.id
				}
			}
			params.sort = "dateCreated"//创建时间
			params.order = "desc"//降序
			shuoShuoInstanceList = criteria.list(params)
			shuoShuoInstanceCount = criteria.count()
		} else {
			shuoShuoInstanceList = ShuoShuo.list(params)
			shuoShuoInstanceCount = ShuoShuo.count()
		}
		respond shuoShuoInstanceList, model:[shuoShuoInstanceCount: shuoShuoInstanceCount, yongHuInstance:yongHuInstance]
	}
	
}
