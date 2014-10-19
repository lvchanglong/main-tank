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
		$(document).ajaxStart(function() {
			$('#spinner').fadeIn();
		}).ajaxStop(function() {
			$('#spinner').fadeOut();
		});
	})(jQuery);
}

//文件上传
function wenJianShangChuan(files, url, path) {

	try {//修复谷歌浏览器sendAsBinary()异常
	  if (typeof XMLHttpRequest.prototype.sendAsBinary == 'undefined') {
	    XMLHttpRequest.prototype.sendAsBinary = function(text){
	      var data = new ArrayBuffer(text.length);
	      var ui8a = new Uint8Array(data, 0);
	      for (var i = 0; i < text.length; i++) ui8a[i] = (text.charCodeAt(i) & 0xff);
	      this.send(ui8a);
	    }
	  }
	} catch (e) {}
		
	for(var i = 0; i < files.length; i++) {
        var file = files[i];//当前文件
        var reader = new FileReader();

        reader.onloadstart = function() {
			console.log("读取开始:" + file.size);
		}
		
		reader.onprogress = function(p) {
			console.log("读取进行中:" + p.loaded);
		}
		
		reader.onload = function() {
			console.log("读取完成"); 
		}
		
		reader.onloadend = function(e) {
			if (reader.error) {//失败
				console.log(reader.error);
			} else {//成功
				var xhr = new XMLHttpRequest();
				xhr.open("POST", url + "?fileName=" + file.name + "&path=" + path);
          		xhr.overrideMimeType("application/octet-stream");
				xhr.sendAsBinary(this.result);
				
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							console.log("上传成功");
							console.log("response: " + xhr.responseText);
						}
					}
				}
			}
		}
		reader.readAsBinaryString(file);
    }
	//console.log(files);
	
}

//图片查看
function tuPianChaKan(files, selector) {
	
	for(var i = 0; i < files.length; i++) {
         var tuPian = files[i];//图片
         var reader = new FileReader();
         reader.readAsDataURL(tuPian);
         reader.onload=function(e){
             //console.log(e.target.result);
             jQuery(selector).html("<img src='"+e.target.result+"' width='100%' height='100%' alt=''/>");
         };
    }
    
    //console.log(files);
}

//浮动响应
function responseToHover(wrapper, target) {
	jQuery(wrapper).hover(
		function () {
			jQuery(this).find(target).show();
		},
		function () {
			jQuery(this).find(target).hide();
		}
	);
}

//成功处理
function chengGongChuLi(data,textStatus,key,selector) {
	switch(textStatus) {
		case "success":
			jQuery("#" + key).find(selector).html("操作成功");
			break;
	}
}

//错误处理
function shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,key,selector) {
	switch(errorThrown) {
		case "Not Found":
			jQuery("#" + key).find(selector).html("资源未找到");
			break;
		case "Not Acceptable":
			jQuery("#" + key).find(selector).html("请求未接受");
			break;
	}
}

function success(data,textStatus, selector) {
	switch(textStatus) {
		case "success":
			jQuery(selector).html("操作成功");
			break;
	}
}

function failure(XMLHttpRequest,textStatus,errorThrown,selector) {
	switch(errorThrown) {
		case "Not Found":
			jQuery(selector).html("资源未找到");
			break;
		case "Not Acceptable":
			jQuery(selector).html("请求未接受");
			break;
	}
}

//远程分页
function remotePagination(wrapperClass) {
	jQuery(".pagination a").click(function() {
		jQuery(this).parents(wrapperClass + ":eq(0)").load(this.href);
		return false;
	});
}

//加入收藏
function shouCang(sURL, sTitle)
{
  try {
      window.external.addFavorite(sURL, sTitle);
  } catch(e) {
      try {
          window.sidebar.addPanel(sTitle, sURL, "");
      } catch (e) {
          alert("加入收藏失败，请使用Ctrl+D进行添加");
      }
  }
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
			
			ctx.fillStyle="#ffffff";
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