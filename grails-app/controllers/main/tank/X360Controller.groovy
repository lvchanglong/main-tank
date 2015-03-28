package main.tank

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;

/**
 * 系统前台（服务，全方位）
 * @author lvchanglong
 *
 */
class X360Controller {

	static defaultAction = "index" //默认方法
	
	/**
	 * 网站首页
	 */
	def index() {
		ArrayList slideList = [
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob17ygwj206b03tq2v.jpg", "Dan The Man Stage 1", "http://v.youku.com/v_show/id_XNjAyMTcyMjcy.html"),
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob1p4awj206b03tjrd.jpg", "Dan The Man Stage 2",  "http://v.youku.com/v_show/id_XNjAyMTcwMTU2.html"),
			new TuPian("http://ww2.sinaimg.cn/mw690/b21a3a8dtw1epcob27hetj206b03tq2y.jpg", "Dan The Man Stage 3",  "http://v.youku.com/v_show/id_XNTc1MDI3NDU2.html"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob2px67j206b03taa1.jpg", "Dan The Man Stage 4",  "http://v.youku.com/v_show/id_XNTc0NzAwNTg4.html"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob3d2y5j206b03tjre.jpg", "Dan The Man Stage 5",  "http://v.youku.com/v_show/id_XNTc0NTU1MTY4.html"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob3u76lj206b03tq2x.jpg", "Dan The Man Stage 6",  "http://v.youku.com/v_show/id_XNTc0NTUwNTQ4.html"),
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob4n6phj206b03t0so.jpg", "Dan The Man Stage 7",  "http://v.youku.com/v_show/id_XNjAyMTcxMjU2.html")
		]
		
		[slideList:slideList, zuiXinWenZhang: WenZhang.last()]
	}
	
	/**
	 * 我的世界
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def woDeShiJie(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 开放空间
	 * @param id 世界口令(ShiJie.kouLing)
	 */
	def kaiFangKongJian(String id) {
		if (id) {
			def shiJieInstance = ShiJie.findByKouLing(id)
			if (shiJieInstance) {
				def kongJianInstanceList = shiJieInstance.kongJians
				def dangQianYongHu = null
				if(session.uid) {
					dangQianYongHu = YongHu.get(session.uid)
				}
				return [shiJieInstance:shiJieInstance, kongJianInstanceList:kongJianInstanceList, dangQianYongHu:dangQianYongHu]
			}
			render status: NOT_FOUND, text:"未开通"
			return
		}
		render status: BAD_REQUEST, text:"请求不合法"
	}
	
	/**
	 * 个人管理
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def geRenGuanLi(YongHu yongHuInstance) {
		if (!yongHuInstance) {
			render status: NOT_FOUND
			return
		}
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人资料
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def geRenZiLiao(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人说说
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def geRenShuoShuo(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人文章
	 * @param yongHuInstance 被处理用户(id:YongHu)
	 */
	def geRenWenZhang(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 用前必读
	 */
	def yongQianBiDu() {
		
	}
	
	/**
	 * 联系方式
	 */
	def lianXiFangShi() {
		
	}
	
	/**
	 * 网站相关
	 */
	def wangZhanXiangGuan() {
		
	}
	
	/**
	 * 建议反馈
	 */
	def jianYiFanKui() {
		
	}
	
	/**
	 * 更新日志
	 */
	def gengXinRiZhi() {
		
	}
	
	/**
	 * 用户列表
	 */
	def yongHuLieBiao() {
		
	}
	
	/**
	 * 服务列表
	 */
	def fuWuLieBiao() {
		
	}
	
	/**
	 * 说说列表
	 */
	def shuoShuoLieBiao() {
		
	}
	
	/**
	 * 测试
	 */
	def test() {
		
	}
	
}
