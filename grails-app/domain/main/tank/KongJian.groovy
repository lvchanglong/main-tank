package main.tank

import java.util.Date;

/**
 * 开放空间
 * @author lvchanglong
 *
 */
class KongJian {
	
	static belongsTo = [shiJie: ShiJie, yongHu: YongHu] //世界，用户 

	String neiRong //内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		neiRong(nullable: false, blank: false)
		shiJie(nullable: false, blank: false)
		yongHu(nullable: true, blank: true)
	}
	
	static mapping = {
		table 'KONG_JIAN'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		neiRong column: 'NEI_RONG', sqlType:"text"
		shiJie column: 'SHI_JIE_ID'
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
