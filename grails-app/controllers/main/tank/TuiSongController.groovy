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
		def array = ["I want to play a game with you", "强者不需要等待机遇", "以心神洞察万物", "用实践更新认识，用认识指导实践", "能否想到是一种能力，能否做到是另一种能力", "只因没把自己逼到那种地步，所以如今才是如今这种程度", "一切都是资源，一切都有用处"]
		
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
