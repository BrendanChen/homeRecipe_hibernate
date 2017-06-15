<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kindCode.model.KindCodeServiceImpl"%>
<%@page import="com.kindCode.model.KindCodeService"%>
<%@page import="com.cookWayCode.model.*"%>

<%@ page import="java.util.*"%>
<%@page import="com.kindCode.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>愛料理首頁</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="all" />

<!-- <link rel="stylesheet" media="all" -->
<!-- 	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-1fa3a0ccddc9796a97bfe34b33c1fe658fd9595388375228d97cc068fd93863e.css" /> -->
	
<link rel="stylesheet" media="all"
	href="<%=request.getContextPath()%>/css/D3.css" />	
	
<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/homepage-4e9c2c6b556d0f4b69591165e75499980f763ebb8dd71e13fc65c0c3d813ebf1.css" />
	
<!-- <link rel="icon" sizes="any" mask -->
<!-- 	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/icook_safari_pinned-1599538523bca201185b6bef7e12712785470bef099fcd60ad68e5d7b496a9af.svg"> -->

<!-- <link rel="shortcut icon" type="image/x-icon" -->
<!-- 	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/favicon-9db8e01cf53a999c927c95b0e479f8b609bd7eed5d9120f16eb49e4a6df9f1dc.ico" /> -->




