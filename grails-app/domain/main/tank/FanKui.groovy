package main.tank

import java.util.Date;

/**
 * 建议反馈
 * @author lvchanglong
 *
 */
class FanKui {

	static belongsTo = [yongHu: YongHu] //用户
	
	String neiRong //内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		neiRong(nullable: false, blank: false)
		yongHu(nullable: true, blank: true)
	}
	
	static mapping = {
		table 'JIAN_YI_FAN_KUI'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		neiRong column: 'NEI_RONG'
		yongHu column: 'YONG_HU_ID'

		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
		
		sort dateCreated: "desc"
	}
	
	String toString() {
		return "${this.neiRong}"
	}
	
	String getYongHuAsString() {
		return this.yongHu?:"匿名"
	}
}
