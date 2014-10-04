class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		"/"(controller:"x520", action:"index") // 首页
		
		"/1/$zhangHao"(controller:"x520", action:"kongJian") //1：个人空间
		
		"/admin"(view:'/index')
        "500"(view:'/error')
	}
	
}
