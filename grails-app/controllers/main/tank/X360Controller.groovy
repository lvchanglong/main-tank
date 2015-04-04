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
		/*ArrayList slideList = [
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob17ygwj206b03tq2v.jpg", "Dan The Man Stage 1", "http://www.main-tank.com/kongjian/11599b3c1a8456f37533f0d23419e541"),
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob1p4awj206b03tjrd.jpg", "Dan The Man Stage 2", "http://www.main-tank.com/kongjian/482fd806f008bcacda7a93881db9926b"),
			new TuPian("http://ww2.sinaimg.cn/mw690/b21a3a8dtw1epcob27hetj206b03tq2y.jpg", "Dan The Man Stage 3", "http://www.main-tank.com/kongjian/e3a1842ae37699cf58b49da3c5fff321"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob2px67j206b03taa1.jpg", "Dan The Man Stage 4", "http://www.main-tank.com/kongjian/45c2723fe4cd70ad11d39c9c5115081c"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob3d2y5j206b03tjre.jpg", "Dan The Man Stage 5", "http://www.main-tank.com/kongjian/af335594e91f21b32042b977322ac0ac"),
			new TuPian("http://ww1.sinaimg.cn/mw690/b21a3a8dtw1epcob3u76lj206b03tq2x.jpg", "Dan The Man Stage 6", "http://www.main-tank.com/kongjian/e5302f1d254e2363acb453f8e3507b41"),
			new TuPian("http://ww4.sinaimg.cn/mw690/b21a3a8dtw1epcob4n6phj206b03t0so.jpg", "Dan The Man Stage 7", "http://www.main-tank.com/kongjian/92984178929b48538c3aa8f9c3d21c42")
		]*/
		
		ArrayList slideList = [
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/1.jpg"), "Dan The Man Stage 1", "http://www.main-tank.com/kongjian/11599b3c1a8456f37533f0d23419e541"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/2.jpg"), "Dan The Man Stage 2", "http://www.main-tank.com/kongjian/482fd806f008bcacda7a93881db9926b"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/3.jpg"), "Dan The Man Stage 3", "http://www.main-tank.com/kongjian/e3a1842ae37699cf58b49da3c5fff321"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/4.jpg"), "Dan The Man Stage 4", "http://www.main-tank.com/kongjian/45c2723fe4cd70ad11d39c9c5115081c"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/5.jpg"), "Dan The Man Stage 5", "http://www.main-tank.com/kongjian/af335594e91f21b32042b977322ac0ac"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/6.jpg"), "Dan The Man Stage 6", "http://www.main-tank.com/kongjian/e5302f1d254e2363acb453f8e3507b41"),
			new TuPian(assetPath(src:"YinYong/HuanDengPian/images/7.jpg"), "Dan The Man Stage 7", "http://www.main-tank.com/kongjian/92984178929b48538c3aa8f9c3d21c42")
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
	 * 网站运营
	 */
	def wangZhanYunYing() {
		
	}
	
	/**
	 * 反馈列表
	 */
	def fanKuiLieBiao() {
		
	}
	
	/**
	 * 更新日志
	 */
	def gengXinRiZhi() {
		def dangQianYongHu = null
		if(session.uid) {
			dangQianYongHu = YongHu.get(session.uid)
		}
		[dangQianYongHu:dangQianYongHu]
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