</head>
<body>

	<div class="o-wrapper" id="o-wrapper">
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-3TP6"
				height="0" width="0" style="display: none; visibility: hidden"></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->

		<jsp:include page="/head.jsp" />

		<div class="navbar navbar-static-top sub-header" id="recipes-hd">
			<div class="container">
				<div class="row">

					<div class="hidden-xs col-sm-3 col-md-3 ch-left">

						<div class="channel-logo clearfix">
							<h2>
								<a title="愛料理-食譜社群平台" class="clearfix" href=""> <!-- 									這裡要放logo -->

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
									data-hypernova-id="8d12e802-96a1-4aa7-a6b3-7b410023c7c3">

									<jsp:include page="/searchBar.jsp" />

								</div>
							</div>
							
							<div class="col-sm-3 col-md-3 text-right hidden-xs">
								<a rel="nofollow" class="btn btn-edit"
									href="/recipe/addRecipe.jsp">寫食譜</a>
							</div>
						</div>
						<div class="row col-md-12">
							<ul class="clearfix ad-text-link">
								<li><a data-story-name="menu_links"
									data-story-item-title="小孩不再挑食" target="_blank"
									href="/clicks/22e9b01edd8b8d8a2af2ee62b6769153">小孩不再挑食</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="折100無上限!" target="_blank"
									href="/clicks/bf77ad0ff492805cc8e29f2396707c33">折100無上限!</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="蜂蜜限時免運" target="_blank"
									href="/clicks/62a8ea7d39407ee9ba59288cc000784a">蜂蜜限時免運</a></li>
								<li><a data-story-name="menu_links"
									data-story-item-title="咖哩派對美食" target="_blank"
									href="/clicks/9be506f321c23b09d51c53a7b235d99c">咖哩派對美食</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container new-homepage">
			<div class="row">
				<div class="col-xs-12 col-md-9">

					<div class="clearfix feature-block">
						<!-- Hero -->
						<div id="hero-slider" class="carousel slide hero-slider"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#hero-slider" data-slide-to="0" class="active"></li>
								<li data-target="#hero-slider" data-slide-to="1" class=""></li>
								<li data-target="#hero-slider" data-slide-to="2" class=""></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<a data-story-name="精選區塊-0424" data-placement-id="21"
										href="https://icook.tw/recipes/153283">
										<div class="mark"></div> <img alt="酸甜好滋味！手工Q梅DIY"
										data-holder-rendered="true"
										src="https://dbjdsnch130xu.cloudfront.net/uploads/hero_story_item/image/3733/057e983c0a1a6407.jpg" />
										<div class="carousel-caption">
											<span class="subtitle">當季食材</span>
											<h2>酸甜好滋味！手工Q梅DIY</h2>
										</div>
									</a>
								</div>
								<div class="item ">
									<a data-story-name="精選區塊-0424" data-placement-id="21"
										href="https://blog.icook.tw/posts/104538">
										<div class="mark"></div> <img alt="給媽咪的專屬蛋糕！甜點裝飾體驗課程"
										data-holder-rendered="true"
										src="https://dbjdsnch130xu.cloudfront.net/uploads/hero_story_item/image/3734/660a0392ee497531.jpg" />
										<div class="carousel-caption">
											<span class="subtitle">會員限定</span>
											<h2>給媽咪的專屬蛋糕！甜點裝飾體驗課程</h2>
										</div>
									</a>
								</div>
								<div class="item ">
									<a data-story-name="精選區塊-0424" data-placement-id="21"
										href="https://icook.tw/brands/iCook">
										<div class="mark"></div> <img alt="分享你的創意土司料理，萬元好禮帶回家！"
										data-holder-rendered="true"
										src="https://dbjdsnch130xu.cloudfront.net/uploads/hero_story_item/image/3735/55d0f4fa874439ac.jpg" />
										<div class="carousel-caption">
											<span class="subtitle">熱門活動</span>
											<h2>分享你的創意土司料理，萬元好禮帶回家！</h2>
										</div>
									</a>
								</div>
							</div>
							<a href="#hero-slider" class="left carousel-control"
								role="button" data-slide="prev"> <span
								class="icon-ic-angle-left" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a href="#hero-slider" class="right carousel-control"
								role="button" data-slide="next"> <span
								class="icon-ic-angle-right" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>

						<!-- List-text -->
						<div class="list-text featured-list">
							<a data-story-name="精選標題-0424" data-placement-id="19"
								href="login.mailchimp.com">
								<div class="media">
									<div class="media-right">
										<img alt="菇菇好營養，哪些人不能吃？" class="media-object"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3732/list_text_67cc473f90c12283.jpg" />
									</div>
									<div class="media-body">
										<span>菇菇好營養，哪些人不能吃？</span>
									</div>
								</div>
							</a> <a data-story-name="精選標題-0424" data-placement-id="19"
								href="https://blog.icook.tw/posts/105857">
								<div class="media">
									<div class="media-right">
										<img alt="愛吃滷味嗎？營養師教你這樣吃才健康" class="media-object"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3731/list_text_80093b3aae2b1e7a.jpg" />
									</div>
									<div class="media-body">
										<span>愛吃滷味嗎？營養師教你這樣吃才健康</span>
									</div>
								</div>
							</a> <a data-story-name="精選標題-0424" data-placement-id="19"
								href="https://blog.icook.tw/posts/93911">
								<div class="media">
									<div class="media-right">
										<img alt="教你做出不髒手的飯糰、吐司、三明治！" class="media-object"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3730/list_text_d2714d67cc43b893.jpg" />
									</div>
									<div class="media-body">
										<span>教你做出不髒手的飯糰、吐司、三明治！</span>
									</div>
								</div>
							</a> <a data-story-name="精選標題-0424" data-placement-id="19"
								href="https://market.icook.tw/products/whiskware?utm_campaign=ec-whiskware-0424&amp;utm_medium=Choice&amp;utm_source=icook&amp;utm_content=&amp;utm_term=">
								<div class="media">
									<div class="media-right">
										<img alt="可愛造型鬆餅，在家輕鬆DIY！" class="media-object"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3736/list_text_425ae1f351209271.jpg" />
									</div>
									<div class="media-body">
										<span>可愛造型鬆餅，在家輕鬆DIY！</span>
									</div>
								</div>
							</a>
						</div>

					</div>
					<!-- Selections -->
					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								<span class="badge-vip"></span>特色小吃推薦 <a class="more pull-right"
									data-story-name="VIP區塊" data-placement-id="16"
									href="https://icook.tw/categories/512"> 更多內容<i
									class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="鴨賞捲餅搭綠豆沙牛乳" data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/recipes/181426">
									<div class="img">
										<div class="mask"></div>
										<img alt="鴨賞捲餅搭綠豆沙牛乳" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3737/curation_a24c3231548c9450.jpg" />
									</div>
									<div class="recipe-name">鴨賞捲餅搭綠豆沙牛乳</div>
								</a> <span class="user-name">by <a data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/users/nicosun">Nico
										Sun 老孫妮可</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="逢甲古早味蛋餅與紅茶" data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/recipes/182400">
									<div class="img">
										<div class="mask"></div>
										<img alt="逢甲古早味蛋餅與紅茶" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3738/curation_f7f1965f1133dec6.jpg" />
									</div>
									<div class="recipe-name">逢甲古早味蛋餅與紅茶</div>
								</a> <span class="user-name">by <a data-story-name="VIP區塊"
									data-placement-id="16"
									href="https://icook.tw/users/yanlingcao1">小曹很愛吃</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="蘑菇起司拉麵燒" data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/recipes/180683">
									<div class="img">
										<div class="mask"></div>
										<img alt="蘑菇起司拉麵燒" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3739/curation_5cf7a728fee4f0d9.jpg" />
									</div>
									<div class="recipe-name">蘑菇起司拉麵燒</div>
								</a> <span class="user-name">by <a data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/users/s3898433">小潔的廚房記事</a></span>
							</div>

							<div class="new-card post-card">
								<a title="VIP限定！300元生鮮食材免費送到家" data-story-name="VIP區塊"
									data-placement-id="16" href="https://icook.tw/benefits/14">
									<div class="img">
										<div class="mask"></div>
										<img alt="VIP限定！300元生鮮食材免費送到家" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3740/curation_f3871a326dc00ec7.jpg" />
									</div>
									<div class="post-name">VIP限定！300元生鮮食材免費送到家</div>
								</a>
							</div>

						</div>
					</div>


					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								百變米飯料理 <a class="more pull-right" data-story-name="精選1-評鑑團-米飯"
									data-placement-id="10" href="https://icook.tw/categories/46">
									更多內容<i class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="經典上海菜飯" data-story-name="精選1-評鑑團-米飯"
									data-placement-id="10" href="https://icook.tw/recipes/125716">
									<div class="img">
										<div class="mask"></div>
										<img alt="經典上海菜飯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3716/curation_363a9b119586c8d8.jpg" />
									</div>
									<div class="recipe-name">經典上海菜飯</div>
								</a> <span class="user-name">by <a
									data-story-name="精選1-評鑑團-米飯" data-placement-id="10"
									href="https://icook.tw/users/nicosun">Nico Sun 老孫妮可</a></span>
							</div>

							<div class="new-card post-card">
								<a title="【iCook評鑑團實測】免顧爐焦香鍋巴飯" data-story-name="精選1-評鑑團-米飯"
									data-placement-id="10"
									href="https://blog.icook.tw/posts/105288">
									<div class="img">
										<div class="mask"></div>
										<img alt="【iCook評鑑團實測】免顧爐焦香鍋巴飯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3717/curation_24fe8dff9e1308f3.jpg" />
									</div>
									<div class="post-name">【iCook評鑑團實測】免顧爐焦香鍋巴飯</div>
								</a>
							</div>

							<div class="new-card new-photo-card">
								<a title="懶人啤酒雞肉飯" data-story-name="精選1-評鑑團-米飯"
									data-placement-id="10" href="https://icook.tw/recipes/104701">
									<div class="img">
										<div class="mask"></div>
										<img alt="懶人啤酒雞肉飯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3718/curation_b262677a321bcc53.jpg" />
									</div>
									<div class="recipe-name">懶人啤酒雞肉飯</div>
								</a> <span class="user-name">by <a
									data-story-name="精選1-評鑑團-米飯" data-placement-id="10"
									href="https://icook.tw/users/nw0912">娜塔Nata</a></span>
							</div>

							<div class="new-card post-card">
								<a title="白飯Level up！豐盛美味的炊飯" data-story-name="精選1-評鑑團-米飯"
									data-placement-id="10" href="https://blog.icook.tw/posts/95383">
									<div class="img">
										<div class="mask"></div>
										<img alt="白飯Level up！豐盛美味的炊飯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3719/curation_c7b0e691718b99f8.jpg" />
									</div>
									<div class="post-name">白飯Level up！豐盛美味的炊飯</div>
								</a>
							</div>

						</div>
					</div>


					<div class="selection selection-campaign">
						<div class="inner-block-title">
							<h4 class="title">
								近期活動 <a class="more pull-right" data-story-name="活動區塊"
									data-placement-id="1"
									href="https://blog.icook.tw/categories/18">過往活動</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div id="campaign-slider" class="carousel slide campaign-slider">
								<div class="carousel-inner slick-slider" role="listbox">
									<div class="slick-slide">
										<div class="new-card new-promote-card campaign">
											<a title="百味來食譜募集" data-story-name="活動區塊"
												data-placement-id="1"
												href="https://icook.tw/brands/BarillaTaiwan">
												<div class="img">
													<div class="mask"></div>
													<img alt="百味來食譜募集" class="img-responsive"
														src="https://dbjdsnch130xu.cloudfront.net/uploads/campaign/cover/156/19f219ad35b81f04.jpg" />
												</div>
												<div class="promote-title">分享你的私房美味！百味來私房料理募集</div>
											</a> <span class="promote-subtitle">2017/06/04 截止</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card campaign">
											<a title="土司料理募集" data-story-name="活動區塊"
												data-placement-id="1" href="https://icook.tw/brands/iCook">
												<div class="img">
													<div class="mask"></div>
													<img alt="土司料理募集" class="img-responsive"
														src="https://dbjdsnch130xu.cloudfront.net/uploads/campaign/cover/155/1822d54caa68cecd.jpg" />
												</div>
												<div class="promote-title">春日瘋野餐 全家土司料理熱烈募集中</div>
											</a> <span class="promote-subtitle">2017/05/12 截止</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card campaign">
											<a title="Mini番茄醬" data-story-name="活動區塊"
												data-placement-id="1" href="https://icook.tw/benefits/10">
												<div class="img">
													<div class="mask"></div>
													<img alt="Mini番茄醬" class="img-responsive"
														src="https://dbjdsnch130xu.cloudfront.net/uploads/campaign/cover/157/3cfbd65d02c39bbf.jpg" />
												</div>
												<div class="promote-title">加入VIP抽限量可愛迷你番茄醬</div>
											</a> <span class="promote-subtitle">2017/05/31 截止</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card campaign">
											<a title="鐘點到府清潔" data-story-name="活動區塊"
												data-placement-id="1" href="http://icook.tw/benefits/18">
												<div class="img">
													<div class="mask"></div>
													<img alt="鐘點到府清潔" class="img-responsive"
														src="https://dbjdsnch130xu.cloudfront.net/uploads/campaign/cover/154/52efbcd0eed6a384.jpg" />
												</div>
												<div class="promote-title">加入VIP 獨享$200鐘點清潔折扣</div>
											</a> <span class="promote-subtitle">2017/05/31 截止</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card campaign">
											<a title="honestbee首購" data-story-name="活動區塊"
												data-placement-id="1" href="https://icook.tw/benefits/14">
												<div class="img">
													<div class="mask"></div>
													<img alt="honestbee首購" class="img-responsive"
														src="https://dbjdsnch130xu.cloudfront.net/uploads/campaign/cover/149/41eae145215966b3.jpg" />
												</div>
												<div class="promote-title">加入VIP馬上領取$300免費生鮮食材！</div>
											</a> <span class="promote-subtitle">2017/04/30 截止</span>
										</div>

									</div>
								</div>
								<a class="left carousel-control"> <span
									class="icon-ic-angle-left" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control"> <span
									class="icon-ic-angle-right" aria-hidden="true"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>
					<script>
