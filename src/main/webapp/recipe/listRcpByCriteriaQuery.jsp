<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.spring.service.*"%>
<%@page import="com.spring.entity.*"%>

<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%
	List<RecipeVO> list = (List<RecipeVO>) request.getAttribute("list");

	IngreServiceImpl ingreServiceImpl = new IngreServiceImpl();

	List<IngredientVO> ingreList = null;

	for (RecipeVO recipeVO : list) {

		ingreList = ingreServiceImpl.findByRcpSeq(recipeVO);
	}

	pageContext.setAttribute("ingreList", ingreList);
%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>愛料理首頁</title>


<style>
</style>



<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="all" />





<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-1fa3a0ccddc9796a97bfe34b33c1fe658fd9595388375228d97cc068fd93863e.css" />
<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/homepage-4e9c2c6b556d0f4b69591165e75499980f763ebb8dd71e13fc65c0c3d813ebf1.css" />
<link rel="icon" sizes="any" mask
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/icook_safari_pinned-1599538523bca201185b6bef7e12712785470bef099fcd60ad68e5d7b496a9af.svg">
<link rel="shortcut icon" type="image/x-icon"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/favicon-9db8e01cf53a999c927c95b0e479f8b609bd7eed5d9120f16eb49e4a6df9f1dc.ico" />

<link rel="next"
	href="/recipes/search?ingredients=&amp;page=2&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95" />


