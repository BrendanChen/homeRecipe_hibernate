<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.cookWayCode.model.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.kindCode.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	KindCodeServiceImpl kindCodeService = new KindCodeServiceImpl();
	List<KindCodeVO> list = kindCodeService.getAll();
	pageContext.setAttribute("list", list);

	CookWayCodeServiceImpl cookWayCodeServiceImpl = new CookWayCodeServiceImpl();
	List<CookWayCodeVO> cookWayCodeList = cookWayCodeServiceImpl.getAll();
	pageContext.setAttribute("cookWayCodeList", cookWayCodeList);
%>

<!DOCTYPE html>
<html>

<head>
<title>add Recipe Page</title>

<link rel="stylesheet" media="all"
	href="<%=request.getContextPath()%>/css/D3.css" />

<link rel="stylesheet" media="all"
	href="<%=request.getContextPath()%>/css/D3_2.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>


<!-- 加入食材 -->
<script>
	$(document).on("click", ".addIngre", function() {

		var element = $(this);

		$.get("createTableServlet", function(responseText) {

			element.parent().before(responseText);
		});
	});
</script>

<!-- 新增組別 -->
<script>
	var group_no = 1;

	$(document).on("click", ".addGroup", function() {

		var element = $(this);

		$.get("CreateGroupServlet", {
			group_no : group_no
		}, function(responseText) {
			element.before(responseText);
			group_no++;
		});

	});
</script>


<!-- 刪除食材 -->
<script>
	function deleteIngredient() {

		$(document).on('click', ".removebtn", function(e) {

			e.preventDefault();

			//alert("進入刪除食材區塊...");

			var $this = $(this);

			//alert("$this = "+$this.attr('class'));

			$this.parent().parent().remove();

		});
	}
</script>

<!-- 刪除群組 -->

<script>
	function deleteGroup() {
		var txt;
		var r = confirm("您確定要刪除這個群組(群組內食材會一併刪除)?");
		if (r == true) {

			$(document).on('click', ".deleteGroup", function() {

				var $this = $(this);

				//$(document).load($this.attr('div'));

				$this.parent().parent().parent().parent().remove();

			});

		} else {

			// 			txt = "You pressed Cancel!";
			// 			alert(txt);
		}
	}
</script>


<!-- 上傳步驟圖片-->
<script>
	function stepUploadImg() {

		//alert("enter stepUploadImg function...");

		// 		var file;

		// 		$(document).on('change', ".uploadImage", function() {

		// 			//alert("進入區塊.....");

		// 			var formName = $(this).closest('form').attr('id');

		// 			file = $(this)[0].files[0];

		// 			sibling = $(this).siblings("img");

		// 			var test = file.name;

		// 			var fileName = test.replace(/.*[\/\\]/, '');

		// 			var rcp_seq = fileName.substring(0, 4);

		// 			let formNameId = '#' + formName;

		// 			var formData = new FormData($(formNameId)[0]);

		// 			formData.append('rcp_seq', rcp_seq);

		// 			var str;

		// 			$.ajax({
		// 				type : "POST",
		// 				url : "StepUploadServlet/ABC",
		// 				cache : false,
		// 				data : formData,
		// 				contentType : false,
		// 				processData : false,
		// 				success : function(result) {

		// 					var src = sibling.attr("src");

		// 					var res = src.substring(0, 50);

		// 					str = res + "step/" + rcp_seq + "/" + fileName;

		// 					sibling.attr("src", str);
		// 				}
		// 			});
		// 		});

		$(document).on('change', ".uploadImage", function() {

			//alert("123456789....");

			var $this = $(this).clone().appendTo("#testForm");

			alert("$this = " + $this);

			file = $(this)[0].files[0];

			sibling = $(this).siblings("img");

			var test = file.name;

			var fileName = test.replace(/.*[\/\\]/, '');

			var rcp_seq = fileName.substring(0, 4);

			var formData = new FormData($('#testForm')[0]);

			formData.append('rcp_seq', rcp_seq);

			var str;

			$.ajax({
				type : "POST",
				url : "StepUploadServlet/ABC",
				cache : false,
				data : formData,
				contentType : false,
				processData : false,
				success : function(result) {

					var src = sibling.attr("src");

					var res = src.substring(0, 50);

					str = res + "step/" + rcp_seq + "/" + fileName;

					sibling.attr("src", str);
				}
			});

			$('#testForm > input').detach();
		});

	}
