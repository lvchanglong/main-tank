<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.baidu.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");
	
	String userDir = System.getProperty("user.dir");
	String rootPath = userDir + "/";
	
	out.write( new ActionEnter( request, rootPath ).exec() );
	
%>