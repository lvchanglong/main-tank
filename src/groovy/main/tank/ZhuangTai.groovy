package main.tank

/**
 * HTTP状态码
 * @author lvchanglong
 *
 */
class ZhuangTai {

//	INTERNAL_SERVER_ERROR;内部服务器错误500
//	UNAUTHORIZED;未授权
//	NOT_FOUND;未找到
//	BAD_REQUEST;参数有误
//	NOT_ACCEPTABLE;验证未通过
//	UNPROCESSABLE_ENTITY;请求未接受
//	CONFLICT;冲突
//	OK;正常200
//	CREATED;已创建
//	NO_CONTENT;无内容
	
//	ACCEPTED;接受
//	NON_AUTHORITATIVE_INFORMATION;非官方信息
//	CONTINUE;继续
//	
//	SWITCHING_PROTOCOLS;转换协议
//	
//	PROCESSING;
//
//	CHECKPOINT;
//	
//	RESET_CONTENT;重置内容
//	
//	PARTIAL_CONTENT;局部内容
//	
//	MULTI_STATUS;
//	
//	ALREADY_REPORTED;
//	
//	IM_USED;
//	
//	MULTIPLE_CHOICES;多重选择
//	
//	MOVED_PERMANENTLY;
//
//	FOUND;找到
//	
//	MOVED_TEMPORARILY;
//	
//	SEE_OTHER;参见其他信息
//
//	NOT_MODIFIED;未修正
//	
//	USE_PROXY;使用代理
//	
//	TEMPORARY_REDIRECT;临时重定向
//	
//	RESUME_INCOMPLETE;
//	
//	PAYMENT_REQUIRED;
//	
//	FORBIDDEN;禁止
//
//	METHOD_NOT_ALLOWED;方法未允许
//	
//	PROXY_AUTHENTICATION_REQUIRED;代理服务器认证要求
//	
//	REQUEST_TIMEOUT;请求超时
//	
//	GONE;已经不存在
//
//	LENGTH_REQUIRED;需要数据长度
//	
//	PRECONDITION_FAILED;先决条件错误
//
//	REQUEST_ENTITY_TOO_LARGE;请求实体过大
//	
//	REQUEST_URI_TOO_LONG;请求URI过长
//
//	UNSUPPORTED_MEDIA_TYPE;不支持的媒体格式
//	
//	REQUESTED_RANGE_NOT_SATISFIABLE;请求范围无法满足
//
//	EXPECTATION_FAILED;期望失败
//	
//	I_AM_A_TEAPOT;
//	
//	INSUFFICIENT_SPACE_ON_RESOURCE;
//	
//	METHOD_FAILURE;
//	
//	DESTINATION_LOCKED;
//	
//	UNPROCESSABLE_ENTITY;
//	
//	LOCKED;
//	
//	FAILED_DEPENDENCY;
//	
//	UPGRADE_REQUIRED;
//	
//	PRECONDITION_REQUIRED;
//	
//	TOO_MANY_REQUESTS;
//	
//	REQUEST_HEADER_FIELDS_TOO_LARGE;
//	
//	NOT_IMPLEMENTED;未实现
//	
//	BAD_GATEWAY;未实现
//	
//	SERVICE_UNAVAILABLE;服务无法获得
//	
//	GATEWAY_TIMEOUT;网关超时
//	
//	HTTP_VERSION_NOT_SUPPORTED;不支持的 HTTP 版本
//	
//	VARIANT_ALSO_NEGOTIATES;
//	
//	INSUFFICIENT_STORAGE;
//	
//	LOOP_DETECTED;
//	
//	BANDWIDTH_LIMIT_EXCEEDED;
//	
//	NOT_EXTENDED;
//	
//	NETWORK_AUTHENTICATION_REQUIRED;
	
	/**
	 * 正常->修改成功
	 */
	static Integer ZHENG_CHANG = 200 //200 (OK/正常)
	/**
	 * 已创建->添加成功
	 */
	static Integer YI_CHUANG_JIAN = 201 //201 (Created/已创建)
	/**
	 * 无内容->删除成功
	 */
	static Integer WU_NEI_RONG = 204 //204 (No Content/无内容)
	/**
	 * 未找到->不存在
	 */
	static Integer WEI_ZHAO_DAO = 404 //404 (Not Found/未找到)
	/**
	 * 无法访问->未通过验证
	 */
	static Integer WU_FA_FANG_WEN = 406 //406 (Not Acceptable/无法访问)
	
	/**
	 * 冲突->已存在
	 */
	static Integer CHONG_TU = 409 //409 (Conflict/冲突)
	
	//100 (Continue/继续)
	//101 (Switching Protocols/转换协议)
	
	/**
	 * 接受
	 */
	static Integer JIE_SHOU = 202 //202 (Accepted/接受)
	//203 (Non-Authoritative Information/非官方信息)
	//205 (Reset Content/重置内容)
	//206 (Partial Content/局部内容)
	
	//300 (Multiple Choices/多重选择)
	//301 (Moved Permanently)
	//302 (Found/找到)
	//303 (See Other/参见其他信息)
	//304 (Not Modified/未修正)
	//305 (Use Proxy/使用代理)
	//307 (Temporary Redirect/临时重定向)
	
	/**
	 * 错误
	 */
	static Integer CUO_WU = 400 //400 (Bad Request/错误请求)
	/**
	 * 未授权
	 */
	static Integer WEI_SHOU_QUAN = 401 //401 (Unauthorized/未授权)
	/**
	 * 禁止
	 */
	static Integer JIN_ZHI = 403 //403 (Forbidden/禁止)
	
	//405 (Method Not Allowed/方法未允许)
	//407 (Proxy Authentication Required/代理服务器认证要求)
	//408 (Request Timeout/请求超时)
	
	//410 (Gone/已经不存在)
	//411 (Length Required/需要数据长度)
	//412 (Precondition Failed/先决条件错误)
	//413 (Request Entity Too Large/请求实体过大)
	//414 (Request URI Too Long/请求URI过长)
	//415 (Unsupported Media Type/不支持的媒体格式)
	//416 (Requested Range Not Satisfiable/请求范围无法满足)
	//417 (Expectation Failed/期望失败)
	
	/**
	 * 内部服务器错误（异常）
	 */
	static Integer YI_CHANG = 500 //500 (Internal Server Error/内部服务器错误)
	/**
	 * 未实现
	 */
	static Integer WEI_SHI_XIAN = 501 //501 (Not Implemented/未实现)
	
	//502 (Bad Gateway/错误的网关)
	//503 (Service Unavailable/服务无法获得)
	//504 (Gateway Timeout/网关超时)
	//505 (HTTP Version Not Supported/不支持的 HTTP 版本)
	
	static main(args) {
		ZhuangTai.ZHENG_CHANG
	}

}