</script>

<!-- 新增步驟 -->
<script>
	var step_no;

	$(document).ready(function() {

		step_no = $(".stepIndex").html();

	});

	$(document).on("click", ".addStepBtn", function() {

		step_no++;

		$.get("createStepBlockServlet.do", {
			step_no : step_no
		}, function(responseText) {
			$(".test").before(responseText);

		});

	});
</script>

<!-- 刪除步驟 -->
<script>
	$(document).on('click', ".stepRemove", function() {

		var $this = $(this);

		$(this).parent().parent().parent().parent().remove();

		step_no--;

	});
</script>

<!-- 上傳主照片 -->
<script>
	function uploadMainImg() {

		//alert("enter uploadMainImg....");

		var file;

		var sibling;

		$(document).on('change', ".uploadMainImage", function() {

			var $this = $(this).clone().appendTo("#testForm");

			file = $(this)[0].files[0];

			sibling = $(this).siblings("img");

			var test = file.name;

			var fileName = test.replace(/.*[\/\\]/, '');

			var rcp_seq = fileName.substring(0, 4);

			//.mainImage
			var formData = new FormData($('#testForm')[0]);

			formData.append('rcp_seq', rcp_seq);

			var str;

			$.ajax({
				type : "POST",
				url : "MainPicUploadServlet",
				cache : false,
				data : formData,
				contentType : false,
				processData : false,
				success : function(result) {
					var src = $("#mainImage").attr("src");

					var res = src.substring(0, 29);

					str = res + "main_picture/" + rcp_seq + "/" + fileName;

					$("#mainImage").attr("src", str);
				}
			});

			$('#testForm > input').detach();

		});
	}
</script>



</head>

