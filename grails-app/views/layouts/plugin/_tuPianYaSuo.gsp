<div id="tuPianYaSuo" class="clearfix relative">
	
	<g:uploadForm controller="x520" action="tuPianYaSuo" onsubmit="tuPianYaSuo(jQuery(this).find([type=file])[0].files, '${ createLink(controller:"x520", action:"tuPianYaSuo") }', '#tuPianYaSuo .tuPianShangChuan', jQuery(this).serialize());return false" style="position: relative;min-height: 256px;min-width: 256px;width:30%;">									
		
		<input type="file" name="file" onchange="touXiangChaKan(this.files, '#tuPianYaSuo .tuPianWrapper', '#tuPianYaSuo .tuPianXuanZe', '#tuPianYaSuo .tuPianShangChuan');" multiple="false" class="borderBox"/>
		
		<div class="borderBox tuPianXuanZe">
			选择图片
		</div>
		
		<g:submitButton name="shangChuan" value="开始上传" class="tuPianShangChuan"/>
		
		<a href="javascript:void(0);" class="tuPianXiaZai" style="display:none;">点此下载</a>
		
		<g:field type="number" name="width" placeholder="限定宽度(px)" class="borderBox" style="width:180px;"/>
		<g:field type="number" name="height" placeholder="限定高度(px)" class="borderBox" style="width:180px;"/>
		
		<ul class="borderBox">
			<li>宽度&nbsp;+&nbsp;高度&nbsp;=&nbsp;&nbsp;(宽度, 高度)</li>
			<li>空值&nbsp;+&nbsp;空值&nbsp;=&nbsp;&nbsp;(180, 180)</li>
			<li>空值&nbsp;+&nbsp;300&nbsp;=&nbsp;&nbsp;(自适, 300)</li>
			<li>300&nbsp;+&nbsp;空值&nbsp;=&nbsp;&nbsp;(300, 自适)</li>
			<li>300&nbsp;+&nbsp;300&nbsp;=&nbsp;&nbsp;(300, 300)</li>
		</ul>
	</g:uploadForm>
	
	<div class="tuPianWrapper" style="position:absolute;right:0;top:0;width:70%;height:100%;">
		
	</div>
	
	<script type="text/javascript">
		//图片压缩
		function tuPianYaSuo(files, url, shangChuanSelector, params) {
		
			$shangChuan = jQuery(shangChuanSelector);//上传按钮
		
			if (files.length < 1) {
				$shangChuan.val("( ↑ _ ↑ )");
				$shangChuan.css("background-color", "transparent");
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
					console.log("读取开始");
					$shangChuan.val("读取开始");
				}
				
				reader.onprogress = function(p) {
					var loaded = p.loaded;
					var total = p.total;
					var baiFenBi = loaded / total * 100;
					console.log("读取进行中:" + baiFenBi + "%");
					$shangChuan.val("读取进行中:" + baiFenBi + "%");
				}
				
				reader.onload = function() {
					console.log("读取完成"); 
					$shangChuan.val("读取完成");
				}
				
				reader.onloadend = function() {
					if (reader.error) {//失败
						console.log(reader.error);
						$shangChuan.val("上传失败");
					} else {//成功
						var xhr = new XMLHttpRequest();
						xhr.open("POST", url + "?fileName=" + encodeURIComponent(file.name) + "&" + params);
		          		xhr.overrideMimeType("application/octet-stream");
						xhr.sendAsBinary(this.result);
						
						xhr.onreadystatechange = function() {
							if (xhr.readyState == 4) {
								if (xhr.status == 200) {
									//console.log("压缩成功");
									//console.log("response: " + xhr.responseText);
									
									$shangChuan.val("压缩成功");
									$shangChuan.css("background-color", "lightslategray");
									
									jQuery("#tuPianYaSuo .tuPianXiaZai").attr("href", xhr.responseText).show();
									$shangChuan.val("( ↓ _ ↓ )");
									$shangChuan.css("background-color", "transparent");
								}
							}
						}
					}
				}
				reader.readAsBinaryString(file);
		    }
		}
	</script>
</div>