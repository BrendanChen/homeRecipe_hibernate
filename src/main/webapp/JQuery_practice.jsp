<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>

<style>





</style>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>


<script>

	$(document).ready(function() {
		$("#btn1").click(function() {
			$("p").append(" <b>Appended text</b>.");
		});

		$("#btn2").click(function() {
			$("#testTable").after("<table border='2'><thead><tr><th>Name</th><th>Number</th><th>Address</th></tr></thead><tbody><tr><td>Mike</td><td>123456</td><td>Taipei</td></tr><tr><td>Anderson</td><td>6446489</td><td>Kaohsiang</td></tr></tbody></table>");
		});
	});



	
</script>


</head>
<body>

	<p>This is a paragraph.</p>
	<p>This is another paragraph.</p>

	<!-- <ol> -->
	<!--   <li>List item 1</li> -->
	<!--   <li>List item 2</li> -->
	<!--   <li>List item 3</li> -->
	<!-- </ol> -->


	<table border="1" id="testTable">
		<thead>
			<tr>
				<th>Name</th>
				<th>Number</th>
				<th>Address</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Mike</td>
				<td>123456</td>
				<td>Taipei</td>
			</tr>

			<tr>
				<td>Anderson</td>
				<td>6446489</td>
				<td>Kaohsiang</td>
			</tr>
		</tbody>
	</table>
	
	<br>

	<button id="btn1">Append text</button>
	<button id="btn2">Append list items</button>

</body>
</html>