<body>

	<div class="o-wrapper" id="o-wrapper">

		<jsp:include page="/head.jsp" />

		<div class="container">

			<div class="row">

				<div class="col-xs-12 col-md-8 center-block">

					<!-- <button class="btn btn-success" >發佈</button> -->
					<!-- <button class="btn btn-danger">刪除</button> -->

					<form method="post" enctype="multipart/form-data"
						action="<%=request.getContextPath()%>/recipe/recipe.do">

						<INPUT TYPE="SUBMIT" value="儲存" class="btn btn-success"> <input
							type="hidden" name="action" value="addRecipe">

						<article>

							<div class="edit-panel">

								<div data-reactroot="">

									<div class="recipe-paper inner-block">

										<div class="recipe-container">
											<h2 class="recipe-title clearfix">
												<div class="form-group required maxlen">
													<input type="text" class="form-control required maxlen"
														placeholder="請填寫食譜標題" name="rName" required="" value="">
													<div class="help-block">
														<span class="">剩餘16個字</span>
													</div>
												</div>
											</h2>
											<div class="row">
												<div class="col-xs-12 col-md-6">
													<!-- picture-frame -->
													<div class="mainImage">

														<img src="<%=request.getContextPath()%>/images/upload.jpg"
															alt="" id="mainImage" width="360px" height="270px">

														<input type="file" name="upfile" class="uploadMainImage"
															onchange="uploadMainImg()">

													</div>

													<div class="recipe-description">
														<h3>簡介</h3>
														<div class="form-group maxlen">
															<textarea class="form-control maxlen"
																placeholder="輸入食譜描述..." name="note" rows="3" cols="10"
																style="height: 80px;"></textarea>
															<div class="help-block">
																<span class="">剩餘200個字</span>
															</div>
														</div>
													</div>
												</div>
												<div class="col-xs-12 col-md-6">
													<div class="servings control-group">
														<label class="select optional control-label"><span>烹調時間</span><span>
																(分鐘) </span></label><select class="select optional form-control"
															name="cookTime"><option value="">未設定</option>
															<option value="5">5</option>
															<option value="10">10</option>
															<option value="15">15</option>
															<option value="20">20</option>
															<option value="30">30</option>
															<option value="45">45</option>
															<option value="60">60</option>
															<option value="90">90</option>
															<option value="120">120</option>
															<option value="180">180+</option></select>
													</div>
													<div class="servings control-group">
														<label class="select optional control-label"
															for="recipe[servings]"><span>份量</span><span>
																(人份) </span></label><select class="select optional form-control"
															name="serving"><option value="">未設定</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10+</option></select>
													</div>

													<div class="servings control-group">
														<label class="select optional control-label"
															for="recipe[servings]"> <span>料理種類</span>

														</label> <select class="select optional form-control"
															name="kindNo">
															<option value="">未設定</option>

															<c:forEach var="kindCodeVO" items="${list}">
																<option value="${kindCodeVO.kindNo}">${kindCodeVO.kindName}</option>
															</c:forEach>

														</select>

													</div>

													<div class="servings control-group">
														<label class="select optional control-label"
															for="recipe[servings]"> <span>烹調方式</span>

														</label> <select class="select optional form-control"
															name="cookWayNo">
															<option value="">未設定</option>

															<c:forEach var="cookWayCodeVO" items="${cookWayCodeList}">
																<option value="${cookWayCodeVO.cookWayNo}">${cookWayCodeVO.cookWayName}</option>
															</c:forEach>

														</select>
													</div>

													<div class="recipe-ingredients">
														<h3>
															食材 <small>名稱15字內，份量10字內，皆為必填！</small>
														</h3>
														<div>
															<div class="ingredients">

																<div class="group group-0">

																	<div class="">

																		<div class="form-group required maxlen">
																			<input type="text"
																				class="form-control required maxlen"
																				placeholder="分組名稱（例如：醬汁）" name="groupName"
																				required="" value="">
																		</div>

																	</div>

																	<div class="addIngreColum">
																		<button type="button"
																			class="btn btn-add-ingredient addIngre">加入食材</button>
																	</div>

																</div>

																<!--第二組食材 -->

															</div>

															<a class="btn btn-add-group addGroup">加入分組</a>

														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="recipe-steps">
											<h3>
												步驟 <small>可以一次上傳多張圖片</small> <a
													class="btn btn-add-step addStepBtn"></a>
											</h3>

											<div class="steps step-img-pull">
												<div>

													<div class="step fadeIn">
														<div class="media">

															<div class="fileupload-processing step-img pull-left">

																<img alt="step-cover" class="img-responsive"
																	src="http://localhost:8081/homeRecipe_hibernate/images/upload.jpg">

																<input type="file" name="upfile" class="uploadImage"
																	onchange="stepUploadImg()">

															</div>

															<div class="media-body">
																<big class="stepIndex">1</big>
																<!-- 																<b>1</b> -->

																<div class="edit-fn order pull-right">
																	<a class="btn btn-remove destroy stepRemove"> </a>
																</div>

																<div class="step-content">
																	<div class="form-group maxlen">
																		<label for="stepBody"
																			class="control-label maxlen hidden"></label>
																		<textarea class="form-control maxlen"
																			placeholder="點擊輸入..." name="detail" rows="3"
																			cols="10" maxlength="150" style="height: 72px;"></textarea>
																		<div class="help-block">
																			<span class="">剩餘150個字</span>
																		</div>
																	</div>
																</div>

															</div>
														</div>
													</div>

													<!--下一組步驟 -->

													<div class="test"></div>

												</div>
											</div>

										</div>

										<!--小撇步 -->
										<div class="notes">
											<h3>小撇步</h3>
											<div class="form-group maxlen">
												<textarea class="form-control maxlen" placeholder="點擊輸入..."
													name="trick" rows="3" cols="10" style="height: 72px;"></textarea>
												<div class="help-block">
													<span class="">剩餘200個字</span>
												</div>
											</div>
										</div>
										<!--小撇步 -->

									</div>
								</div>
							</div>

						</article>
					</form>
				</div>
			</div>
		</div>

	</div>
	<!-- 	<form id="testForm" enctype="multipart/form-data"></form> -->
</body>
</html>