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
	 * 自由空间
	 */
	def kongJian(String publicKey) {
		if (publicKey) {
			def yongHuInstance = null
			def privateKey = null
			if (session.uid) {
				yongHuInstance = YongHu.get(session.uid)
				privateKey = yongHuInstance.getPrivateKey()
			}
			def kongJianInstanceList = KongJian.findAllByKouLing(publicKey)
			return [publicKey:publicKey, privateKey:privateKey, yongHuInstance:yongHuInstance, kongJianInstanceList:kongJianInstanceList]
		}
		render status: BAD_REQUEST
	}
	
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
	 * 个人管理
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
	 * @param yongHuInstance 被查看用户
	 */
	def geRenZiLiao(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人说说
	 * @param yongHuInstance 被查看用户
	 */
	def geRenShuoShuo(YongHu yongHuInstance) {
		[yongHuInstance: yongHuInstance]
	}
	
	/**
	 * 个人空间-个人文章
	 * @param yongHuInstance 被查看用户
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
	 * 用户
	 */
	def yongHu() {
		
	}
	
	/**
	 * 服务
	 */
	def fuWu() {
		
	}
	
	/**
	 * 历史
	 */
	def liShi() {
		
	}
	
	/**
	 * 说说
	 */
	def shuoShuo() {
		
	}
	
	/**
	 * 测试
	 */
	def test() {
		render "Hello World"
	}
	
}
