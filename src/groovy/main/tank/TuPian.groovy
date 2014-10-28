package main.tank

import com.sun.image.codec.jpeg.JPEGImageEncoder
import java.awt.Image
import java.awt.image.BufferedImage
import javax.imageio.ImageIO;
import com.sun.image.codec.jpeg.JPEGCodec

/**
 * 图片
 * @author lvchanglong
 *
 */
class TuPian {

	/**
	 * 文件名
	 */
	String fileName
	
	/**
	 * URL(href)
	 */
	String url = "javascript:void(0)"
	
	TuPian(String fileName) {
		this.fileName = fileName
	}
	
	TuPian(String fileName, String url) {
		this.fileName = fileName
		this.url = url
	}
	
	/**
	 * 图片压缩
	 * @param fileSrc 原始图片
	 * @param fileTar 目标图片
	 * @param widthTar 目标宽度（0/自适应）
	 * @param heightTar 目标高度（0/自适应）
	 */
	static def yaSuo(File fileSrc, File fileTar, Integer widthTar, Integer heightTar) {
		if(fileSrc.exists()) {
			BufferedImage biSrc = ImageIO.read(fileSrc)
			Integer widthSrc = biSrc.getWidth()//原图宽度
			Integer heightSrc = biSrc.getHeight()//原图高度
			
			if(widthTar == 0) {//宽度自适应(高度固定)
				def rate = heightSrc / heightTar
				widthTar = widthSrc / rate
			} else if (heightTar == 0) {//高度自适应(宽度自适)
				def rate = widthSrc / widthTar
				heightTar = heightSrc / rate
			}
			
			Image scaledImage = biSrc.getScaledInstance(widthTar, heightTar, Image.SCALE_SMOOTH)//原图压缩
			BufferedImage biTar = new BufferedImage(widthTar, heightTar, BufferedImage.TYPE_INT_RGB)
			biTar.getGraphics().drawImage(scaledImage, 0, 0, null)

			ImageIO.write(biTar, BangZhu.getFileType(fileTar.getName()), fileTar)
			
			//输出jpeg
//			FileOutputStream out = new FileOutputStream(fileTar)
//			JPEGImageEncoder jpegEncoder = JPEGCodec.createJPEGEncoder(out)
//			jpegEncoder.encode(biTar)
//			out.close()
		}
	}
	
	/**
	 * 图片压缩(自身减肥)
	 * @param file
	 * @param widthTar 目标宽度（0/自适应）
	 * @param heightTar 目标高度（0/自适应）
	 */
	static def yaSuo(File file, Integer widthTar, Integer heightTar) {
		this.yaSuo(file, file, widthTar, heightTar)
	}
	
	static main(args) {
//		println new TuPian("fileName.jpg").url
		
		println TuPian.yaSuo(new File("C:\\Users\\lvchanglong\\Desktop\\素材\\左手.jpg"), 800, 0)
	}

}
