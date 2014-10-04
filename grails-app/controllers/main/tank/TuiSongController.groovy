package main.tank

/**
 * HTML5 EventSource（服务器实时推送）
 * @author lvchanglong
 *
 */
class TuiSongController {
	/**
	 * 获取当前时间
	 */
	def dangQianShiJian() {
		response.setHeader("Content-Type", "text/event-stream")
		response.setHeader("Cache-Control", "no-cache")
		response.setCharacterEncoding ("UTF-8")
		
		def printWriter = response.getWriter()

		printWriter.println("data:" + new Date().format("yyyy年MM月dd日 HH:mm:ss EEE"))
		
		printWriter.println()
		printWriter.flush()
	}
}
