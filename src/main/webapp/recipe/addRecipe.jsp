<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kindCode.model.KindCodeServiceImpl"%>
<%@page import="com.kindCode.model.KindCodeService"%>
<%@page import="com.cookWayCode.model.*"%>

<%@ page import="java.util.*"%>
<%@page import="com.kindCode.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<!--[if gt IE 8]> <html lang="zh-TW" class="no-js ie9 ie" > <![endif]-->
<!--[if !IE]>-->
<html class='no-js' lang='zh-TW'>
<!--<![endif]-->
<head
	prefix='og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# icooktw: http://ogp.me/ns/fb/icooktw#'>
<meta content-language='zh-TW' />
<meta charset="utf-8" />
<title>編輯食譜 - iCook 愛料理</title>

<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-1fa3a0ccddc9796a97bfe34b33c1fe658fd9595388375228d97cc068fd93863e.css" />
<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/homepage-4e9c2c6b556d0f4b69591165e75499980f763ebb8dd71e13fc65c0c3d813ebf1.css" />
<link rel="icon" sizes="any" mask
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/icook_safari_pinned-1599538523bca201185b6bef7e12712785470bef099fcd60ad68e5d7b496a9af.svg">
<link rel="shortcut icon" type="image/x-icon"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/favicon-9db8e01cf53a999c927c95b0e479f8b609bd7eed5d9120f16eb49e4a6df9f1dc.ico" />

<script async
	src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
	ICOOK = {
		current_user : "264217527369594"
	};
	(adsbygoogle = window.adsbygoogle || []).push({
		google_ad_client : "ca-pub-7045820853225151",
		enable_page_level_ads : true
	});
</script>

<script>
	!function(t, e) {
		if (void 0 === e[t]) {
			e[t] = function() {
				e[t].clients.push(this), this._init = [ Array.prototype.slice
						.call(arguments) ]
			}, e[t].clients = [];
			for (var r = function(t) {
				return function() {
					return this["_" + t] = this["_" + t] || [], this["_" + t]
							.push(Array.prototype.slice.call(arguments)), this
				}
			}, s = [ "addRecord", "set", "trackEvent", "trackPageview",
					"trackClicks", "ready" ], a = 0; a < s.length; a++) {
				var c = s[a];
				e[t].prototype[c] = r(c)
			}
			var n = document.createElement("script");
			n.type = "text/javascript", n.async = !0,
					n.src = ("https:" === document.location.protocol ? "https:"
							: "http:")
							+ "//cdn.treasuredata.com/sdk/1.7.1/td.min.js";
			var i = document.getElementsByTagName("script")[0];
			i.parentNode.insertBefore(n, i)
		}
	}("Treasure", this);

	var td = new Treasure({
		host : 'in.treasuredata.com',
		writeKey : '7928/bf9804733c2cfbadd94e0c07280f70c1eebc7ba3',
		database : 'icook'
	});
	td.trackClicks();
</script>

<script>
	dataLayer = [];
	dataLayer
			.push({
				'user_type' : "member",
				'user_id' : "1719161"
			})
</script>


<!-- Google Tag Manager -->
<script>
	(
					function(w, d, s, l, i) {
						w[l] = w[l] || [];
						w[l].push({
							'gtm.start' : new Date().getTime(),
							event : 'gtm.js'
						});
						var f = d.getElementsByTagName(s)[0], j = d
								.createElement(s), dl = l != 'dataLayer' ? '&l='
								+ l
								: '';
						j.async = true;
						j.src = 'https://www.googletagmanager.com/gtm.js?id='
								+ i + dl;
						f.parentNode.insertBefore(j, f);
					})(window, document, 'script', 'dataLayer', 'GTM-3TP6');
</script>
<!-- End Google Tag Manager -->

