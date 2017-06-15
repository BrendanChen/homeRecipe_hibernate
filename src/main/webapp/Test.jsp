<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Weird Lists</title>
<style type="text/css">
li {
	border: 1px solid black;
	display: inline-block;
	height: 25px;
	list-style-type: none;
	text-align: center;
	width: 50px;
}

ul {
	padding: 0;
}
</style>
</head>

<body>


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
		<div class='pull-left edit-fn'>
			<a class='btn btn-remove destroy removebtn'
				onclick='deleteIngredient()'></a>
		</div>
	</div>

</body>
</html>