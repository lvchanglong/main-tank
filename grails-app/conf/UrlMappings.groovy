class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		"/kongjian/$id"(controller:"x360", action:"kaiFangKongJian")//关键词忽略大小写
		
		"/"(controller:"x360", action:"index")
		"/admin"(view:'/index')
		
        "500"(view:'/error')
	}
	
}
