class BootStrap {

	def xiTongService //系统服务
	
    def init = { servletContext ->
		xiTongService.chuShiHua()
    }
    def destroy = {
    }
}