// 						window.dataLayer.push({
// 							'event' : 'Homepage-campaign-impressions',
// 							'product-category' : 'content',
// 							'product-name' : 'coupon-show'
// 						});
					</script>


					<!-- Ad banner 728x90 -->
					<div class="ad">
						<div class="adunit" data-adunit="iCook_Homepage_Middle"
							data-size-mapping="main"></div>
					</div>

					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								番茄便宜又好吃 <a class="more pull-right" data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/categories/303">
									更多內容<i class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="番茄豬肉冬粉" data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/recipes/198579">
									<div class="img">
										<div class="mask"></div>
										<img alt="番茄豬肉冬粉" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3706/curation_de8b684a34ea5ff4.jpg" />
									</div>
									<div class="recipe-name">番茄豬肉冬粉</div>
								</a> <span class="user-name">by <a data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/users/s3898433">小潔的廚房記事</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="鮮蝦番茄豆腐" data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/recipes/194211">
									<div class="img">
										<div class="mask"></div>
										<img alt="鮮蝦番茄豆腐" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3707/curation_2595dc4c1133d823.jpg" />
									</div>
									<div class="recipe-name">鮮蝦番茄豆腐</div>
								</a> <span class="user-name">by <a data-story-name="精選2-番茄"
									data-placement-id="11"
									href="https://icook.tw/users/julia777777">朱麗安廚房手記</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="【電鍋版】蕃茄牛肉湯" data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/recipes/192991">
									<div class="img">
										<div class="mask"></div>
										<img alt="【電鍋版】蕃茄牛肉湯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3708/curation_aae7231e32f1f926.jpg" />
									</div>
									<div class="recipe-name">【電鍋版】蕃茄牛肉湯</div>
								</a> <span class="user-name">by <a data-story-name="精選2-番茄"
									data-placement-id="11"
									href="https://icook.tw/users/josephinee7">愛旅遊的煮婦</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="南瓜番茄濃湯" data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/recipes/182986">
									<div class="img">
										<div class="mask"></div>
										<img alt="南瓜番茄濃湯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3709/curation_99fce6b8f1695cfc.jpg" />
									</div>
									<div class="recipe-name">南瓜番茄濃湯</div>
								</a> <span class="user-name">by <a data-story-name="精選2-番茄"
									data-placement-id="11" href="https://icook.tw/users/mrsmic">米太廚房手記</a></span>
							</div>

						</div>
					</div>


					<!-- Ad banner 728x90 -->
					<div class="ad">
						<div class="adunit" data-adunit="iCook_Homepage_Bottom"
							data-size-mapping="main"></div>
					</div>


					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								愛料理市集 <a target="_blank" class="more pull-right"
									data-story-name="市集Slider" data-placement-id="2"
									href="http://market.icook.tw"> 更多商品<i
									class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div id="product-slider" class="carousel slide campaign-slider">
								<div class="carousel-inner slick-slider" role="listbox">
									<div class="slick-slide">
										<div class="new-card new-promote-card product">
											<a title="加拿大 Nude 頂級風味蜜" data-story-name="市集Slider"
												data-placement-id="2"
												href="https://market.icook.tw/products/nude">
												<div class="img">
													<div class="mask"></div>
													<img alt="加拿大 Nude 頂級風味蜜"
														src="https://d1rp2dn3l01ufj.cloudfront.net/uploads/product/cover/181/medium_17d4f688de.jpg" />
												</div>
												<div class="promote-title">加拿大 Nude 頂級風味蜜</div>
											</a> <span class="promote-subtitle">特有藍莓 蕎麥 黃花蜂蜜 別於台灣傳統風味</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card product">
											<a title="自家畜養無毒素食豬" data-story-name="市集Slider"
												data-placement-id="2"
												href="https://market.icook.tw/products/familypork">
												<div class="img">
													<div class="mask"></div>
													<img alt="自家畜養無毒素食豬"
														src="https://d1rp2dn3l01ufj.cloudfront.net/uploads/product/cover/179/medium_58acb2212e.jpg" />
												</div>
												<div class="promote-title">自家畜養無毒素食豬</div>
											</a> <span class="promote-subtitle">吃胡蘿蔔的豬 無腥味 只吃得到鮮甜好味</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card product">
											<a title="日本 Kikka 銀峯菊花土鍋" data-story-name="市集Slider"
												data-placement-id="2"
												href="https://market.icook.tw/products/kikka">
												<div class="img">
													<div class="mask"></div>
													<img alt="日本 Kikka 銀峯菊花土鍋"
														src="https://d1rp2dn3l01ufj.cloudfront.net/uploads/product/cover/136/medium_3a97bac33e.jpg" />
												</div>
												<div class="promote-title">日本 Kikka 銀峯菊花土鍋</div>
											</a> <span class="promote-subtitle">日本家庭必備的萬用土鍋</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card product">
											<a title="台灣在地蜂蜜" data-story-name="市集Slider"
												data-placement-id="2"
												href="https://market.icook.tw/products/injoyhoney">
												<div class="img">
													<div class="mask"></div>
													<img alt="台灣在地蜂蜜"
														src="https://d1rp2dn3l01ufj.cloudfront.net/uploads/product/cover/44/medium_0413138f75.jpg" />
												</div>
												<div class="promote-title">台灣在地蜂蜜</div>
											</a> <span class="promote-subtitle">來自大自然恩賜的甜蜜！</span>
										</div>

									</div>
									<div class="slick-slide">
										<div class="new-card new-promote-card product">
											<a title="在地嚴選無毒黑羽土雞" data-story-name="市集Slider"
												data-placement-id="2"
												href="https://market.icook.tw/products/yuanyufarm">
												<div class="img">
													<div class="mask"></div>
													<img alt="在地嚴選無毒黑羽土雞"
														src="https://d1rp2dn3l01ufj.cloudfront.net/uploads/product/cover/178/medium_596fa9fa2b.jpg" />
												</div>
												<div class="promote-title">在地嚴選無毒黑羽土雞</div>
											</a> <span class="promote-subtitle">肉質紮實鮮美，纖維細膩，一吃就知道！</span>
										</div>

									</div>
								</div>
								<a class="left carousel-control"> <span
									class="icon-ic-angle-left" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control"> <span
									class="icon-ic-angle-right" aria-hidden="true"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>

					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								品牌廚房精選食譜 <a class="more pull-right" data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands"> 更多內容<i
									class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="香橙梅酒乳酪蛋糕" data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/heysong">
									<div class="img">
										<div class="mask"></div>
										<img alt="香橙梅酒乳酪蛋糕" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3577/curation_a4fa28aa5b1fe11f.jpg" />
									</div>
									<div class="recipe-name">香橙梅酒乳酪蛋糕</div>
								</a> <span class="user-name">by <a data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/heysong">黑松
										HeySong</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="南瓜海鮮酥皮濃湯" data-story-name="精選3-品牌廚房"
									data-placement-id="12"
									href="https://icook.tw/brands/CampbellSoup">
									<div class="img">
										<div class="mask"></div>
										<img alt="南瓜海鮮酥皮濃湯" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3578/curation_6b6a0f58f6254427.jpg" />
									</div>
									<div class="recipe-name">南瓜海鮮酥皮濃湯</div>
								</a> <span class="user-name">by <a data-story-name="精選3-品牌廚房"
									data-placement-id="12"
									href="https://icook.tw/brands/CampbellSoup">金寶湯CampbellSoup</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="蔓莓纖果咖啡麵包" data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/heysong">
									<div class="img">
										<div class="mask"></div>
										<img alt="蔓莓纖果咖啡麵包" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3579/curation_0e02fad1a28bd442.jpg" />
									</div>
									<div class="recipe-name">蔓莓纖果咖啡麵包</div>
								</a> <span class="user-name">by <a data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/heysong">黑松
										HeySong</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="棉花糖洋芋脆餅" data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/LAYSTW">
									<div class="img">
										<div class="mask"></div>
										<img alt="棉花糖洋芋脆餅" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3580/curation_9ba3608ff81a1eec.jpg" />
									</div>
									<div class="recipe-name">棉花糖洋芋脆餅</div>
								</a> <span class="user-name">by <a data-story-name="精選3-品牌廚房"
									data-placement-id="12" href="https://icook.tw/brands/LAYSTW">樂事好煮意</a></span>
							</div>

						</div>
					</div>


					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								今日菜單推薦 <a class="more pull-right" data-story-name="精選4-今日菜單推薦"
									data-placement-id="14"
									href="https://icook.tw/recipes/search?q=%E5%AE%B6%E5%B8%B8%E8%8F%9C">
									更多內容<i class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="啤酒滷雞翅" data-story-name="精選4-今日菜單推薦"
									data-placement-id="14" href="https://icook.tw/recipes/198502">
									<div class="img">
										<div class="mask"></div>
										<img alt="啤酒滷雞翅" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3723/curation_e33a36e55fdef6f5.jpg" />
									</div>
									<div class="recipe-name">啤酒滷雞翅</div>
								</a> <span class="user-name">by <a
									data-story-name="精選4-今日菜單推薦" data-placement-id="14"
									href="https://icook.tw/users/aprilliu334">🍯 April 手作廚房 🍳</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="沙茶腐皮菇菇" data-story-name="精選4-今日菜單推薦"
									data-placement-id="14" href="https://icook.tw/recipes/84042">
									<div class="img">
										<div class="mask"></div>
										<img alt="沙茶腐皮菇菇" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3724/curation_c257374ba723d6f7.jpg" />
									</div>
									<div class="recipe-name">沙茶腐皮菇菇</div>
								</a> <span class="user-name">by <a
									data-story-name="精選4-今日菜單推薦" data-placement-id="14"
									href="https://icook.tw/users/josephinee7">愛旅遊的煮婦</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="涼拌茄子" data-story-name="精選4-今日菜單推薦"
									data-placement-id="14" href="https://icook.tw/recipes/158710">
									<div class="img">
										<div class="mask"></div>
										<img alt="涼拌茄子" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3725/curation_23341737a714d94a.jpg" />
									</div>
									<div class="recipe-name">涼拌茄子</div>
								</a> <span class="user-name">by <a
									data-story-name="精選4-今日菜單推薦" data-placement-id="14"
									href="https://icook.tw/users/100002279834418">胖仙女</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="醬汁蒸蛤蠣寬粉" data-story-name="精選4-今日菜單推薦"
									data-placement-id="14" href="https://icook.tw/recipes/127759">
									<div class="img">
										<div class="mask"></div>
										<img alt="醬汁蒸蛤蠣寬粉" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3726/curation_b472eff141d87ae2.jpg" />
									</div>
									<div class="recipe-name">醬汁蒸蛤蠣寬粉</div>
								</a> <span class="user-name">by <a
									data-story-name="精選4-今日菜單推薦" data-placement-id="14"
									href="https://icook.tw/users/fenglin3762584">Feng Lin</a></span>
							</div>

						</div>
					</div>


					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								當季梅子簡單DIY <a class="more pull-right" data-story-name="精選5-梅子"
									data-placement-id="13"
									href="https://icook.tw/recipes/search?q=%E6%A2%85&amp;ingredients=%E6%A2%85%E5%AD%90">
									更多內容<i class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card post-card">
								<a title="超好喝梅酒自己釀！簡單做法分享" data-story-name="精選5-梅子"
									data-placement-id="13"
									href="https://blog.icook.tw/posts/103262">
									<div class="img">
										<div class="mask"></div>
										<img alt="超好喝梅酒自己釀！簡單做法分享" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3647/curation_ee533870c294e892.jpg" />
									</div>
									<div class="post-name">超好喝梅酒自己釀！簡單做法分享</div>
								</a>
							</div>

							<div class="new-card new-photo-card">
								<a title="輕鬆在家醃脆梅" data-story-name="精選5-梅子"
									data-placement-id="13" href="https://icook.tw/recipes/108021">
									<div class="img">
										<div class="mask"></div>
										<img alt="輕鬆在家醃脆梅" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3648/curation_587481c09a7cccde.jpg" />
									</div>
									<div class="recipe-name">輕鬆在家醃脆梅</div>
								</a> <span class="user-name">by <a data-story-name="精選5-梅子"
									data-placement-id="13" href="https://icook.tw/users/lin3665">林安安</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="自製Q梅" data-story-name="精選5-梅子" data-placement-id="13"
									href="https://icook.tw/recipes/153283">
									<div class="img">
										<div class="mask"></div>
										<img alt="自製Q梅" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3649/curation_45343655637a1aba.jpg" />
									</div>
									<div class="recipe-name">自製Q梅</div>
								</a> <span class="user-name">by <a data-story-name="精選5-梅子"
									data-placement-id="13" href="https://icook.tw/users/ching39">ching</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="自製梅子果醬" data-story-name="精選5-梅子"
									data-placement-id="13" href="https://icook.tw/recipes/114186">
									<div class="img">
										<div class="mask"></div>
										<img alt="自製梅子果醬" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3650/curation_97ce681a1081bd87.jpg" />
									</div>
									<div class="recipe-name">自製梅子果醬</div>
								</a> <span class="user-name">by <a data-story-name="精選5-梅子"
									data-placement-id="13"
									href="https://icook.tw/users/mitamuracafe">蜜塔木拉</a></span>
							</div>

						</div>
					</div>


					<div class="selection selection-curation">
						<div class="inner-block-title">
							<h4 class="title">
								冰涼消暑小點心 <a class="more pull-right" data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/categories/375">
									更多內容<i class="icon-ic-angle-right"></i>
								</a>
							</h4>
						</div>
						<div class="inner-block clearfix">
							<div class="new-card new-photo-card">
								<a title="自製咖啡凍鮮奶茶" data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/recipes/81636">
									<div class="img">
										<div class="mask"></div>
										<img alt="自製咖啡凍鮮奶茶" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3654/curation_a5c87ebea8d9acac.jpg" />
									</div>
									<div class="recipe-name">自製咖啡凍鮮奶茶</div>
								</a> <span class="user-name">by <a data-story-name="精選6-果凍茶凍"
									data-placement-id="15"
									href="https://icook.tw/users/ksfamilykitchen">*:.｡廚房一隻柴｡.:*</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title=" 木瓜牛奶凍" data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/recipes/68901">
									<div class="img">
										<div class="mask"></div>
										<img alt=" 木瓜牛奶凍" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3655/curation_bc4e4765013cef52.jpg" />
									</div>
									<div class="recipe-name">木瓜牛奶凍</div>
								</a> <span class="user-name">by <a data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/users/koyaukau">Fan</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="蜜抹茶牛奶凍" data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/recipes/158022">
									<div class="img">
										<div class="mask"></div>
										<img alt="蜜抹茶牛奶凍" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3656/curation_ea585b1a0987f885.jpg" />
									</div>
									<div class="recipe-name">蜜抹茶牛奶凍</div>
								</a> <span class="user-name">by <a data-story-name="精選6-果凍茶凍"
									data-placement-id="15"
									href="https://icook.tw/users/1020504398076632">菲比菜好吃</a></span>
							</div>

							<div class="new-card new-photo-card">
								<a title="西米露仙草凍" data-story-name="精選6-果凍茶凍"
									data-placement-id="15" href="https://icook.tw/recipes/48737">
									<div class="img">
										<div class="mask"></div>
										<img alt="西米露仙草凍" class="img-responsive"
											src="https://dbjdsnch130xu.cloudfront.net/uploads/selection_story_item/image/3657/curation_395e022faffba9ea.jpg" />
									</div>
									<div class="recipe-name">西米露仙草凍</div>
								</a> <span class="user-name">by <a data-story-name="精選6-果凍茶凍"
									data-placement-id="15"
									href="https://icook.tw/users/chiumoon168">Mia的廚房實驗</a></span>
							</div>

						</div>
					</div>



					<div class="clearfix popular-block">
						<div class="featured-categories">
							<div class="inner-block-title">
								<h4 class="title">
									食譜分類 <a class="more pull-right" data-story-name="精選分類"
										data-placement-id="24" href="/categories"> 全部分類<i
										class="icon-ic-angle-right"></i>
									</a>
								</h4>
							</div>
							<div class="inner-block">
								<div class="clearfix banners">
									<div class="banner">
										<a data-story-name="精選分類" data-placement-id="24"
											href="/recipes/latest">
											<div class="mask">最新食譜</div> <img alt="最新食譜"
											class="img-responsive"
											src="https://d3kjtz7uyul5bi.cloudfront.net/assets/latest_banner-c6bfb094759351fe3c2481341487d08ffb2d3f5fb652663525c12ad9c0d21d62.jpg" />
										</a>
									</div>
									<div class="banner">
										<a data-story-name="精選分類" data-placement-id="24"
											href="/recipes/popular">
											<div class="mask">熱門食譜</div> <img alt="熱門食譜"
											class="img-responsive"
											src="https://d3kjtz7uyul5bi.cloudfront.net/assets/popular_banner-27a88ccdb9be0d50618da33a87fa7fdc9683b233eb129f149d602533a7f4a8f8.jpg" />
										</a>
									</div>
								</div>
								<div class="clearfix entries mega-menu">
									<div class="entry">
										<h4>家常菜色</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/10">涼拌</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/109">飯糰</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/208">熱炒</a>
												</div>
											</li>
										</ul>
									</div>
									<div class="entry">
										<h4>手作麵包</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/334">吐司</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/335">貝果</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/336">台式麵包</a>
												</div>
											</li>
										</ul>
									</div>
									<div class="entry">
										<h4>當季食材</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/303">番茄</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/304">高麗菜</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/305">青椒</a>
												</div>
											</li>
										</ul>
									</div>
									<div class="entry">
										<h4>熱門點心</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/73">巧克力</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/345">布丁</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/375">果凍、茶凍</a>
												</div>
											</li>
										</ul>
									</div>
									<div class="entry">
										<h4>家常湯品</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/320">雞湯</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/322">濃湯</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/323">羅宋湯</a>
												</div>
											</li>
										</ul>
									</div>
									<div class="entry">
										<h4>人氣烘焙</h4>
										<ul class="main-menu clearfix">
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/198">雞蛋糕</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/200">鬆餅</a>
												</div>
											</li>
											<li class="list-group-item">
												<div class="panel-group">
													<a class="list-title" data-story-name="精選分類"
														data-placement-id="24" href="/categories/328">乳酪蛋糕</a>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="list-text list-post">
							<div class="inner-block-title">
								<h4 class="title">
									怎麼吃才健康 <a target="_blank" class="more pull-right"
										data-story-name="生活誌區塊" data-placement-id="17"
										href="https://blog.icook.tw/categories/1111"> 更多文章<i
										class="icon-ic-angle-right"></i>
									</a>
								</h4>
							</div>
							<div class="inner-block">
								<a data-story-name="生活誌區塊" data-placement-id="17"
									href="https://blog.icook.tw/posts/105857">
									<div class="media">
										<div class="media-left">
											<div class="mask"></div>
											<img alt="愛吃滷味嗎？營養師教你這樣吃才健康" class="media-object"
												src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3744/list_post_rectangle_3907491a2cf0ead3.jpg" />
										</div>
										<div class="media-body">
											<span>愛吃滷味嗎？營養師教你這樣吃才健康</span>
										</div>
									</div>
								</a> <a data-story-name="生活誌區塊" data-placement-id="17"
									href="https://blog.icook.tw/posts/105014">
									<div class="media">
										<div class="media-left">
											<div class="mask"></div>
											<img alt="水不是燒開就能喝，重金屬農藥恐殘留" class="media-object"
												src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3745/list_post_rectangle_35732d67d57955b2.jpg" />
										</div>
										<div class="media-body">
											<span>水不是燒開就能喝，重金屬農藥恐殘留</span>
										</div>
									</div>
								</a> <a data-story-name="生活誌區塊" data-placement-id="17"
									href="https://blog.icook.tw/posts/105030">
									<div class="media">
										<div class="media-left">
											<div class="mask"></div>
											<img alt="你又胃食道逆流了嗎？營養師：這樣吃就能改善" class="media-object"
												src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3746/list_post_rectangle_8828425628165dbe.jpg" />
										</div>
										<div class="media-body">
											<span>你又胃食道逆流了嗎？營養師：這樣吃就能改善</span>
										</div>
									</div>
								</a> <a data-story-name="生活誌區塊" data-placement-id="17"
									href="https://blog.icook.tw/posts/105742">
									<div class="media">
										<div class="media-left">
											<div class="mask"></div>
											<img alt="米飯在室溫擺放到隔餐，易有仙人掌桿菌污染風險" class="media-object"
												src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3747/list_post_rectangle_d4c6759408942a3b.jpg" />
										</div>
										<div class="media-body">
											<span>米飯在室溫擺放到隔餐，易有仙人掌桿菌污染風險</span>
										</div>
									</div>
								</a> <a data-story-name="生活誌區塊" data-placement-id="17"
									href="https://blog.icook.tw/posts/105007">
									<div class="media">
										<div class="media-left">
											<div class="mask"></div>
											<img alt="菇菇好營養，哪些人不能吃？" class="media-object"
												src="https://dbjdsnch130xu.cloudfront.net/uploads/list_story_item/image/3748/list_post_rectangle_2d45e9029eebfe2c.jpg" />
										</div>
										<div class="media-body">
											<span>菇菇好營養，哪些人不能吃？</span>
										</div>
									</div>
								</a>
							</div>
						</div>

					</div>

					<!-- Sidebar -->

				</div>
				<div class="col-xs-12 col-md-3">

					<div class="new-sidebar">
						<div class="business-sponsors brand-ad">
							<div class="inner-block-title">
								<h4 class="title">
									特選推薦<span class="badge-support pull-right">贊助</span>
								</h4>
							</div>
							<div class="inner-block">
								<ul>
									<li><a target="_blank"
										href="/clicks/29f0c180b47dedab124e818fece6b846">快速搜尋零失敗的人氣食譜&gt;&gt;</a></li>
									<li><a target="_blank"
										href="/clicks/83f8ce7a35adc9b5316c799a36adc50b">VIP限定！30分鐘免費到府清潔</a></li>
									<li><a target="_blank"
										href="/clicks/910e3ec2c9562977e590178b8aa7ddd9">用洋芋片快速為料理加分！</a></li>
									<li><a target="_blank"
										href="/clicks/bdc6e3811fdde258986f8426a2ad943f">讓喜歡烘焙的你在家安心做甜點</a></li>
									<li><a target="_blank"
										href="/clicks/7155c41eddb9992b9fe6f169b88cb76d">超夯土鍋65折！超值優惠趕緊搶購</a></li>
									<li><a target="_blank"
										href="/clicks/16325a1b2bc36399141f1345ba4aa0a2">經典不敗的濃湯你不能錯過</a></li>
									<li><a target="_blank"
										href="/clicks/c8cd86c5f7dedc8d024a4585e2dd9172">飲料也能輕鬆入菜！秘訣就在這</a></li>
								</ul>
							</div>
						</div>

						<!-- App download Banner -->
						<div class="app-banner">
							<div class="inner-block-title">
								<h4 class="title">下載愛料理 App</h4>
							</div>
							<div class="inner-block clearfix">
								<a href="http://bit.ly/icookiosapp"
									title="Download on the App Store" target="_blank"> <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
									<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
									<svg xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
										id="US_UK_Download_on_the" x="0px" y="0px" width="135px"
										height="40px" viewBox="0 0 135 40"
										enable-background="new 0 0 135 40" xml:space="preserve"
										class="img-responsive">
