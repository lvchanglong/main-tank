package main.tank

import java.util.Date;

class WenZhang {

	static belongsTo = [yongHu: YongHu] //用户
	
	String biaoTi //标题
	String guanJianCi//关键词
	String neiRong //html内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		biaoTi(nullable: false, blank: false)
		guanJianCi(nullable: true, blank: true)
		neiRong(nullable: false, blank: false)
	}
	
	static mapping = {
		table 'WEN_ZHANG'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		biaoTi column: 'BIAO_TI'
		guanJianCi column: 'GUAN_JIAN_CI'
		neiRong column: 'NEI_RONG', sqlType:"text"
		yongHu column: 'YONG_HU_ID'
		
		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
		
		sort dateCreated: "desc"
	}
	
	def beforeInsert() {
		println "Insert:" + new Date()
	}
	
	def beforeUpdate() {
		println "Update:" + new Date()
	}
	
	String toString() {
		return "${this.neiRong}"
	}
	
	String getGuanJianCiAsString() {
		return this.guanJianCi?:"暂无"
	}
    
}
