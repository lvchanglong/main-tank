package main.tank

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*

class UEditorController {

	/**
	 * UMEditor图片上传
	 */
	def uploadImage() {
	
		def file = request.getFile('upfile')
		if ( file.isEmpty() ){
			render status: NOT_FOUND
			return
		}
		
		def originalName = file.getOriginalFilename() //得到原始文件名
		if (!this.checkFileType(originalName)) {//检查文件名后缀合法性
			render status: NOT_ACCEPTABLE
			return
		}
		
		def savePath = "grails-app/assets/resources/kindeditor/attached/image"
		
		SimpleDateFormat formater = new SimpleDateFormat("yyyyMMdd");
		def dateFolder = formater.format(new Date());//生成子目录
		savePath += "/" + dateFolder;
		
		File dir = new File(savePath);
		if (!dir.exists()) {
			try {
				dir.mkdirs();
			} catch (Exception e) {
				render status: INTERNAL_SERVER_ERROR
				return
			}
		}
		
		def fileName = this.getName(originalName);//服务器文件名(真实保存)
		def tarFile = new File(savePath, fileName)//服务器文件引用
		
		file.transferTo(tarFile) //开始上传
		
		def type = this.getFileExt(fileName);// 文件类型
		def size = tarFile.length()//文件大小
		def state = "SUCCESS"// 上传状态
		def url = assetPath(src: "kindeditor/attached/image/${dateFolder}/${fileName}");// 输出文件地址
		
		String callback = request.getParameter("callback");
		
		String result = "{\"name\":\""+ fileName +"\", \"originalName\": \""+ originalName +"\", \"size\": "+ size +", \"state\": \""+ state +"\", \"type\": \""+ type +"\", \"url\": \""+ url +"\"}";
		
		result = result.replaceAll( "\\\\", "\\\\" );

		if( callback == null ){
			render result
		}else{
		    render "<script>"+ callback +"(" + result + ")</script>"
		}
		
	}
	
	/**
	 * 文件类型判断
	 *
	 * @param fileName
	 * @return
	 */
	private boolean checkFileType(String fileName) {
		// 文件允许格式
		String[] allowFiles = [ ".rar", ".doc", ".docx", ".zip", ".pdf",".txt", ".swf", ".wmv", ".gif", ".png", ".jpg", ".jpeg", ".bmp" ];
		Iterator<String> type = Arrays.asList(allowFiles).iterator();
		while (type.hasNext()) {
			String ext = type.next();
			if (fileName.toLowerCase().endsWith(ext)) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 依据原始文件名生成新文件名
	 * @return
	 */
	private String getName(String fileName) {
		Random random = new Random();
		return random.nextInt(10000) + System.currentTimeMillis() + this.getFileExt(fileName);
	}

	/**
	 * 获取文件扩展名
	 *
	 * @return string
	 */
	private String getFileExt(String fileName) {
		return fileName.substring(fileName.lastIndexOf("."));
	}
	
	/**
	 * 根据字符串创建本地目录 并按照日期建立子目录返回
	 * @param path
	 * @return
	 */
	private String getFolder(String path) {
		SimpleDateFormat formater = new SimpleDateFormat("yyyyMMdd");
		path += "/" + formater.format(new Date());
		File dir = new File(path);
		if (!dir.exists()) {
			try {
				dir.mkdirs();
			} catch (Exception e) {
				return "";
			}
		}
		return path;
	}
	
}