</head>
<body id="recipes_edit" class="recipes edit ">
	<div class="o-wrapper" id="o-wrapper">
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-3TP6"
				height="0" width="0" style="display: none; visibility: hidden"></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->

		<div class="navbar navbar-default navbar-static-top global-header"
			id="global-header" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="visible-xs c-button"
						id="c-button--push-right">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a title="愛料理 - 食譜社群平台" class="logo visible-xs pull-left"
						href="//icook.tw/?ref=nav"> <span>愛料理首頁</span>
					</a>
				</div>
				<div class="hidden-xs global-header-menu" id="main-menu">
					<ul class="nav navbar-nav">
						<li class="hidden-xs hidden-sm mobile"><a
							href="//icook.tw/?ref=nav">愛料理首頁</a></li>
						<li class="visible-sm hidden-md hidden-lg mobile"><a
							href="//icook.tw/?ref=nav">首頁</a></li>
						<li><a href="//blog.icook.tw/?ref=nav"><span>生活誌</span></a></li>
						<li><a href="//tv.icook.tw/?ref=nav"><span>影音</span></a></li>
						<li><a href="//market.icook.tw/?ref=nav"><span>市集</span></a></li>
						<li><a href="//atcooking.icook.tw/?ref=nav"><span>享樂誌</span></a></li>
						<li><a class="vip to-vip" href="//icook.tw/vip?ref=nav">
								成為<span class="badge-vip"></span>
						</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right logged">
						<!-- show vip badge if user is vip -->

						<!-- panel for logged in user -->
						<li><a rel="me" class="to-user"
							href="//icook.tw/users/264217527369594?ref=nav"> <img
								class="img-circle"
								src="https://icook.tw/users/264217527369594/picture"
								alt="Picture" width="22" height="22" /> 陳偉翔
						</a></li>
						<li><a class="to-recipes hidden-xs"
							href="//icook.tw/?ref=nav">逛食譜</a></li>
						<li><a class="account to-favorites hidden-xs"
							href="//icook.tw/users/264217527369594/favorites?ref=nav">收藏</a></li>
						<li class="dropdown hidden-xs"><a
							class="to-account dropdown-toggle" id="dropdownMenu"
							data-toggle="dropdown" href="#">設定</a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu">
								<li><a href="//icook.tw/settings?ref=nav">帳號設定</a></li>
								<li class="divider"></li>
								<li><a
									href="//icook.tw/users/264217527369594/recipes/drafts?ref=nav">我的草稿</a></li>
								<!-- <li class="divider"></li> -->
								<!-- <li><span class="vip"></span></li> -->
								<li class="divider"></li>
								<li><a href="/logout">登出</a></li>

							</ul></li>

						<!-- show branch info if user is admin -->
					</ul>

				</div>
			</div>
		</div>


		<div class="navbar navbar-static-top sub-header" id="recipes-hd">
			<div class="container">
				<div class="row">
					<div class="hidden-xs col-sm-3 col-md-3 ch-left">

						<div class="channel-logo clearfix">
							<h2>
								<a title="愛料理-食譜社群平台" class="clearfix" href="/?ref=logo"> <svg
										xmlns="http://www.w3.org/2000/svg" version="1"
										viewBox="0 0 68 50" class="pull-left hidden-xs" width="75"
										height="55">
										<path fill-rule="evenodd" clip-rule="evenodd" fill="#564E4A"
											d="M10.465 27.104c-1.828 2.838-2.25 4.44-2.655 6.165-.408 1.72.318 2.71 2.655 3.52 2.337.81 2.524.333 3.54-.88 1.017-1.217 1.772-7.047 1.772-7.047s-.032-2.295-1.772-2.64c-1.66-.332-3.54.88-3.54.88zm7.967 6.164c-.1.505-.328 6.36 7.967 8.806 7.21 2.128 21.43 1.543 24.78-3.524 2.034-3.074.996-6.825-1.77-7.043-1.585-.128-1.873-1.52-1.77 0 .1 1.518-2.102 5.766-7.28 6.27-5.18.51-12.033-.62-13.962-2.75-1.933-2.127-1.19-4.563-3.54-5.284-4.32-1.318-4.327 3.017-4.43 3.525zm14.162-5.095s.54 2.114.18 4.42c-.36 2.306 2.35 2.692 5.24 2.306 2.89-.386 2.71-3.365 2.347-4.23-.36-.866-3.25-5.67-7.764-2.5zm21.078-2.976c-.216 6.583 2.778 7.93 2.778 7.93 4.298 1.793 3.663-.103 3.663-.103s1.45-2.01-.566-5.612c-2.014-3.604-5.875-2.215-5.875-2.215zM.6 29.067c-.784 4.103-1.216 7.243 1.42 11.75 2.546 4.35 10.668 6.253 18.082 7.973 7.415 1.723 19.728 1.29 24.787.61 5.01-.677 21.53-6.05 22.75-13.445 1.22-7.396-.813-12.867-4.063-16.008-3.25-3.142-17.677-3.852-21.943-4.26-4.266-.403-24.6 2.253-28.442 2.637-6.56.656-10.923 1.96-12.596 10.74zm4.876-3.243s1.13-3.076 5.28-3.444c5.794-.514 18.49-2.027 26.41-2.23 7.925-.2 20.825.102 23.568 3.446 2.743 3.343 3.047 7.497 2.44 11.955-.612 4.46-12.293 9.397-21.943 10.205-9.65.81-24.415-1.258-31.85-4.53C4.968 39.28 4.2 35.8 4.26 32.31c.043-2.583 1.22-6.486 1.22-6.486zm1.45-10.17s27.437-4.402 51.338-1.76l1.77-1.76S47.934 9.05 37.02 7.728c-.695-.083 6.196-5.504 4.425-7.044-1.77-1.543-15.045 0-15.045 0s5.753 5.723 4.424 6.162c-1.327.442-15.71 2.862-24.785 6.165-9.074 3.305.883 2.64.883 2.64z"></path></svg>

									<div class="channel-name">
										<small>食譜社群平台</small><br> <span>愛料理</span>
									</div>
								</a>
							</h2>
						</div>
					</div>
					<div class="col-xs-12 col-sm-9 col-md-9 ch-right">
						<div class="row">
							<div class="col-xs-12 col-sm-9 col-md-9">
								<div data-hypernova-key="SearchBox"
									data-hypernova-id="bbf82d0d-b527-4a96-9a99-bc2bf5b27242">
									<div class="to-search" data-reactroot="" data-reactid="1"
										data-react-checksum="-545189626">
										<form accept-charset="UTF-8" action="/recipes/search"
											id="global-search" data-reactid="2">
											<div data-reactid="3">
												<div class="select-box" data-reactid="4">
													<select class="form-control" data-reactid="5"><option
															selected="" value="recipe" data-reactid="6">找食譜</option>
														<option value="user" data-reactid="7">找作者</option></select>
												</div>
												<div data-reactid="8">
													<div class="select-input search-recipe blur-input"
														data-reactid="9">
														<input autocomplete="off" name="q" placeholder="搜尋食譜名"
															value="" data-reactid="10" />
													</div>
													<div class="select-input search-ingredient blur-input"
														data-reactid="11">
														<input type="hidden" name="ingredients" value=""
															data-reactid="12" />
														<div class="tags" tabindex="0" data-reactid="13">
															<span class="placeholder" data-reactid="14">搜尋食材，以空格分開</span>
														</div>
													</div>
												</div>
											</div>
											<button class="btn btn-search" disabled="" type="submit"
												data-reactid="15">
												<i class="fa fa-search" data-reactid="16"></i>
											</button>
										</form>
									</div>
								</div>
								<script type="application/json" data-hypernova-key="SearchBox"
									data-hypernova-id="bbf82d0d-b527-4a96-9a99-bc2bf5b27242"><!--{"autocompleteUrl":"/autocomplete","ingredients":"","isMobile":false,"isVip":false,"q":"","searchUrl":"/recipes/search","searchUserUrl":"/users/search","url":"https://icook.tw/recipes/199159/edit"}--></script>
							</div>
							<div class="col-sm-3 col-md-3 text-right hidden-xs">
								<a rel="nofollow" class="btn btn-edit"
									href="/recipes/new?ref=nav">寫食譜</a>
							</div>
						</div>
						<div class="row col-md-12">
							<ul class="clearfix ad-text-link">
								<li><a data-story-name="menu_links"
									data-story-item-title="限時滿千折百" target="_blank"
									href="/clicks/6c4227e9c1f96531024779f04021325c">限時滿千折百</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="咖哩派對美食" target="_blank"
									href="/clicks/9be506f321c23b09d51c53a7b235d99c">咖哩派對美食</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="1500折100" target="_blank"
									href="/clicks/342c66284d0b24b63cd003b302e32cb5">1500折100</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="小孩不再挑食" target="_blank"
									href="/clicks/22e9b01edd8b8d8a2af2ee62b6769153">小孩不再挑食</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


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

										<button>123123</button>

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
																	type="hidden" class="hidden" name="_method"
																	value="post">
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
																	type="hidden" class="hidden" name="_method"
																	value="post">
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
																	type="hidden" class="hidden" name="_method"
																	value="post">
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
							<li><a id="save-recipe" class="btn btn-default save"
								href="#"> <span class="to-save"> <img width="30"
										height="8" class="hide"
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

		<!-- 		<footer id="footer"> -->
		<!-- 			<div class="mega-footer"> -->
		<!-- 				<div class="container"> -->
		<!-- 					<div class="row center-block"> -->
		<!-- 						<div class="col-xs-12 col-md-4"> -->
		<!-- 							<div class="report"> -->
		<!-- 								<span class="logo">&nbsp;</span> <span>© 2011-2017 -->
		<!-- 									Polydice, Inc.</span> <span class="visible-xs-inline"> <a -->
		<!-- 									rel="nofollow" target="_blank" -->
		<!-- 									href="https://newsroom.icook.tw/terms?ref=icook-footer">服務條款</a> -->
		<!-- 									和 <a rel="nofollow" target="_blank" -->
		<!-- 									href="https://newsroom.icook.tw/privacy?ref=icook-footer">隱私權政策</a> -->
		<!-- 								</span> -->
		<!-- 							</div> -->
		<!-- 							<ul class="socials"> -->
		<!-- 								<li class="hidden-xs"><a class="footer-social-fb " -->
		<!-- 									href="https://www.facebook.com/icooktw?ref=icook-footer" -->
		<!-- 									title="愛料理 粉絲團" target="_blank" ref="nofollow"></a></li> -->
		<!-- 								<li class="hidden-xs"><a class="footer-social-line" -->
		<!-- 									href="http://bit.ly/1cfxPqM?ref=icook-footer" title="愛料理 line" -->
		<!-- 									target="_blank" ref="nofollow">&nbsp;</a></li> -->
		<!-- 								<li class="hidden-xs"><a class="footer-social-ig" -->
		<!-- 									href="http://instagram.com/icooktw?ref=icook-footer" -->
		<!-- 									title="愛料理 Instagram" target="_blank" ref="nofollow"></a></li> -->
		<!-- 								<li class="hidden-xs"><a class="footer-social-twitter" -->
		<!-- 									href="https://twitter.com/icooktw?ref=icook-footer" -->
		<!-- 									title="愛料理 推特" target="_blank" ref="nofollow"></a></li> -->
		<!-- 								<li><a href=https://help.icook.tw/hc/zh-tw/signin -->
		<!-- 									class="col-xs-12 btn-report"><span>建議與問題</span></a></li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 						<div class="col-xs-12 col-md-8 pull-right"> -->
		<!-- 							<div class="footer-links hidden-xs"> -->
		<!-- 								<h4>關於愛料理</h4> -->
		<!-- 								<ul class="pull-left"> -->
		<!-- 									<li><a -->
		<!-- 										href="https://newsroom.icook.tw/info?ref=icook-footer" -->
		<!-- 										rel="nofollow" target="_blank">公司資訊</a></li> -->
		<!-- 									<li><a -->
		<!-- 										href="https://newsroom.icook.tw/jobs?ref=icook-footer" -->
		<!-- 										rel="nofollow" target="_blank">徵才訊息</a> -->
		<!-- 									<li><a -->
		<!-- 										href="https://newsroom.icook.tw/contacts/new?ref=icook-footer" -->
		<!-- 										rel="nofollow" target="_blank">廣告合作</a></li> -->
		<!-- 									<li><a -->
		<!-- 										href="https://newsroom.icook.tw/downloads?ref=icook-footer" -->
		<!-- 										rel="nofollow" target="_blank">品牌資產</a></li> -->
		<!-- 									<li><a rel="nofollow" target="_blank" -->
		<!-- 										href="https://newsroom.icook.tw/terms?ref=icook-footer">服務條款</a> -->
		<!-- 									</li> -->
		<!-- 									<li><a rel="nofollow" target="_blank" -->
		<!-- 										href="https://newsroom.icook.tw/privacy?ref=icook-footer">隱私權政策</a> -->
		<!-- 									</li> -->
		<!-- 								</ul> -->
		<!-- 							</div> -->
		<!-- 							<div class="footer-links hidden-xs"> -->
		<!-- 								<h4>會員服務</h4> -->
		<!-- 								<ul> -->
		<!-- 									<li><a -->
		<!-- 										href="/users/264217527369594/favorites?ref=icook-footer">我的收藏</a></li> -->
		<!-- 									<li><a href="/users/264217527369594">個人首頁</a></li> -->
		<!-- 									<li><a href="/settings?ref=icook-footer">帳號設定</a></li> -->
		<!-- 									<li><a href="/forgot_password?ref=icook-footer">忘記密碼</a></li> -->
		<!-- 									<li><a -->
		<!-- 										href="https://market.icook.tw/orders?ref=icook-footer">我的訂單</a></li> -->
		<!-- 									<li><a href="/vip?ref=icook-footer">VIP 會員</a></li> -->
		<!-- 								</ul> -->
		<!-- 							</div> -->
		<!-- 							<div class="footer-links hidden-xs"> -->
		<!-- 								<h4>逛食譜</h4> -->
		<!-- 								<ul class="pull-left"> -->
		<!-- 									<li><a href="/recipes/popular?ref=icook-footer">熱門食譜</a></li> -->
		<!-- 									<li><a href="/recipes/latest?ref=icook-footer">新到食譜</a></li> -->
		<!-- 									<li><a href="/categories?ref=icook-footer">全部分類</a></li> -->
		<!-- 								</ul> -->
		<!-- 							</div> -->
		<!-- 							<div class="footer-links hidden-xs"> -->
		<!-- 								<h4>逛其他</h4> -->
		<!-- 								<ul class="pull-left"> -->
		<!-- 									<li><a href="https://blog.icook.tw/?ref=icook-footer" -->
		<!-- 										rel="nofollow">生活誌</a></li> -->
		<!-- 									<li><a href="https://atcooking.icook.tw/?ref=icook-footer" -->
		<!-- 										rel="nofollow">享樂誌</a></li> -->
		<!-- 									<li><a href="https://tv.icook.tw/?ref=icook-footer" -->
		<!-- 										rel="nofollow">影音</a></li> -->
		<!-- 									<li><a href="https://market.icook.tw/?ref=icook-footer" -->
		<!-- 										rel="nofollow">市集</a></li> -->
		<!-- 								</ul> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->

		<!-- 		</footer> -->
	</div>
	<nav class="c-menu c-menu--push-right navbar-c-menu"
		id="c-menu--push-right">
		<ul class="c-menu__items menu-section">
			<li class="menu-section-head"><a rel="me" class="user"
				href="//icook.tw/users/264217527369594?ref=nav"> <img
					class="img-circle"
					src="https://icook.tw/users/264217527369594/picture" alt="Picture"
					width="22" height="22" />264217527369594
			</a> <a rel="nofollow" class="to-new-recipe"
				href="//icook.tw/recipes/new?ref=nav"></a></li>
			<li class="menu-item"><a class="to-draft"
				href="//icook.tw/users/264217527369594/recipes/drafts?ref=nav">
					我的草稿<span class="pull-right">3</span>
			</a></li>
			<li class="menu-item"><a class="to-favorites"
				href="//icook.tw/users/264217527369594/recipes/favorites?ref=nav">我的收藏</a></li>
			<li class="menu-item"><a class="to-setting"
				href="//icook.tw/settings?ref=nav">設定</a></li>
			<li class="menu-item"><a class="to-logout" href="/logout">登出</a></li>
		</ul>

		<ul class="c-menu__items menu-section menu-entries">
			<li class="menu-section-head clearfix"><a class="to-homepage"
				href="//icook.tw?ref=nav"> 回愛料理首頁<span class="pull-right"><i
						class="icon-right-small"></i></span>
			</a></li>
			<li class="menu-item"><a href="//icook.tw/?ref=nav">逛食譜</a></li>
			<li class="menu-item"><a href="//blog.icook.tw/?ref=nav"><span>生活誌</span></a></li>
			<li class="menu-item"><a href="//tv.icook.tw/?ref=nav"><span>影音</span></a></li>
			<li class="menu-item"><a href="//market.icook.tw/?ref=nav"><span>市集</span></a></li>
			<li class="menu-item"><a href="//atcooking.icook.tw/?ref=nav"><span>享樂誌</span></a></li>
			<li class="menu-item"><a class="vip to-vip"
				href="//icook.tw/vip?ref=nav"> 成為<span class="badge-vip"></span>
			</a></li>
		</ul>
	</nav>
	<div class="c-mask" id="c-mask"></div>

	<div id="vip-intro" data-landUrl="/vip" data-loginUrl="/login"
		data-url="/vip" data-isLogin="true"></div>
	<div id="list-modal" data-listUrl="/users/264217527369594/lists"
		data-loginUrl="/login" data-url="/settings/favorites"
		data-user="{&quot;username&quot;:&quot;264217527369594&quot;,&quot;nickname&quot;:&quot;陳偉翔&quot;,&quot;avatar&quot;:&quot;https://graph.facebook.com/264217527369594/picture?width=150&amp;height=150&quot;,&quot;token&quot;:&quot;kBsKqA3Z+EImTykrJfdzpUBHRbn8GvtyzJxQlULxFpPsQUhn5ZQOUKlO/3Jo53V+IzGjnfrJi+dG8EK+dBeuaA==&quot;,&quot;is_admin&quot;:false}"></div>

	<script data-key="icook-current-user" type="application/json"><!--{"username":"264217527369594","nickname":"陳偉翔","avatar":"https://graph.facebook.com/264217527369594/picture?width=150&height=150","token":"Dl+GNbk3lQhiWgM3skhIEJBciOvqtEXashV9G4gM4NByBcT6UXpjGu1b1W7/WE7L8ypuz+xnNU84eW8wvupYKw==","is_admin":false}--></script>
	<script
		src="https://d3kjtz7uyul5bi.cloudfront.net/assets/storeInitializer-4ef791433d6e9d59e874a6cd356fd2848d63b5db1e343500b97edd2e51a860a3.js"
		defer="defer"></script>
	<script
		src="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-d1a2851f7477ce882890c98955cf9d208b3b04c86f4170d659407a4e3941f9ad.js"
		defer="defer"></script>
</body>
</html>

