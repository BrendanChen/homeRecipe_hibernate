<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">

$('#UPLOAD_FILE').change(function(){
	 
    if(confirm("是否確定上傳?")){
 
        $(this).upload('url', function(res) {
 
            if(res.status == 'OK'){
 
                alert(res.msg);
 
            }else if(res.status == 'NG'){
 
                alert(res.msg);
 
            }
 
        }, 'json');
 
    }
 
});



</script>


</head>
<body>
	
	<input name="UPLOAD_FILE" id="UPLOAD_FILE" type="file"/>
	
	
	
</body>
</html>