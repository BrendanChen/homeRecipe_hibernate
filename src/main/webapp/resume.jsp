<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<title>SO question 4112686</title>

<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-1fa3a0ccddc9796a97bfe34b33c1fe658fd9595388375228d97cc068fd93863e.css" />
<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/homepage-4e9c2c6b556d0f4b69591165e75499980f763ebb8dd71e13fc65c0c3d813ebf1.css" />
<link rel="icon" sizes="any" mask
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/icook_safari_pinned-1599538523bca201185b6bef7e12712785470bef099fcd60ad68e5d7b496a9af.svg">
<link rel="shortcut icon" type="image/x-icon"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/favicon-9db8e01cf53a999c927c95b0e479f8b609bd7eed5d9120f16eb49e4a6df9f1dc.ico" />

<script src="http://code.jquery.com/jquery-latest.min.js"></script>


<!-- 加入食材 -->
<script>
	$(document).on("click", "#somebutton", function() {

		$.get("createTableServlet", function(responseText) {
			$("#table-1 tr:last").after('<tr>' + responseText + '</tr>');
		});
	});
</script>

<!-- 新增組別 -->
<script>
	$(document)
			.on(
					"click",
					"#createGroup",
					function() {
						$("#table-1")
								.after(
										"<table id='table-2' border='2px'><thead><tr><th>GroupName:<input><button id='12345' class='btn btn-success'>addingredient</button></th></tr></thead><tbody></tbody></table>");
					});
</script>


<!-- 測試table取值 ... -->
<script>
	$(document).on("click", "#btnId", function() {

		x = document.getElementById("table-1").rows.length;

		var Divs = new Array();

		for (i = 1; i < x; i++) {
			var tr = document.getElementsByTagName("tr")[i];
			var tdl = tr.getElementsByTagName("td").length;

			for (j = 0; j < tdl; j++) {

				var td = tr.getElementsByTagName("td")[j];

				var Elemns = td.getElementsByTagName("input");

			}
		}
	});
</script>

<!-- 測試input取值 ... -->
<script type="text/javascript">
	$(document).ready(function() {
		var inputId = $('#inputId');
		var kk = $('#kk');
		kk.click(function() {
			alert(inputId.val());
		});
	});
</script>




<style>
table {
	margin-top: 25px;
}
</style>



</head>

