package main.tank

/**
 * 用户
 * @author lvchanglong
 *
 */
class YongHu {

	static hasMany = [shuoShuos: ShuoShuo] //说说
	
	String zhangHao //账号
	String miMa //密码
	
	String xingMing = "匿名" //姓名
	String xingBie = "未知" //性别
	String suoZai = "中国" //所在
	String quanXian = "普通用户" //权限
	String touXiang = "WangLuo/TouXiang/侦探.png" //头像
	String shengRi = "19491001" //生日
	String youXiang = "xxxxxxxxx@xx.com" //邮箱
	String shouJi = "xxxxxxxxxxx" //手机
	String jianJie = "暂无" //简介
	
	Date dateCreated //创建时间
	Date lastUpdated //更新时间

	static transients = ["gongWangIP", "sessionID"] //属性集合（不会出现在数据库中）
	
	String gongWangIP //公网-IP
	String sessionID //session-ID
	
	static constraints = {
		zhangHao(nullable: false, blank: false, unique: true)
		miMa(nullable: false, blank: false)
		xingMing(nullable: true, blank: true)
		xingBie(nullable: true, blank: true, inList: ["男", "女", "未知"])
		suoZai(nullable: true, blank: true)
		quanXian(nullable: true, blank: true, inList: ["管理员", "普通用户"])
		touXiang(nullable: true, blank: true)
		shengRi(nullable: true, blank: true)
		youXiang(nullable: true, blank: true, email: true)
		shouJi(nullable: true, blank: true)
		jianJie(nullable: true, blank: true)
	}
	
	static mapping = {
		table 'YONG_HU'
		
		id column:'ID'
		version column:'BAN_BEN'
		zhangHao column: 'ZHANG_HAO'
		miMa column: 'MI_MA'
		xingMing column: 'XING_MING'
		xingBie column: 'XING_BIE'
		suoZai column: 'SUO_ZAI'
		quanXian column: 'QUAN_XIAN'
		touXiang column: 'TOU_XIANG'
		shengRi column: 'SHENG_RI'
		youXiang column: 'YOU_XIANG'
		shouJi column: 'SHOU_JI'
		jianJie column: 'JIAN_JIE'

		dateCreated column: 'CHUANG_JIAN_SHI_JIAN'
		lastUpdated column: 'GENG_XIN_SHI_JIAN'
	}
	
	String toString() {
		return "${this.xingMing}"
	}
	
	def beforeInsert() {
		this.miMa = this.miMa.encodeAsMD5()
	}
	
	def beforeUpdate() {
		
	}
	
	/**
	 * 是管理员么？
	 * @return
	 */
	boolean shiFouGuanLiYuan() {
		return (this.quanXian == "管理员")
	}
	
	/**
	 * 设置管理员
	 */
	static Integer sheZhiGuanLiYuan() {
		
		def yonghu = YongHu.findWhere([zhangHao: "lvchanglong"])
		
		if (!yonghu) {
			Map map = [
				zhangHao: "lvchanglong",
				miMa: "123456",
				xingMing: "吕常龙",
				xingBie: "男",
				suoZai: "沈阳",
				quanXian: "管理员",
				touXiang: "WangLuo/TouXiang/警察.png",
				shengRi: "19880305",
				youXiang: "417891235@qq.com",
				shouJi: "13478275273",
				jianJie: "用实践更新认识、用认识指导实践"
			]
			yonghu = new YongHu(map)
			if (yonghu.hasErrors()) {
				return ZhuangTai.CUO_WU
			} else {
				yonghu.save flush:true
				return ZhuangTai.ZHENG_CHANG
			}
		}
		
		return ZhuangTai.JIN_ZHI
		
	}
	
	/**
	 * 设置测试员
	 */
	static Integer sheZhiCeShiYuan() {
		
		def yonghu = YongHu.findWhere([zhangHao: "test"])
		
		if (!yonghu) {
			Map map = [
				zhangHao: "test",
				miMa: "123456"
			]
			yonghu = new YongHu(map)
			if (yonghu.hasErrors()) {
				return ZhuangTai.CUO_WU
			} else {
				yonghu.save flush:true
				return ZhuangTai.ZHENG_CHANG
			}
		}
		
		return ZhuangTai.JIN_ZHI
		
	}
	
}
