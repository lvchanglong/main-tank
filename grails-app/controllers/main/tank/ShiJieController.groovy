package main.tank

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * 世界
 * @author lvchanglong
 *
 */
@Transactional(readOnly = true)
class ShiJieController {

    static scaffold = true

	/**
	 * 我的世界
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def index(YongHu yongHuInstance, Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		def shiJieInstanceList
		def shiJieInstanceCount
		if (yongHuInstance) {//过滤
			def criteria = ShiJie.where {
				yongHu {
					id == yongHuInstance.id
				}
			}
			params.sort = "dateCreated"//创建时间
			params.order = "desc"//降序
			shiJieInstanceList = criteria.list(params)
			shiJieInstanceCount = criteria.count()
		} else {
			shiJieInstanceList = ShiJie.list(params)
			shiJieInstanceCount = ShiJie.count()
		}
		respond shiJieInstanceList, model:[shiJieInstanceCount: shiJieInstanceCount, yongHuInstance:yongHuInstance]
	}
	
}
