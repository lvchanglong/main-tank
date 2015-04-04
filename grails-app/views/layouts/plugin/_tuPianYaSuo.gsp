<div id="tuPianYaSuo" class="clearfix relative">
	<div class="tuPianWrapper">
		图片预览
	</div>
	
	<g:uploadForm controller="x520" action="tuPianYaSuo" onsubmit="tuPianYaSuo(jQuery(this).find([type=file])[0].files, '${ createLink(controller:"x520", action:"tuPianYaSuo") }', '#tuPianYaSuo .tuPianShangChuan', jQuery(this).serialize());return false">									
		
		<input type="file" name="file" onchange="touXiangChaKan(this.files, '#tuPianYaSuo .tuPianWrapper', '#tuPianYaSuo .tuPianXuanZe', '#tuPianYaSuo .tuPianShangChuan');" multiple="false" class="borderBox"/>
		
		<div class="preview borderBox tuPianXuanZe">
			选择图片
		</div>
		
		<g:submitButton name="shangChuan" value="开始上传" class="tuPianShangChuan"/>
		
		<a href="javascript:void(0);" class="tuPianXiaZai" style="display:none;">点此下载</a>
		
		<g:textField name="width" placeholder="限定宽度(px)" value=""/>
		<g:textField name="height" placeholder="限定高度(px)" value=""/>
		
		<ul class="borderBox">
			<li style="color:darkred;"><span>宽度</span>+<span>高度</span>=<span class="long">(宽度, 高度)</span></li>
			<li><span>空值</span>+<span>空值</span>=<span class="long">(180, 180)</span></li>
			<li><span>空值</span>+<span>300</span>=<span class="long">(自适, 300)</span></li>
			<li><span>300</span>+<span>空值</span>=<span class="long">(300, 自适)</span></li>
			<li><span>300</span>+<span>300</span>=<span class="long">(300, 300)</span></li>
		</ul>
	</g:uploadForm>
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
									$shangChuan.val("开始上传");
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