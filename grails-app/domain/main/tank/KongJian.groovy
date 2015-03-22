package main.tank

import java.util.Date;

class KongJian {
	
	static belongsTo = [yongHu: YongHu] //用户

	String kouLing//空间口令
	String neiRong //内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		kouLing(nullable: false, blank: false)
		neiRong(nullable: false, blank: false)
		yongHu(nullable: true, blank: true)
	}
	
	static mapping = {
		table 'KONG_JIAN'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		kouLing column: 'KOU_LING', index: 'UK_ctnvfgro8en8bh0sdbh6hgtcj'
		neiRong column: 'NEI_RONG', sqlType:"text"
		yongHu column: 'YONG_HU_ID'

		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
	}
	
	String toString() {
		return "${this.neiRong}"
	}
	
	String getYongHuAsString() {
		return this.yongHu?:"匿名"
	}
	
}
