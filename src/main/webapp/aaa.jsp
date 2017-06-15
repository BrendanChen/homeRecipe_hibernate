<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>jQuery+php实现ajax文件上传</title>

<link rel="stylesheet" media="all"
	href="<%=request.getContextPath()%>/css/test.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery.form.js"></script>
</head>

<body>
<div id="header">
   <div id="logo"><h1><a href="http://www.helloweba.com" title="返回helloweba首页">helloweba</a></h1></div>
</div>

<div id="main">
   <h2 class="top_title"><a href="http://www.helloweba.com/view-blog-189.html">jQuery+php实现ajax文件上传</a></h2>
   <div class="demo">
   <input type="file"><br/>
   		<p>说明：示例中只允许上传gif/jpg格式的图片，图片大小不能超过500k。</p>
   		<div class="btn">
            <span>添加附件</span>
            <input id="fileupload" type="file" name="mypic">
        </div>
        <div class="progress">
    		<span class="bar"></span><span class="percent">0%</span >
		</div>
        <div class="files"></div>
        <div id="showimg"></div>
   </div>
</div>

<script type="text/javascript">
$(function () {
	var bar = $('.bar');
	var percent = $('.percent');
	var showimg = $('#showimg');
	var progress = $(".progress");
	var files = $(".files");
	var btn = $(".btn span");
	$("#fileupload").wrap("<form id='myupload' action='action.php' method='post' enctype='multipart/form-data'></form>");
    $("#fileupload").change(function(){
		$("#myupload").ajaxSubmit({
			dataType:  'json',
			beforeSend: function() {
        		showimg.empty();
				progress.show();
        		var percentVal = '0%';
        		bar.width(percentVal);
        		percent.html(percentVal);
				btn.html("上传中...");
    		},
    		uploadProgress: function(event, position, total, percentComplete) {
        		var percentVal = percentComplete + '%';
        		bar.width(percentVal);
        		percent.html(percentVal);
    		},
			success: function(data) {
				files.html("<b>"+data.name+"("+data.size+"k)</b> <span class='delimg' rel='"+data.pic+"'>删除</span>");
				var img = "http://demo.helloweba.com/upload/files/"+data.pic;
				showimg.html("<img src='"+img+"'>");
				btn.html("添加附件");
			},
			error:function(xhr){
				btn.html("上传失败");
				bar.width('0')
				files.html(xhr.responseText);
			}
		});
	});
	
	$(".delimg").live('click',function(){
		var pic = $(this).attr("rel");
		$.post("action.php?act=delimg",{imagename:pic},function(msg){
			if(msg==1){
				files.html("删除成功.");
				showimg.empty();
				progress.hide();
			}else{
				alert(msg);
			}
		});
	});
});
</script>

<div id="footer">
    <p>Powered by helloweba.com  允许转载、修改和使用本站的DEMO，但请注明出处：<a href="http://www.helloweba.com">www.helloweba.com</a></p>
</div>
<p id="stat"><script type="text/javascript" src="http://js.tongji.linezing.com/1870888/tongji.js"></script></p>
</body>
</html>