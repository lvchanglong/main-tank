package main.tank

/**
 * 资源管理
 * @author lvchanglong
 *
 */
class ZiYuanGuanLi {

	/**
	 * 获得文件夹
	 * @param path 文件夹路径
	 */
	static File getFolder(String path) {
		File folder = new File(path)
		if(false == folder.exists()) {
			folder.mkdirs()
		}
		return folder
	}
	
	/**
	 * 获得文件
	 * @param path 文件路径
	 */
	static File getFile(String path) {
		File file = new File(path)
		this.getFolder(file.getParent())//确保文件夹存在
		return file
	}
	
	static main(args) {
	
	}

}
