class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		"/"(controller:"x520", action:"index") // 首页
		
		"/kongjian/$zhangHao"(controller:"x520", action:"geRenKongJian") //kongjian：个人空间
		
		"/admin"(view:'/index')
        "500"(view:'/error')
	}
	
}
