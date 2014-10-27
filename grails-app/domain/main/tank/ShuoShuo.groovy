package main.tank

import java.util.Date;

class ShuoShuo {
	
	static belongsTo = [yongHu: YongHu] //用户
	
	String neiRong //内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		neiRong(nullable: false, blank: false)
	}
	
	static mapping = {
		table 'SHUO_SHUO'
		
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

}
