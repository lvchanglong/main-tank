package main.tank

import java.util.Date;

/**
 * 我的世界
 * @author lvchanglong
 *
 */
class ShiJie {

    static belongsTo = [yongHu: YongHu] //主宰
	
	SortedSet kongJians
	
	static hasMany = [kongJians: KongJian]//空间
	
	String biaoTi //标题
	String kouLing//口令
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		biaoTi(nullable: false, blank: false, unique: true)
		kouLing(nullable: false, blank: false, unique: true)
		yongHu(nullable: true, blank: true)
	}
	
	static mapping = {
		table 'SHI_JIE'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		biaoTi column: 'BIAO_TI'
		kouLing column: 'KOU_LING'
		
		yongHu column: 'YONG_HU_ID'

		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
	}
	
	String toString() {
		return "${this.biaoTi}"
	}
	
	String getYongHuAsString() {
		return this.yongHu?:"匿名"
	}
	
}
