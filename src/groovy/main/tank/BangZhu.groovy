package main.tank

class BangZhu {

	/**
	 * 通过年获得生肖
	 * @param nian 年
	 */
	static HashMap getShengXiao(Integer nian) {
		def idx = nian % 12
		switch(idx) {
			case 0:
				return new HashMap("zhongWen":"猴", "pinYin":"hou")
			case 1:
				return new HashMap("zhongWen":"鸡", "pinYin":"ji")
			case 2:
				return new HashMap("zhongWen":"狗", "pinYin":"gou")
			case 3:
				return new HashMap("zhongWen":"猪", "pinYin":"zhu")
			case 4:
				return new HashMap("zhongWen":"鼠", "pinYin":"shu")
			case 5:
				return new HashMap("zhongWen":"牛", "pinYin":"niu")
			case 6:
				return new HashMap("zhongWen":"虎", "pinYin":"hu")
			case 7:
				return new HashMap("zhongWen":"兔", "pinYin":"tu")
			case 8:
				return new HashMap("zhongWen":"龙", "pinYin":"long")
			case 9:
				return new HashMap("zhongWen":"蛇", "pinYin":"she")
			case 10:
				return new HashMap("zhongWen":"马", "pinYin":"ma")
			case 11:
				return new HashMap("zhongWen":"羊", "pinYin":"yang")
		}
	}
	
	/**
	 * 通过文件名获得文件类型
	 * @param fileName 文件名
	 */
	static String getFileType(String fileName) {
		return fileName.find(/(?<=\.).*$/)
	}
	
	static main(args) {
		println BangZhu.getFileType("fileName.txt")
	}

}