<g>
	<path fill="#A6A6A6"
											d="M130.197,40H4.729C2.122,40,0,37.872,0,35.267V4.726C0,2.12,2.122,0,4.729,0h125.468   C132.803,0,135,2.12,135,4.726v30.541C135,37.872,132.803,40,130.197,40L130.197,40z"></path>
	<path
											d="M134.032,35.268c0,2.116-1.714,3.83-3.834,3.83H4.729c-2.119,0-3.839-1.714-3.839-3.83V4.725   c0-2.115,1.72-3.835,3.839-3.835h125.468c2.121,0,3.834,1.72,3.834,3.835L134.032,35.268L134.032,35.268z"></path>
	<g>
		<g>
			<path fill="#FFFFFF"
											d="M30.128,19.784c-0.029-3.223,2.639-4.791,2.761-4.864c-1.511-2.203-3.853-2.504-4.676-2.528     c-1.967-0.207-3.875,1.177-4.877,1.177c-1.022,0-2.565-1.157-4.228-1.123c-2.14,0.033-4.142,1.272-5.24,3.196     c-2.266,3.923-0.576,9.688,1.595,12.859c1.086,1.553,2.355,3.287,4.016,3.226c1.625-0.067,2.232-1.036,4.193-1.036     c1.943,0,2.513,1.036,4.207,0.997c1.744-0.028,2.842-1.56,3.89-3.127c1.255-1.78,1.759-3.533,1.779-3.623     C33.507,24.924,30.161,23.647,30.128,19.784z"></path>
			<path fill="#FFFFFF"
											d="M26.928,10.306c0.874-1.093,1.472-2.58,1.306-4.089c-1.265,0.056-2.847,0.875-3.758,1.944     c-0.806,0.942-1.526,2.486-1.34,3.938C24.557,12.205,26.016,11.382,26.928,10.306z"></path>
		</g>
	</g>
	<g>
		<path fill="#FFFFFF"
											d="M53.645,31.504h-2.271l-1.244-3.909h-4.324l-1.185,3.909h-2.211l4.284-13.308h2.646L53.645,31.504z     M49.755,25.955L48.63,22.48c-0.119-0.355-0.342-1.191-0.671-2.507h-0.04c-0.131,0.566-0.342,1.402-0.632,2.507l-1.105,3.475    H49.755z"></path>
		<path fill="#FFFFFF"
											d="M64.662,26.588c0,1.632-0.441,2.922-1.323,3.869c-0.79,0.843-1.771,1.264-2.942,1.264    c-1.264,0-2.172-0.454-2.725-1.362h-0.04v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04    c0.711-1.146,1.79-1.718,3.238-1.718c1.132,0,2.077,0.447,2.833,1.342C64.284,23.949,64.662,25.127,64.662,26.588z M62.49,26.666    c0-0.934-0.21-1.704-0.632-2.31c-0.461-0.632-1.08-0.948-1.856-0.948c-0.526,0-1.004,0.176-1.431,0.523    c-0.428,0.35-0.708,0.807-0.839,1.373c-0.066,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.642,1.768    s0.984,0.721,1.668,0.721c0.803,0,1.428-0.31,1.875-0.928C62.266,28.496,62.49,27.68,62.49,26.666z"></path>
		<path fill="#FFFFFF"
											d="M75.699,26.588c0,1.632-0.441,2.922-1.324,3.869c-0.789,0.843-1.77,1.264-2.941,1.264    c-1.264,0-2.172-0.454-2.724-1.362H68.67v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04    c0.71-1.146,1.789-1.718,3.238-1.718c1.131,0,2.076,0.447,2.834,1.342C75.32,23.949,75.699,25.127,75.699,26.588z M73.527,26.666    c0-0.934-0.211-1.704-0.633-2.31c-0.461-0.632-1.078-0.948-1.855-0.948c-0.527,0-1.004,0.176-1.432,0.523    c-0.428,0.35-0.707,0.807-0.838,1.373c-0.065,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.64,1.768    c0.428,0.48,0.984,0.721,1.67,0.721c0.803,0,1.428-0.31,1.875-0.928C73.303,28.496,73.527,27.68,73.527,26.666z"></path>
		<path fill="#FFFFFF"
											d="M88.039,27.772c0,1.132-0.393,2.053-1.182,2.764c-0.867,0.777-2.074,1.165-3.625,1.165    c-1.432,0-2.58-0.276-3.449-0.829l0.494-1.777c0.936,0.566,1.963,0.85,3.082,0.85c0.803,0,1.428-0.182,1.877-0.544    c0.447-0.362,0.67-0.848,0.67-1.454c0-0.54-0.184-0.995-0.553-1.364c-0.367-0.369-0.98-0.712-1.836-1.029    c-2.33-0.869-3.494-2.142-3.494-3.816c0-1.094,0.408-1.991,1.225-2.689c0.814-0.699,1.9-1.048,3.258-1.048    c1.211,0,2.217,0.211,3.02,0.632l-0.533,1.738c-0.75-0.408-1.598-0.612-2.547-0.612c-0.75,0-1.336,0.185-1.756,0.553    c-0.355,0.329-0.533,0.73-0.533,1.205c0,0.526,0.203,0.961,0.611,1.303c0.355,0.316,1,0.658,1.936,1.027    c1.145,0.461,1.986,1,2.527,1.618C87.77,26.081,88.039,26.852,88.039,27.772z"></path>
		<path fill="#FFFFFF"
											d="M95.088,23.508h-2.35v4.659c0,1.185,0.414,1.777,1.244,1.777c0.381,0,0.697-0.033,0.947-0.099l0.059,1.619    c-0.42,0.157-0.973,0.236-1.658,0.236c-0.842,0-1.5-0.257-1.975-0.77c-0.473-0.514-0.711-1.376-0.711-2.587v-4.837h-1.4v-1.6h1.4    v-1.757l2.094-0.632v2.389h2.35V23.508z"></path>
		<path fill="#FFFFFF"
											d="M105.691,26.627c0,1.475-0.422,2.686-1.264,3.633c-0.883,0.975-2.055,1.461-3.516,1.461    c-1.408,0-2.529-0.467-3.365-1.401s-1.254-2.113-1.254-3.534c0-1.487,0.43-2.705,1.293-3.652c0.861-0.948,2.023-1.422,3.484-1.422    c1.408,0,2.541,0.467,3.396,1.402C105.283,24.021,105.691,25.192,105.691,26.627z M103.479,26.696    c0-0.885-0.189-1.644-0.572-2.277c-0.447-0.766-1.086-1.148-1.914-1.148c-0.857,0-1.508,0.383-1.955,1.148    c-0.383,0.634-0.572,1.405-0.572,2.317c0,0.885,0.189,1.644,0.572,2.276c0.461,0.766,1.105,1.148,1.936,1.148    c0.814,0,1.453-0.39,1.914-1.168C103.281,28.347,103.479,27.58,103.479,26.696z"></path>
		<path fill="#FFFFFF"
											d="M112.621,23.783c-0.211-0.039-0.436-0.059-0.672-0.059c-0.75,0-1.33,0.283-1.738,0.85    c-0.355,0.5-0.533,1.132-0.533,1.895v5.035h-2.131l0.02-6.574c0-1.106-0.027-2.113-0.08-3.021h1.857l0.078,1.836h0.059    c0.225-0.631,0.58-1.139,1.066-1.52c0.475-0.343,0.988-0.514,1.541-0.514c0.197,0,0.375,0.014,0.533,0.039V23.783z"></path>
		<path fill="#FFFFFF"
											d="M122.156,26.252c0,0.382-0.025,0.704-0.078,0.967h-6.396c0.025,0.948,0.334,1.673,0.928,2.173    c0.539,0.447,1.236,0.671,2.092,0.671c0.947,0,1.811-0.151,2.588-0.454l0.334,1.48c-0.908,0.396-1.98,0.593-3.217,0.593    c-1.488,0-2.656-0.438-3.506-1.313c-0.848-0.875-1.273-2.05-1.273-3.524c0-1.447,0.395-2.652,1.186-3.613    c0.828-1.026,1.947-1.539,3.355-1.539c1.383,0,2.43,0.513,3.141,1.539C121.873,24.047,122.156,25.055,122.156,26.252z     M120.123,25.699c0.014-0.632-0.125-1.178-0.414-1.639c-0.369-0.593-0.936-0.889-1.699-0.889c-0.697,0-1.264,0.289-1.697,0.869    c-0.355,0.461-0.566,1.014-0.631,1.658H120.123z"></path>
	</g>
	<g>
		<g>
			<path fill="#FFFFFF"
											d="M49.05,10.009c0,1.177-0.353,2.063-1.058,2.658c-0.653,0.549-1.581,0.824-2.783,0.824     c-0.596,0-1.106-0.026-1.533-0.078V6.982c0.557-0.09,1.157-0.136,1.805-0.136c1.145,0,2.008,0.249,2.59,0.747     C48.723,8.156,49.05,8.961,49.05,10.009z M47.945,10.038c0-0.763-0.202-1.348-0.606-1.756c-0.404-0.407-0.994-0.611-1.771-0.611     c-0.33,0-0.611,0.022-0.844,0.068v4.889c0.129,0.02,0.365,0.029,0.708,0.029c0.802,0,1.421-0.223,1.857-0.669     S47.945,10.892,47.945,10.038z"></path>
			<path fill="#FFFFFF"
											d="M54.909,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.009,0.718-1.727,0.718     c-0.692,0-1.243-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.712-0.698     c0.692,0,1.248,0.229,1.669,0.688C54.708,9.757,54.909,10.333,54.909,11.037z M53.822,11.071c0-0.435-0.094-0.808-0.281-1.119     c-0.22-0.376-0.533-0.564-0.94-0.564c-0.421,0-0.741,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138     c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.714-0.191,0.94-0.574     C53.725,11.882,53.822,11.506,53.822,11.071z"></path>
			<path fill="#FFFFFF"
											d="M62.765,8.719l-1.475,4.714h-0.96l-0.611-2.047c-0.155-0.511-0.281-1.019-0.379-1.523h-0.019     c-0.091,0.518-0.217,1.025-0.379,1.523l-0.649,2.047h-0.971l-1.387-4.714h1.077l0.533,2.241c0.129,0.53,0.235,1.035,0.32,1.513     h0.019c0.078-0.394,0.207-0.896,0.389-1.503l0.669-2.25h0.854l0.641,2.202c0.155,0.537,0.281,1.054,0.378,1.552h0.029     c0.071-0.485,0.178-1.002,0.32-1.552l0.572-2.202H62.765z"></path>
			<path fill="#FFFFFF"
											d="M68.198,13.433H67.15v-2.7c0-0.832-0.316-1.248-0.95-1.248c-0.311,0-0.562,0.114-0.757,0.343     c-0.193,0.229-0.291,0.499-0.291,0.808v2.796h-1.048v-3.366c0-0.414-0.013-0.863-0.038-1.349h0.921l0.049,0.737h0.029     c0.122-0.229,0.304-0.418,0.543-0.569c0.284-0.176,0.602-0.265,0.95-0.265c0.44,0,0.806,0.142,1.097,0.427     c0.362,0.349,0.543,0.87,0.543,1.562V13.433z"></path>
			<path fill="#FFFFFF" d="M71.088,13.433h-1.047V6.556h1.047V13.433z"></path>
			<path fill="#FFFFFF"
											d="M77.258,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.01,0.718-1.727,0.718     c-0.693,0-1.244-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.711-0.698     c0.693,0,1.248,0.229,1.67,0.688C77.057,9.757,77.258,10.333,77.258,11.037z M76.17,11.071c0-0.435-0.094-0.808-0.281-1.119     c-0.219-0.376-0.533-0.564-0.939-0.564c-0.422,0-0.742,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138     c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.713-0.191,0.939-0.574     C76.074,11.882,76.17,11.506,76.17,11.071z"></path>
			<path fill="#FFFFFF"
											d="M82.33,13.433h-0.941l-0.078-0.543h-0.029c-0.322,0.433-0.781,0.65-1.377,0.65     c-0.445,0-0.805-0.143-1.076-0.427c-0.246-0.258-0.369-0.579-0.369-0.96c0-0.576,0.24-1.015,0.723-1.319     c0.482-0.304,1.16-0.453,2.033-0.446V10.3c0-0.621-0.326-0.931-0.979-0.931c-0.465,0-0.875,0.117-1.229,0.349l-0.213-0.688     c0.438-0.271,0.979-0.407,1.617-0.407c1.232,0,1.85,0.65,1.85,1.95v1.736C82.262,12.78,82.285,13.155,82.33,13.433z      M81.242,11.813v-0.727c-1.156-0.02-1.734,0.297-1.734,0.95c0,0.246,0.066,0.43,0.201,0.553c0.135,0.123,0.307,0.184,0.512,0.184     c0.23,0,0.445-0.073,0.641-0.218c0.197-0.146,0.318-0.331,0.363-0.558C81.236,11.946,81.242,11.884,81.242,11.813z"></path>
			<path fill="#FFFFFF"
											d="M88.285,13.433h-0.93l-0.049-0.757h-0.029c-0.297,0.576-0.803,0.864-1.514,0.864     c-0.568,0-1.041-0.223-1.416-0.669s-0.562-1.025-0.562-1.736c0-0.763,0.203-1.381,0.611-1.853c0.395-0.44,0.879-0.66,1.455-0.66     c0.633,0,1.076,0.213,1.328,0.64h0.02V6.556h1.049v5.607C88.248,12.622,88.26,13.045,88.285,13.433z M87.199,11.445v-0.786     c0-0.136-0.01-0.246-0.029-0.33c-0.059-0.252-0.186-0.464-0.379-0.635c-0.195-0.171-0.43-0.257-0.701-0.257     c-0.391,0-0.697,0.155-0.922,0.466c-0.223,0.311-0.336,0.708-0.336,1.193c0,0.466,0.107,0.844,0.322,1.135     c0.227,0.31,0.533,0.465,0.916,0.465c0.344,0,0.619-0.129,0.828-0.388C87.1,12.069,87.199,11.781,87.199,11.445z"></path>
			<path fill="#FFFFFF"
											d="M97.248,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.008,0.718-1.727,0.718     c-0.691,0-1.242-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.713-0.698     c0.691,0,1.248,0.229,1.668,0.688C97.047,9.757,97.248,10.333,97.248,11.037z M96.162,11.071c0-0.435-0.094-0.808-0.281-1.119     c-0.221-0.376-0.533-0.564-0.941-0.564c-0.42,0-0.74,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138     c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.715-0.191,0.941-0.574     C96.064,11.882,96.162,11.506,96.162,11.071z"></path>
			<path fill="#FFFFFF"
											d="M102.883,13.433h-1.047v-2.7c0-0.832-0.316-1.248-0.951-1.248c-0.311,0-0.562,0.114-0.756,0.343     s-0.291,0.499-0.291,0.808v2.796h-1.049v-3.366c0-0.414-0.012-0.863-0.037-1.349h0.92l0.049,0.737h0.029     c0.123-0.229,0.305-0.418,0.543-0.569c0.285-0.176,0.602-0.265,0.951-0.265c0.439,0,0.805,0.142,1.096,0.427     c0.363,0.349,0.543,0.87,0.543,1.562V13.433z"></path>
			<path fill="#FFFFFF"
											d="M109.936,9.504h-1.154v2.29c0,0.582,0.205,0.873,0.611,0.873c0.188,0,0.344-0.016,0.467-0.049     l0.027,0.795c-0.207,0.078-0.479,0.117-0.814,0.117c-0.414,0-0.736-0.126-0.969-0.378c-0.234-0.252-0.35-0.676-0.35-1.271V9.504     h-0.689V8.719h0.689V7.855l1.027-0.31v1.173h1.154V9.504z"></path>
			<path fill="#FFFFFF"
											d="M115.484,13.433h-1.049v-2.68c0-0.845-0.316-1.268-0.949-1.268c-0.486,0-0.818,0.245-1,0.735     c-0.031,0.103-0.049,0.229-0.049,0.377v2.835h-1.047V6.556h1.047v2.841h0.02c0.33-0.517,0.803-0.775,1.416-0.775     c0.434,0,0.793,0.142,1.078,0.427c0.355,0.355,0.533,0.883,0.533,1.581V13.433z"></path>
			<path fill="#FFFFFF"
											d="M121.207,10.853c0,0.188-0.014,0.346-0.039,0.475h-3.143c0.014,0.466,0.164,0.821,0.455,1.067     c0.266,0.22,0.609,0.33,1.029,0.33c0.465,0,0.889-0.074,1.271-0.223l0.164,0.728c-0.447,0.194-0.973,0.291-1.582,0.291     c-0.73,0-1.305-0.215-1.721-0.645c-0.418-0.43-0.625-1.007-0.625-1.731c0-0.711,0.193-1.303,0.582-1.775     c0.406-0.504,0.955-0.756,1.648-0.756c0.678,0,1.193,0.252,1.541,0.756C121.068,9.77,121.207,10.265,121.207,10.853z      M120.207,10.582c0.008-0.311-0.061-0.579-0.203-0.805c-0.182-0.291-0.459-0.437-0.834-0.437c-0.342,0-0.621,0.142-0.834,0.427     c-0.174,0.227-0.277,0.498-0.311,0.815H120.207z"></path>
		</g>
	</g>