<body>

	<%-- 	<form action="<%=request.getContextPath()%>/recipe/recipe.do" --%>
	<!-- 		method="post"> -->

	<!-- 		<div class='form-group required maxlen'> -->
	<!-- 			<table id="table-1" border="2"> -->

	<!-- 				<tbody> -->
	<!-- 					<tr> -->
	<!-- 						<th>Ingredient</th> -->
	<!-- 						<th>Serving</th> -->
	<!-- 						<th>GroupName</th> -->
	<!-- 					</tr> -->

	<!-- 				</tbody> -->

	<!-- 			</table> -->
	<!-- 			<a id="somebutton" class="btn btn-edit">新增食材</a> -->
	<!-- 		</div> -->

	<!-- 		<INPUT TYPE="SUBMIT" value="SUBMIT"> <input type="hidden" -->
	<!-- 			name="action" value="addRecipeTest"> -->
	<!-- 	</form> -->

	<br>

	<!-- 	<button onclick="myData()">click</button> -->

	<!-- 	<div class='form-group required maxlen'> -->
	<!-- 			<input type='text' -->
	<!-- 				class='form-control ingredient-name required maxlen' -->
	<!-- 				placeholder='食材' name='name' id='inputId'> -->
	<!-- 		</div> -->

	<!-- 		<button id="kk">click</button> -->


	<!-- 	<button id="btnId">click</button> -->

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-md-8 center-block">
				<article>
					<div class="edit-panel">

						<div data-reactroot="">

							<div class="recipe-paper inner-block">

								<div class="recipe-container">
									<h2 class="recipe-title clearfix">
										<div class="form-group required maxlen">
											<input type="text" class="form-control required maxlen"
												placeholder="請填寫食譜標題" name="name" required="" value="xxxx">
											<div class="help-block">
												<span class="">剩餘16個字</span>
											</div>
										</div>
									</h2>
									<div class="row">
										<div class="col-xs-12 col-md-6">
											<div class="picture-frame">
												<form accept-charset="utf-8"
													action="/recipes/199159.json.json" class="main-pic"
													enctype="multipart/form-data" method="put">
													<img
														src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/edit-placeholder-61df58dc486dbc43251065cfa6681b92bc0a1cdfede70a81c1833f963d3624a2.jpg"
														alt="recipe-cover"><input type="file"
														name="recipe[cover]"><input type="hidden"
														class="hidden" name="authenticity_token"
														value="Zrh2CWt/C0s6F/0HqfOJDEW1NuKyC0oE2afRKg/E8m8a4jTGgzL9WbUWK17k44/XJsPQxrTYOpFTy8MBOSJKlA=="><input
														type="hidden" class="hidden" name="_method" value="put">
												</form>
												<!-- react-empty: 19 -->
											</div>
											<div class="recipe-description">
												<h3>簡介</h3>
												<div class="form-group maxlen">
													<textarea class="form-control maxlen"
														placeholder="輸入食譜描述..." name="description" rows="3"
														cols="10" style="height: 80px;"></textarea>
													<div class="help-block">
														<span class="">剩餘200個字</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xs-12 col-md-6">
											<div class="servings control-group">
												<label class="select optional control-label"><span>烹調時間</span><span>
														(分鐘) </span></label><select class="select optional form-control"><option
														value="">未設定</option>
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
														(人份) </span></label><select class="select optional form-control"><option
														value="">未設定</option>
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
											<div class="recipe-ingredients">
												<h3>
													食材 <small>名稱15字內，份量10字內，皆為必填！</small>
												</h3>
												<div>
													<div class="ingredients">
														<div>
															<div class="group group-0">
																<div class="">
																	<div class="form-group required maxlen">
																		<input type="text"
																			class="form-control required maxlen"
																			placeholder="分組名稱（例如：醬汁）" name="group" required=""
																			value="">
																	</div>

																	<div class="form-inline ingredient clearfix">
																		<div class="form-group required maxlen">
																			<input type="text"
																				class="form-control ingredient-name required maxlen"
																				placeholder="食材" name="name" required="" value="">
																		</div>
																		<div class="form-group required maxlen">
																			<input type="text"
																				class="form-control ingredient-unit required maxlen"
																				placeholder="份量" name="quantity" required=""
																				value="">
																		</div>
																		<div class="pull-right edit-fn">
																			<a class="btn btn-remove destroy" href="#"></a><span
																				class="drag-item"></span>
																		</div>
																	</div>
																	<div class="form-inline ingredient clearfix">
																		<div class="form-group required maxlen">
																			<input type="text"
																				class="form-control ingredient-name required maxlen"
																				placeholder="食材" name="name" required="" value="">
																		</div>
																		<div class="form-group required maxlen">
																			<input type="text"
																				class="form-control ingredient-unit required maxlen"
																				placeholder="份量" name="quantity" required=""
																				value="">
																		</div>
																		<div class="pull-right edit-fn">
																			<a class="btn btn-remove destroy" href="#"></a><span
																				class="drag-item"></span>
																		</div>
																	</div>
																</div>
																<div>
																	<a class="btn btn-add-ingredient" href="#">加入食材</a>
																</div>
															</div>

															<!-- 															第二組食材 -->
															<!-- 															<div class="group group-0"> -->
															<!-- 																<div class=""> -->
															<!-- 																	<div class="form-group required maxlen"> -->
															<!-- 																		<input type="text" -->
															<!-- 																			class="form-control required maxlen" -->
															<!-- 																			placeholder="分組名稱（例如：醬汁）" name="group" required="" -->
															<!-- 																			value=""> -->
															<!-- 																	</div> -->

															<!-- 																	<div class="form-inline ingredient clearfix"> -->
															<!-- 																		<div class="form-group required maxlen"> -->
															<!-- 																			<input type="text" -->
															<!-- 																				class="form-control ingredient-name required maxlen" -->
															<!-- 																				placeholder="食材" name="name" required="" value=""> -->
															<!-- 																		</div> -->
															<!-- 																		<div class="form-group required maxlen"> -->
															<!-- 																			<input type="text" -->
															<!-- 																				class="form-control ingredient-unit required maxlen" -->
															<!-- 																				placeholder="份量" name="quantity" required="" -->
															<!-- 																				value=""> -->
															<!-- 																		</div> -->
															<!-- 																		<div class="pull-right edit-fn"> -->
															<!-- 																			<a class="btn btn-remove destroy" href="#"></a><span -->
															<!-- 																				class="drag-item"></span> -->
															<!-- 																		</div> -->
															<!-- 																	</div> -->
															<!-- 																	<div class="form-inline ingredient clearfix"> -->
															<!-- 																		<div class="form-group required maxlen"> -->
															<!-- 																			<input type="text" -->
															<!-- 																				class="form-control ingredient-name required maxlen" -->
															<!-- 																				placeholder="食材" name="name" required="" value=""> -->
															<!-- 																		</div> -->
															<!-- 																		<div class="form-group required maxlen"> -->
															<!-- 																			<input type="text" -->
															<!-- 																				class="form-control ingredient-unit required maxlen" -->
															<!-- 																				placeholder="份量" name="quantity" required="" -->
															<!-- 																				value=""> -->
															<!-- 																		</div> -->
															<!-- 																		<div class="pull-right edit-fn"> -->
															<!-- 																			<a class="btn btn-remove destroy" href="#"></a><span -->
															<!-- 																				class="drag-item"></span> -->
															<!-- 																		</div> -->
															<!-- 																	</div> -->
															<!-- 																</div> -->
															<!-- 																<div> -->
															<!-- 																	<a class="btn btn-add-ingredient" href="#">加入食材</a> -->
															<!-- 																</div> -->
															<!-- 															</div> -->

														</div>
													</div>
													<a class="btn btn-add-group" href="#">加入分組</a>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="recipe-steps">
									<h3>
										<!-- react-text: 68 -->
										步驟
										<!-- /react-text -->
										<small>可以一次上傳多張圖片</small>
									</h3>

									<div class="steps step-img-pull">
										<div>
											<div class="step fadeIn">
												<div class="media">
													<form action="/recipes/199159/steps.json.json"
														method="POST" enctype="multipart/form-data"
														accept-charset="utf-8" class="step-img pull-left">
														<div class="fileupload-processing">
															<img alt="step-cover" class="img-responsive"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/step-placeholder-d3a704728d5f9805ec3229e1cc22afb0b1468480447d751dfaaa393ef0efed14.jpg"><input
																type="file" multiple="" name="step[cover]"><input
																type="hidden" class="hidden" name="authenticity_token"
																value="Zrh2CWt/C0s6F/0HqfOJDEW1NuKyC0oE2afRKg/E8m8a4jTGgzL9WbUWK17k44/XJsPQxrTYOpFTy8MBOSJKlA=="><input
																type="hidden" class="hidden" name="_method" value="post">
														</div>
													</form>
													<div class="media-body">
														<big>1</big>
														<div class="edit-fn order pull-right">
															<a class="btn btn-add-step" href="#"></a><a
																class="btn btn-remove destroy" href="#"></a><span
																class="drag-item"></span>
														</div>
														<div class="step-content">
															<div class="form-group maxlen">
																<label for="stepBody"
																	class="control-label maxlen hidden"></label>
																<textarea class="form-control maxlen"
																	placeholder="點擊輸入..." name="stepBody" rows="3"
																	cols="10" maxlength="150" style="height: 72px;"></textarea>
																<div class="help-block">
																	<span class="">剩餘150個字</span>
																</div>
															</div>
														</div>
													</div>
													<!-- react-empty: 119 -->
												</div>
											</div>
											<div class="step fadeIn">
												<div class="media">
													<form action="/recipes/199159/steps.json.json"
														method="POST" enctype="multipart/form-data"
														accept-charset="utf-8" class="step-img pull-left">
														<div class="fileupload-processing">
															<img alt="step-cover" class="img-responsive"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/step-placeholder-d3a704728d5f9805ec3229e1cc22afb0b1468480447d751dfaaa393ef0efed14.jpg"><input
																type="file" multiple="" name="step[cover]"><input
																type="hidden" class="hidden" name="authenticity_token"
																value="Zrh2CWt/C0s6F/0HqfOJDEW1NuKyC0oE2afRKg/E8m8a4jTGgzL9WbUWK17k44/XJsPQxrTYOpFTy8MBOSJKlA=="><input
																type="hidden" class="hidden" name="_method" value="post">
														</div>
													</form>
													<div class="media-body">
														<big>2</big>
														<div class="edit-fn order pull-right">
															<a class="btn btn-add-step" href="#"></a><a
																class="btn btn-remove destroy" href="#"></a><span
																class="drag-item"></span>
														</div>
														<div class="step-content">
															<div class="form-group maxlen">
																<label for="stepBody"
																	class="control-label maxlen hidden"></label>
																<textarea class="form-control maxlen"
																	placeholder="點擊輸入..." name="stepBody" rows="3"
																	cols="10" maxlength="150" style="height: 72px;"></textarea>
																<div class="help-block">
																	<span class="">剩餘150個字</span>
																</div>
															</div>
														</div>
													</div>
													<!-- react-empty: 140 -->
												</div>
											</div>
											<div class="step fadeIn">
												<div class="media">
													<form action="/recipes/199159/steps.json.json"
														method="POST" enctype="multipart/form-data"
														accept-charset="utf-8" class="step-img pull-left">
														<div class="fileupload-processing">
															<img alt="step-cover" class="img-responsive"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/step-placeholder-d3a704728d5f9805ec3229e1cc22afb0b1468480447d751dfaaa393ef0efed14.jpg"><input
																type="file" multiple="" name="step[cover]"><input
																type="hidden" class="hidden" name="authenticity_token"
																value="Zrh2CWt/C0s6F/0HqfOJDEW1NuKyC0oE2afRKg/E8m8a4jTGgzL9WbUWK17k44/XJsPQxrTYOpFTy8MBOSJKlA=="><input
																type="hidden" class="hidden" name="_method" value="post">
														</div>
													</form>
													<div class="media-body">
														<big>3</big>
														<div class="edit-fn order pull-right">
															<a class="btn btn-add-step" href="#"></a><a
																class="btn btn-remove destroy" href="#"></a><span
																class="drag-item"></span>
														</div>
														<div class="step-content">
															<div class="form-group maxlen">
																<label for="stepBody"
																	class="control-label maxlen hidden"></label>
																<textarea class="form-control maxlen"
																	placeholder="點擊輸入..." name="stepBody" rows="3"
																	cols="10" maxlength="150" style="height: 72px;"></textarea>
																<div class="help-block">
																	<span class="">剩餘150個字</span>
																</div>
															</div>
														</div>
													</div>
													<!-- react-empty: 161 -->
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="notes">
									<h3>小撇步</h3>
									<div class="form-group maxlen">
										<textarea class="form-control maxlen" placeholder="點擊輸入..."
											name="tips" rows="3" cols="10" style="height: 72px;"></textarea>
										<div class="help-block">
											<span class="">剩餘200個字</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<ul class="recipe-fn is-draft">
						<li id="try-modal" data-isPublish="false"
							data-url="/recipes/199159"
							data-publishUrl="/recipes/199159/publish"
							data-defaultCover="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/recipe-large-default-6e84ec7d822787d830cf37d444e4fd2c683f90910b1faf36e1d5d8dba600dfcd.png"
							data-defaultStepCover="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/step-placeholder-d3a704728d5f9805ec3229e1cc22afb0b1468480447d751dfaaa393ef0efed14.jpg"
							data-savingGif="https://d3kjtz7uyul5bi.cloudfront.net/assets/saving-3e7810d2049553f321a38bf967b5eed9e3895e2caf5e602f6cd41675e6b330c9.gif">
							<a class="btn btn-default post" href="#">發佈</a>
						</li>
						<li><a id="save-recipe" class="btn btn-default save" href="#">
								<span class="to-save"> <img width="30" height="8"
									class="hide"
									src="https://d3kjtz7uyul5bi.cloudfront.net/assets/saving-3e7810d2049553f321a38bf967b5eed9e3895e2caf5e602f6cd41675e6b330c9.gif"
									alt="Saving" /><span>儲存</span></span> <span class="to-saved hide"><i
									class="fa fa-check"></i></span>
						</a></li>
						<li><a class="btn btn-default delete"
							data-confirm="你確定要刪除食譜嗎？刪除的食譜是無法還原的喔！" rel="nofollow"
							data-method="delete" href="/recipes/199159">刪除</a></li>
						<li><a class="btn btn-link cancel"
							data-confirm="你確定要取消這次的編輯？取消後將回到上次儲存的狀態喔！"
							href="/users/264217527369594"> <span>取消</span>
						</a></li>
					</ul>

				</article>


			</div>
		</div>
	</div>


</body>
</html>