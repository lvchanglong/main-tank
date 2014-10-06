// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

/*
 * 连续动画
 * id:更新至id
 * imageSrc:image的src
 * w:单个图片宽度
 * h:单个图片高度
 * maxColumn:整个图片所占列数
 * formRow:起始行
 * toRow:终止行
 * ms:延迟执行时间
 * 
 */
function Motion(id, imageSrc, w, h, maxColumn, fromRow, toRow, ms, callFun, callIdx) {

	//载入图像
	this.loadImage = function() {
		var inst = this;
		inst.image.onload = function() {
			inst.go();
		}
	}

	//动作执行
	this.go = function() {
		var inst = this; //实例别名
		setTimeout(function(){
			
			var x = inst.x;
			var y = inst.y;
			var w = inst.w;
			var h = inst.h;
			
			var maxSize = inst.maxSize;
			var index = inst.index;
			var maxColumn = inst.maxColumn;
			
			var ctx = inst.ctx;
			var image = inst.image;
			
			ctx.fillRect(0, 0, w, h);
			ctx.drawImage(image, x, y, w, h, 0, 0, w, h);

			//数据更新
			inst.nIndex++;
			
			if (callIdx == inst.nIndex % maxColumn) {
				if (callFun) {
					callFun();
				}
				//console.log(inst.nIndex);
			}
			
			if (inst.nIndex >= maxSize) {
				inst.nIndex = index;
			}

			inst.x = (inst.nIndex % maxColumn) * w;
			inst.y = Math.floor(inst.nIndex / maxColumn) * h;
			
			inst.go();//再次执行
			
		}, inst.ms);
	}
	
	var canvas = jQuery("#" + id)[0];//画布
	canvas.width = w;
    canvas.height = h;
    this.ctx = canvas.getContext("2d");//上下文
	this.ctx.fillStyle="ffffff";
	
	this.image = new Image();//图片
	this.image.src = imageSrc;
	
	this.w = w;//图像宽度
	this.h = h;//图像高度
	this.maxColumn = maxColumn;//最大列数
	
	this.index = (fromRow - 1) * maxColumn;//初始索引
	this.nIndex = this.index;//自增索引(下限[index]->上限[maxSize])

	this.maxSize = this.index + maxColumn * (toRow - fromRow + 1);//最大容量
	
	this.x = (this.nIndex % maxColumn) * w;//当前起始x坐标
	this.y = Math.floor(this.nIndex / maxColumn) * h;//当前起始y坐标

	this.ms = ms;
	this.callIdx = callIdx;
	
	this.loadImage();
}

//说点什么
function Talk(dialogID, sayID, array) {
	this.dialogID = dialogID;
	this.sayID = sayID;
	this.array = array;
	this.arrayLength = this.array.length;
	
	this.go = function() {
		var wt = this.array[Math.floor(Math.random() * this.arrayLength)];
		$dialog = jQuery("#" + this.dialogID);
		if ($dialog.is(":hidden")) {
			//console.log(wt + "---" + this.sayID);
			
			jQuery("#" + this.sayID).html(wt);
			$dialog.show();
		} else {
			$dialog.hide();
		}
	}
}

//加入收藏
function shouCang(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}
