<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-tw">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-tw" />
<title>Demo page - jsGears Image Uploader v1.0</title>
<style type="text/css">
h2 {background-color: #FFE097; margin-top: 0;}
#upload_block {border: 5px solid #FFB300; height: 230px;}
.JSGImgPreview {float: left; background: url() no-repeat center 50% #FFFAD9; width: 160px; height: 120px; border: solid 1px #0080FF; margin: 0 5px;}
</style>
</head>

<body>
<h1>JSG.ImageUploader Demo</h1>
<div id="upload_block">
  <h2>圖檔上傳測試區，可上傳 3 張圖</h2>
  <div id="preview_block"></div>
  <div style="clear: both;">
    <span id="image_input_block"></span>
  </div>
</div>
<hr />
表單在 Submit 前可使用：<br/>
1. isReady() 判斷是否仍在傳檔 <br/>
2. getFiles() 取得已上傳的檔名 <br/>
<input type="button" id="isReady" value="isReady" /><span id="resultIsReady"></span><br/>
<input type="button" id="getFiles" value="getFiles" /><span id="resultGetFiles"></span><br/>
<hr />
取得完整原始碼及教學：<a href="http://jsgears.com/">jsGears.com</a>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.form.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/JSG.ImageUploader.js"></script>

<script type="text/javascript">

$(function() {
  myImageUploader1 = new JSG.imgUploader({
    fileLimits: 3,
    actionUrl: 'StepUploadServlet.do',
    inputContainer: 'image_input_block',
    previewContainer: 'preview_block',
    existImages: 'images/sample1.jpg,images/sample2.jpg'
  });

  $('#isReady').click(function() {
    $('#resultIsReady').html(myImageUploader1.isReady().toString());
  });

  $('#getFiles').click(function() {
    $('#resultGetFiles').html(myImageUploader1.getFiles());
  });
});

</script>
</body>

</html>