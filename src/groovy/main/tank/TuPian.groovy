package main.tank

/**
 * 图片
 * @author lvchanglong
 *
 */
class TuPian {

	/**
	 * 文件名
	 */
	String fileName
	
	/**
	 * URL(href)
	 */
	String url = "javascript:void(0)"
	
	TuPian(String fileName) {
		this.fileName = fileName
	}
	
	TuPian(String fileName, String url) {
		this.fileName = fileName
		this.url = url
	}
	
	static main(args) {
		println new TuPian("fileName.jpg").url
	}

}
