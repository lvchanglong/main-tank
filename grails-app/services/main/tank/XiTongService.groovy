package main.tank

import grails.transaction.Transactional

import javax.servlet.http.HttpSession

/**
 * 系统服务
 * @author lvchanglong
 *
 */
@Transactional
class XiTongService {

	/**
	 * 系统初始化
	 */
	void chuShiHua() {
		YongHu.sheZhiGuanLiYuan() //设置默认管理员账号
		YongHu.sheZhiCeShiYuan() //设置默认测试员账号
	}
	
	/**
	 * 用户登录
	 * @param zhangHao 账号
	 * @param miMa 密码
	 */
	def dengLu(String zhangHao, String miMa) {
		def yonghu = YongHu.findByZhangHaoAndMiMa(zhangHao, miMa)
		return yonghu
	}
	
	/**
	 * 用户注销
	 * @param session
	 */
	void zhuXiao(HttpSession session) {
		session.invalidate()
	}

}
