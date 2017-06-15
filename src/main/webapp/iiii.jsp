<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	test -->

	<div class='form-inline ingredient clearfix'>
		<div class='form-group required maxlen'>
			<input type='text'
				class='form-control ingredient-name required maxlen'
				placeholder='食材' name='name' required='' value=''>
		</div>
		<div class='form-group required maxlen'>
			<input type='text'
				class='form-control ingredient-unit required maxlen'
				placeholder='份量' name='quantity' required='' value=''>
		</div>
		<div class='pull-right edit-fn'>
			<a class='btn btn-remove destroy' href='#'></a><span
				class='drag-item'></span>
		</div>
	</div>




</body>
</html>