</head>
<body>

	<div class="o-wrapper" id="o-wrapper">

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
									href="/recipes/new?ref=nav">寫食譜</a>
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

		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8">

					<script>
						window.dataLayer.push({
							'product-category' : 'feature',
							'product-name' : 'search-hot-result'
						});
					</script>


					<div class="ad text-center">
						<div class="adunit" data-adunit="iCook_Recipes_Top"
							data-size-mapping="vip" style="margin-bottom: 15px"></div>
					</div>

					<div class="inner-block search-results clearfix">
						找到 <span class="recipe-total">15</span> 道<span class="keyword">「
							養樂多蛋糕 」</span>的食譜
					</div>

					<div class="recipes-sort">
						<div data-hypernova-key="VipRecipeSearchOrder"
							data-hypernova-id="f3a466c9-88b6-48d0-ada8-6f88b88ef189">
							<div class="sorting-order" data-reactroot="" data-reactid="1"
								data-react-checksum="1847014164">
								<!-- react-text: 2 -->
								排序：
								<!-- /react-text -->
								<div class="btn-group" data-reactid="3">
									<a class="btn btn-default active"
										href="/recipes/search?ingredients=&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95&amp;order=latest"
										data-reactid="4">最新 ▼</a><a class="btn btn-default" href="#"
										data-reactid="5"> <!-- react-text: 6 -->人氣<!-- /react-text -->
										<span class="badge-vip" data-reactid="7"></span> <!-- react-text: 8 -->
										▼<!-- /react-text -->
									</a>
								</div>
							</div>
						</div>
						<script type="application/json"
							data-hypernova-key="VipRecipeSearchOrder"
							data-hypernova-id="f3a466c9-88b6-48d0-ada8-6f88b88ef189"><!--{"aRef":"vip-cta-search-hot-result","isVip":false,"order":"latest","url":"/recipes/search?ingredients=&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95"}--></script>
					</div>

					<div class="recipes-list">
						<div class="row">

							<div class="col-xs-12">

								<c:forEach items="${list}" var="listData">

									<div class="media recipe-card list-card">

										<div class="pull-left">

											<a title="${listData.rName}" href="<%= request.getContextPath() %>/recipe/recipe.do?action=getOne_For_Display&rcp_seq=${listData.rcpSeq}"> <img
												alt="養樂多凍包心乳酪蛋糕（6吋、免烤箱）" class="img-responsive"
												src="<%=request.getContextPath()%>/images/recipe/${listData.rcpSeq}/${listData.rcpSeq}_main.jpg" />

											</a>
										</div>
										<div class="media-body card-info">

											<a title="${listData.rName}" data-title="養樂多凍包心乳酪蛋糕（6吋、免烤箱）"
												class="recipe-name" href="/recipes/198922">${listData.rName}</a>
											<p class="user-name">
												by <a href="/users/819558861456696">❤️手上路</a>
											</p>
											<p class="description">${listData.note}</p>
											<p class="material">

												食材:
												<c:forEach items="${ingreList}" var="ingreListData"
													varStatus="status">
													<c:if test="${not status.last}">${ingreListData.iName}、</c:if>

													<c:if test="${status.last}">${ingreListData.iName}&nbsp;</c:if>

												</c:forEach>

											</p>
											<ul class="meta clearfix">
												<li class="fav-count recipe-favorites" data-id="198922"
													data-count="55" data-isRound=true><span>55</span></li>
												<li class="comments-count" data-title="0 則留言">0</li>
												<li class="dishes-count" data-title="0 人做過">0</li>
											</ul>
										</div>
									</div>

								</c:forEach>

								<div class="text-center">
									<nav>
										<ul class="pagination ">

											<li class="page active"><a
												href="/recipes/search?ingredients=&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95">1</a>
											</li>

											<li class="page"><a rel="next"
												href="/recipes/search?ingredients=&amp;page=2&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95">2</a>
											</li>

											<li class="next_page"><a rel="next"
												href="/recipes/search?ingredients=&amp;page=2&amp;q=%E9%A4%8A%E6%A8%82%E5%A4%9A%E8%9B%8B%E7%B3%95"></a>
											</li>

										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>


				</div>
				<div class="col-xs-12 col-md-4">

					<div class="sidebar">
						<div class="inner-block adunit ad" data-adunit="iCook_Sidebar_Top"
							data-size-mapping="sidebar"></div>
						<div class="hot-categories">
							<div class="inner-block-title">
								<div class="title">精選主題分類</div>
							</div>
							<div class="inner-block">
								<ul class="clearfix">
									<li><a title="沙拉" href="/categories/7">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/7/e0a40adf25bac5d4.jpg"
													alt="E0a40adf25bac5d4" />
											</div> <span>沙拉</span>
									</a></li>
									<li><a title="麵包機" href="/categories/458">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/458/0f5c3ac6a028f012.jpg"
													alt="0f5c3ac6a028f012" />
											</div> <span>麵包機</span>
									</a></li>
									<li><a title="鴨肉" href="/categories/43">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/43/f5aea1726476e31d.jpg"
													alt="F5aea1726476e31d" />
											</div> <span>鴨肉</span>
									</a></li>
									<li><a title="藜麥" href="/categories/399">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/399/a7a656dfab9809be.jpg"
													alt="A7a656dfab9809be" />
											</div> <span>藜麥</span>
									</a></li>
									<li><a title="魚類" href="/categories/44">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/44/b495b693972ef228.jpg"
													alt="B495b693972ef228" />
											</div> <span>魚類</span>
									</a></li>
									<li><a title="排骨湯" href="/categories/321">
											<div class="img">
												<img
													src="https://dbjdsnch130xu.cloudfront.net/uploads/category/background/321/c9ccd943587ba242.jpg"
													alt="C9ccd943587ba242" />
											</div> <span>排骨湯</span>
									</a></li>
								</ul>
							</div>
						</div>

						<div class="inner-block adunit ad ad-sidebar-fix"
							data-adunit="iCook_Recipes_Sidebar_Bottom"
							data-size-mapping="skyscraper"></div>
					</div>

				</div>
			</div>
		</div>

		<footer id="footer">
			<div class="mega-footer">
				<div class="container">
					<div class="row center-block">
						<div class="col-xs-12 col-md-4">
							<div class="report">
								<span class="logo">&nbsp;</span> <span>© 2011-2017
									Polydice, Inc.</span> <span class="visible-xs-inline"> <a
									rel="nofollow" target="_blank"
									href="https://newsroom.icook.tw/terms?ref=icook-footer">服務條款</a>
									和 <a rel="nofollow" target="_blank"
									href="https://newsroom.icook.tw/privacy?ref=icook-footer">隱私權政策</a>
								</span>
							</div>
							<ul class="socials">
								<li class="hidden-xs"><a class="footer-social-fb "
									href="https://www.facebook.com/icooktw?ref=icook-footer"
									title="愛料理 粉絲團" target="_blank" ref="nofollow"></a></li>
								<li class="hidden-xs"><a class="footer-social-line"
									href="http://bit.ly/1cfxPqM?ref=icook-footer" title="愛料理 line"
									target="_blank" ref="nofollow">&nbsp;</a></li>
								<li class="hidden-xs"><a class="footer-social-ig"
									href="http://instagram.com/icooktw?ref=icook-footer"
									title="愛料理 Instagram" target="_blank" ref="nofollow"></a></li>
								<li class="hidden-xs"><a class="footer-social-twitter"
									href="https://twitter.com/icooktw?ref=icook-footer"
									title="愛料理 推特" target="_blank" ref="nofollow"></a></li>
								<li><a href=https://help.icook.tw/hc/zh-tw/signin
									class="col-xs-12 btn-report"><span>建議與問題</span></a></li>
							</ul>
						</div>
						<div class="col-xs-12 col-md-8 pull-right">
							<div class="footer-links hidden-xs">
								<h4>關於愛料理</h4>
								<ul class="pull-left">
									<li><a
										href="https://newsroom.icook.tw/info?ref=icook-footer"
										rel="nofollow" target="_blank">公司資訊</a></li>
									<li><a
										href="https://newsroom.icook.tw/jobs?ref=icook-footer"
										rel="nofollow" target="_blank">徵才訊息</a>
									<li><a
										href="https://newsroom.icook.tw/contacts/new?ref=icook-footer"
										rel="nofollow" target="_blank">廣告合作</a></li>
									<li><a
										href="https://newsroom.icook.tw/downloads?ref=icook-footer"
										rel="nofollow" target="_blank">品牌資產</a></li>
									<li><a rel="nofollow" target="_blank"
										href="https://newsroom.icook.tw/terms?ref=icook-footer">服務條款</a>
									</li>
									<li><a rel="nofollow" target="_blank"
										href="https://newsroom.icook.tw/privacy?ref=icook-footer">隱私權政策</a>
									</li>
								</ul>
							</div>
							<div class="footer-links hidden-xs">
								<h4>會員服務</h4>
								<ul>
									<li><a
										href="/users/264217527369594/favorites?ref=icook-footer">我的收藏</a></li>
									<li><a href="/users/264217527369594">個人首頁</a></li>
									<li><a href="/settings?ref=icook-footer">帳號設定</a></li>
									<li><a href="/forgot_password?ref=icook-footer">忘記密碼</a></li>
									<li><a
										href="https://market.icook.tw/orders?ref=icook-footer">我的訂單</a></li>
									<li><a href="/vip?ref=icook-footer">VIP 會員</a></li>
								</ul>
							</div>
							<div class="footer-links hidden-xs">
								<h4>逛食譜</h4>
								<ul class="pull-left">
									<li><a href="/recipes/popular?ref=icook-footer">熱門食譜</a></li>
									<li><a href="/recipes/latest?ref=icook-footer">新到食譜</a></li>
									<li><a href="/categories?ref=icook-footer">全部分類</a></li>
								</ul>
							</div>
							<div class="footer-links hidden-xs">
								<h4>逛其他</h4>
								<ul class="pull-left">
									<li><a href="https://blog.icook.tw/?ref=icook-footer"
										rel="nofollow">生活誌</a></li>
									<li><a href="https://atcooking.icook.tw/?ref=icook-footer"
										rel="nofollow">享樂誌</a></li>
									<li><a href="https://tv.icook.tw/?ref=icook-footer"
										rel="nofollow">影音</a></li>
									<li><a href="https://market.icook.tw/?ref=icook-footer"
										rel="nofollow">市集</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		
		
	</div>



	<script src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>


</body>
</html>