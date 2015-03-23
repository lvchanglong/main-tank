//文件上传备份
function wenJianShangChuan_backup(files, url, path) {

	if (files.length < 1) {
		console.log("请选择文件");
		return false;
	}
	
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
				xhr.open("POST", url + "?fileName=" + encodeURIComponent(file.name) + "&path=" + path);
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
function tuPianChaKan_backup(files, selector) {
	
	if (files.length < 1) {
		console.log("请选择图片");
		return false;
	}
	
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