</g>
</svg>

								</a> <a href="http://goo.gl/ZUJIf" title="GET IT ON Google Play"
									target="_blank"> <img alt="GET IT ON Google Play"
									class="img-responsive"
									src="https://d3kjtz7uyul5bi.cloudfront.net/assets/google-215e46442382af6784b854e56f70c527d0d205a367c58567c308d3c3fbe31cc2.png" />
								</a>
							</div>
						</div>
						<!-- AD -->
						<div class="adunit text-center ad" data-adunit="iCook_Sidebar_top"
							data-size-mapping="homepage_sidebar"></div>
						<div class="popular-keywords">
							<div class="inner-block-title">
								<h4 class="title">熱門關鍵字</h4>
							</div>
							<div class="inner-block">
								<ul>
									<li><a title="家常菜" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E5%AE%B6%E5%B8%B8%E8%8F%9C">家常菜</a></li>
									<li><a title="蛋糕" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E8%9B%8B%E7%B3%95">蛋糕</a></li>
									<li><a title="雞胸肉" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E9%9B%9E%E8%83%B8%E8%82%89">雞胸肉</a></li>
									<li><a title="高麗菜" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E9%AB%98%E9%BA%97%E8%8F%9C">高麗菜</a></li>
									<li><a title="電鍋" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E9%9B%BB%E9%8D%8B">電鍋</a></li>
									<li><a title="吐司" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E5%90%90%E5%8F%B8">吐司</a></li>
									<li><a title="馬鈴薯" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E9%A6%AC%E9%88%B4%E8%96%AF">馬鈴薯</a></li>
									<li><a title="南瓜" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E5%8D%97%E7%93%9C">南瓜</a></li>
									<li><a title="餅乾" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E9%A4%85%E4%B9%BE">餅乾</a></li>
									<li><a title="豆腐" data-story-name="熱門關鍵字"
										data-placement-id="20"
										href="/recipes/search?q=%E8%B1%86%E8%85%90">豆腐</a></li>
								</ul>
							</div>
						</div>

						<div class="adunit text-center ad"
							data-adunit="iCook_Homepage_Sidebar_Middle"
							data-dimensions="250x250"></div>
						<div
							class="adunit text-center ad adunit-sidebar-fix ad-sidebar-fix"
							data-adunit="iCook_Homepage_Sidebar_Bottom"
							data-size-mapping="homepage_skyscraper"></div>
					</div>

				</div>

			</div>

		</div>

		<jsp:include page="/footer.jsp" />

	</div>

	<script src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>
