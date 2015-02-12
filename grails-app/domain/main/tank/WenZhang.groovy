package main.tank

import java.util.Date;

class WenZhang {

	static belongsTo = [yongHu: YongHu] //用户
	
	String biaoTi //标题
	String neiRong //html内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
	static constraints = {
		biaoTi(nullable: false, blank: false)
		neiRong(nullable: false, blank: false)
	}
	
	static mapping = {
		table 'WEN_ZHANG'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		biaoTi column: 'BIAO_TI'
		neiRong column: 'NEI_RONG', sqlType:"text"
		yongHu column: 'YONG_HU_ID'
		
		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
		
		sort dateCreated: "desc"
	}
	
	String toString() {
		return "${this.neiRong}"
	}
    
}
