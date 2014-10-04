package main.tank

/**
 * 更新日志
 * @author lvchanglong
 *
 */
class GengXin {

	String neiRong //更新内容
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间
	
    static constraints = {
		neiRong(nullable: false, blank: false, unique: true)
    }
	
	static mapping = {
		table 'GENG_XIN_RI_ZHI'
		
		id column:'ID'
		version column:'BAN_BEN'
		
		neiRong column: 'NEI_RONG'
		
		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
	}
	
	String toString() {
		return "${this.neiRong}"
	}
	
}
