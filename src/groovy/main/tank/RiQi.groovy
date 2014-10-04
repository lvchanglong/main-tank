package main.tank

import java.util.Calendar;

/**
 * 日期
 * @author lvchanglong
 *
 */
class RiQi {

	Calendar calendar = Calendar.getInstance()
	
	/**
	 * 年
	 */
	def getNian() {
		return calendar.get(Calendar.YEAR)
	}
	
	/**
	 * 月
	 */
	def getYue() {
		return calendar.get(Calendar.MONTH)
	}
	
	/**
	 * 日
	 */
	def getRi() {
		return calendar.get(Calendar.DAY_OF_MONTH)
	}
	
	/**
	 * 星期
	 */
	def getXingQi() {
		switch(calendar.get(Calendar.DAY_OF_WEEK)) {
			case 1://星期天
				return "星期日"//日
			case 2://星期一
				return "星期一"//月
			case 3://星期二
				return "星期二"//火
			case 4://星期三
				return "星期三"//水
			case 5://星期四
				return "星期四"//木
			case 6://星期五
				return "星期五"//金
			case 7://星期六
				return "星期六"//土
		}
	}
	
	static main(args) {
		println new RiQi().getXingQi()
	}

}
