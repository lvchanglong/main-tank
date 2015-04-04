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
	
	/**
	 * 近期公告
	 */
	def jinQiGongGao() {
		def array = ["I want to play a game with you", "我就是吕常龙", "我是这的站长", "我要不断的成长", "这是赔钱的网站，但我似乎并不在意"]
		
		Integer i = Math.floor(Math.random() * array.size())
		
		String wt = array[i];
		
		response.setHeader("Content-Type", "text/event-stream")
		response.setHeader("Cache-Control", "no-cache")
		response.setCharacterEncoding ("UTF-8")
		
		def printWriter = response.getWriter()

		printWriter.println("data:" + wt)
		
		printWriter.println()
		printWriter.flush()
	}
	
}
