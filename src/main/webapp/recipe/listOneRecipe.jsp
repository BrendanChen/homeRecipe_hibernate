<%@page import="org.hibernate.sql.InFragment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="com.recipe.model.*"%>
<%@ page import="com.ingredient.model.*"%>
<%@ page import="com.step.model.*"%>

<%@ page import="java.util.*"%>

<%@ page import="java.lang.reflect.Array"%>

<%@ page import="domain.IngreList"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String rcpSeq = (String) request.getAttribute("rcp_seq");

	RecipeVO recipeData = new RecipeVO();

	recipeData.setRcpSeq(rcpSeq);

	RcpServiceImpl rcpServiceImpl = new RcpServiceImpl();

	RecipeVO recipeVO = rcpServiceImpl.findByPk(recipeData);

	pageContext.setAttribute("recipeVO", recipeVO);

	//查詢有幾組食材
	IngreServiceImpl impl = new IngreServiceImpl();
	List<Integer> groupNoList = impl.findHowManyGroup(recipeVO.getRcpSeq());

	IngreList<List<IngredientVO>> ingreList = new IngreList<List<IngredientVO>>();

	List<IngredientVO> list = null;

	for (Integer groupNoData : groupNoList) {

		list = new ArrayList<IngredientVO>();
		list = impl.findByPkGroupByGroupNo(recipeVO.getRcpSeq(), groupNoData);

		if (list != null) {

			ingreList.setGroupName(list.get(0).getGroupName());
		}

		ingreList.add(list);
	}

	pageContext.setAttribute("ingreList", ingreList);

	//查詢食譜步驟
	StepServiceImpl serviceImpl = new StepServiceImpl();

	List<StepVO> stepList = serviceImpl.findByPrimaryKey(recipeVO.getRcpSeq());

	pageContext.setAttribute("stepList", stepList);
%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/application-1fa3a0ccddc9796a97bfe34b33c1fe658fd9595388375228d97cc068fd93863e.css" />
<link rel="stylesheet" media="all"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/homepage-4e9c2c6b556d0f4b69591165e75499980f763ebb8dd71e13fc65c0c3d813ebf1.css" />
<link rel="icon" sizes="any" mask
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/icook_safari_pinned-1599538523bca201185b6bef7e12712785470bef099fcd60ad68e5d7b496a9af.svg">
<link rel="shortcut icon" type="image/x-icon"
	href="https://d3kjtz7uyul5bi.cloudfront.net/assets/favicon-9db8e01cf53a999c927c95b0e479f8b609bd7eed5d9120f16eb49e4a6df9f1dc.ico" />


</head>
<body>

	<jsp:include page="/head.jsp" />

	<div align="center">
		<jsp:include page="/searchBar.jsp" />
	</div>

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-md-8">

				<article class="inner-block recipe-detail" itemscope
					itemtype="http://schema.org/Recipe" data-recipe-id="196840"
					data-views-count="40563" data-favorites-count="4943">
					<h1 itemprop="name">${recipeVO.rName}</h1>
					<div class="row">
						<div class="col-xs-12">
							<div class="info">
								<span class="print"> <a rel="nofollow" target="_blank"
									href="">列印</a>
								</span> <a href="#" class="line-share-button"> <img height="20"
									width="84"
									src="https://d3kjtz7uyul5bi.cloudfront.net/assets/linebutton_84x20_zh-hant-953cb05f2e68b4ceaeb5b7ca3f086bb74dfec54c3f62c6aa112c9c75f5ffe59b.png"
									alt="Linebutton 84x20 zh hant" />
								</a>

								<div class="fb-like" data-href=https://icook.tw/recipes/196840
									data-layout="button" data-action="like" data-show-faces="false"
									data-share="false"></div>
							</div>
						</div>
						<div class="col-xs-12 col-md-8">
							<div class="picture-frame">
								<a class="strip" data-strip-group="recipe-imgs"
									data-strip-caption="養樂多凍起司蛋糕（5吋、免烤箱）"
									href="https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg">

									<%
										byte[] encodeBase64 = Base64.getEncoder().encode(recipeVO.getPhoto());
										String base64Encoded = new String(encodeBase64, "UTF-8");
										pageContext.setAttribute("base64Encoded", base64Encoded);
									%> <img class="main-pic" alt="養樂多凍起司蛋糕（5吋、免烤箱）"
									itemprop="image" src="data:image/jpeg;base64,${base64Encoded}" />
								</a>
							</div>
							<div class="row func">
								<div class="col-xs-12 col-sm-6 col-md-7 meta recipe-stat-meta">
									<span class="fav-count recipe-favorites" data-id="196840"
										data-count="4943" data-hasToolTip=true>4,943 </span> <span
										class="comments-count count-tooltip" data-count="34"
										data-title="34 則留言"> 留言 34 </span> <br /> <span
										class="dishes-count count-tooltip" data-count="16"
										data-title="16 人跟著做">有 <a href="#recommends"
										class="highlight">16</a> 人跟著做 <span class="avatars"> <a
											href="#recommends"> <img class="avatar img-circle"
												src="https://graph.facebook.com/100000310850641/picture?width=150&amp;height=150"
												alt="Picture?width=150&amp;height=150" /> <img
												class="avatar img-circle"
												src="https://graph.facebook.com/1283953308285011/picture?width=150&amp;height=150"
												alt="Picture?width=150&amp;height=150" /> <img
												class="avatar img-circle"
												src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
												alt="Default avatar" />
										</a>
									</span>
									</span>
								</div>
								<div
									class="col-xs-12 col-sm-6 col-md-5 text-right social-buttons recipe-funcs"
									data-loginUrl="/login" data-pressed="false"
									data-recipe="{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;cover&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;}"
									data-toggleUrl="/recipes/196840/favorites"></div>
							</div>
							<div class="recipe-description">
								<div itemprop="description">
									<p>${recipeVO.note}</p>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-4">
							<div class="meta recipe-metas"></div>
							<div class="recipe-ingredients">
								<h3 class="clearfix">食材</h3>
								<div class="ingredients">
									<div class="group group-0"></div>

									<c:forEach items="${ingreList}" var="ingreList"
										varStatus="theCount">

										<div class="group group-${theCount.count}">

											<div class="group-name">${ingreList[0].groupName}</div>

											<c:forEach items="${ingreList}" var="elements">
												<div class="clearfix ingredient" itemprop="ingredients">
													<span class="pull-left ingredient-name">${elements.iName}</span>
													<span class="pull-right ingredient-unit">${elements.quantity}</span>
												</div>
											</c:forEach>

										</div>

									</c:forEach>

								</div>
							</div>
						</div>
					</div>

					<div class="recipe-steps">
						<div class="steps">
							<ul itemprop="recipeInstructions">

								<c:forEach items="${stepList}" var="stepList">

									<li class="step">
										<div class="media">

											<c:if test="${not empty stepList.photo}">

												<div class="step-img pull-left">
													<a class="strip" data-strip-group="recipe-imgs" href="">

														<c:if test="${not empty stepList.photo}">

															<img alt=""
																src="<%= request.getContextPath()%>/images/step/${stepList.rcpSeq}/${stepList.photo}" />

														</c:if>

													</a>
												</div>

											</c:if>
											
											<div class="media-body">
												<big>${stepList.stepNo}</big> ${stepList.detail}
											</div>
										</div>
									</li>

								</c:forEach>


							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 text-left">
							<div
								style="font-size: 14px; white-space: nowrap; overflow: hidden; width: 100%; line-height: 28px; margin-top: -10px;">
								<span class="badge-support pull-left">贊助</span>
								<div class="adunit" data-adunit="iCook_Recipe_Bottom_Text"
									data-dimensions="250x25"
									data-targeting="{&quot;recipe&quot;:196840}"></div>
							</div>
						</div>
					</div>
					<div class="notes">
						<h3>小撇步</h3>
						<div>
							<p>
								💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。 <br>💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。
								<br>（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意） <br>💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。
							</p>
						</div>
					</div>
					<div class="meta meta-bottom">
						<meta itemprop="datePublished" content="2017-04-12">
						<span class="timestamp" datetime="2017-04-12"> 2017/04/12
							發表 </span> <span class="views-count count-tooltip" data-count="40563">
							4.1 萬 瀏覽 </span>
					</div>
				</article>

				<div class="recipe-show ad adunit"
					style="text-align: center; margin: 0 auto 10px;"
					data-adunit="iCook_Recipe_Bottom" data-size-mapping="main"
					data-targeting="{&quot;recipe&quot;:196840}"></div>

				<div class="row">
					<div class="col-xs-12">
						<div class="inner-block recommends" id="recommends">
							<h3>有 16 人跟著做</h3>
							<div id="dish-routes" class="clearfix"
								data-defaultPhoto=https://d3kjtz7uyul5bi.cloudfront.net/assets/default/dish-placeholder-c27e5192ddfed424e4e7eeeaff1dd70036513f39fea3ad3256c83208f1e5306a.jpg
								data-from="recipes#show" data-fromUrl=/recipes/196840
								data-info="{&quot;dishes_count&quot;:16,&quot;page&quot;:1,&quot;has_next_page&quot;:true,&quot;has_previous_page&quot;:false,&quot;dishes&quot;:[{&quot;id&quot;:285914,&quot;description&quot;:&quot;終於有我可以成功的甜點了😂😂&quot;,&quot;created_at&quot;:&quot;2017-04-20T11:04:05+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-20T12:08:17+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/y9Iip-3pdaQAGN2zxues5yp2GXE=/360x360/uploads/dish/photo/285914/00b31f43391fe9c0.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/ZbLVJ-FSr_P4kkJ-iPtIgJrqj8s=/1080x1080/uploads/dish/photo/285914/00b31f43391fe9c0.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-20T12:08:17+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;1283953308285011&quot;,&quot;nickname&quot;:&quot;yu&quot;,&quot;avatar_url&quot;:&quot;https://graph.facebook.com/1283953308285011/picture?width=150&amp;height=150&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285763,&quot;description&quot;:&quot;好吃，但覺得養樂多凍的部若軟一點，整個口感會更好，所以第二次我將吉利丁粉的量減少1/3,但還是覺得可以再軟一點，下次會再試試。雖然是這樣，家人也都吃光光&quot;,&quot;created_at&quot;:&quot;2017-04-19T14:44:54+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-19T14:47:16+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/YpOj9yHI0vOBdxflUw5a9B8XnIM=/360x360/uploads/dish/photo/285763/4ebdb715dd011aa8.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/3782RVcxKnNYFKrGFh4qjHCBbrw=/1080x1080/uploads/dish/photo/285763/4ebdb715dd011aa8.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-19T14:47:16+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;Kellyfly940&quot;,&quot;nickname&quot;:&quot;kelly&quot;,&quot;avatar_url&quot;:&quot;https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285704,&quot;description&quot;:&quot;好吃^_^&quot;,&quot;created_at&quot;:&quot;2017-04-19T02:08:42+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-19T02:38:38+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/hCH7SMpRvVb-qGlpdMQ1NHrUezw=/360x360/uploads/dish/photo/285704/ca5a939aaebd365d.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/9wW035545Pml90NkOdSZ8U-_VFA=/1080x1080/uploads/dish/photo/285704/ca5a939aaebd365d.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-19T02:38:38+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;100000310850641&quot;,&quot;nickname&quot;:&quot;Nian YuJhang&quot;,&quot;avatar_url&quot;:&quot;https://graph.facebook.com/100000310850641/picture?width=150&amp;height=150&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285551,&quot;description&quot;:&quot;養樂多凍太硬(非常Q)，相對蛋糕太軟，口味很好，非常好吃&quot;,&quot;created_at&quot;:&quot;2017-04-18T11:15:36+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-18T11:50:23+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/WDxPrCwE4GrtalIWr-s98vyPjak=/360x360/uploads/dish/photo/285551/9353e6c882ffcbea.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/eGmxeV4h7qpwMOsK73g8-irwHAk=/1080x1080/uploads/dish/photo/285551/9353e6c882ffcbea.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-18T11:50:23+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;jillelin628&quot;,&quot;nickname&quot;:&quot;Jille Lin&quot;,&quot;avatar_url&quot;:&quot;https://graph.facebook.com/10203192004954587/picture?width=150&amp;height=150&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285417,&quot;description&quot;:&quot;真的很好吃~~&quot;,&quot;created_at&quot;:&quot;2017-04-17T20:25:26+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-17T21:16:25+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/Pb7rSz4FvPK9Jiyd6Mqr2QdGnDg=/360x360/uploads/dish/photo/285417/39dc09af2c5d7347.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/gLdNzaXR6VkbmzgmXe36CFOqJqA=/1080x1080/uploads/dish/photo/285417/39dc09af2c5d7347.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-17T21:16:25+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;100001916134069&quot;,&quot;nickname&quot;:&quot;韋欣妤&quot;,&quot;avatar_url&quot;:&quot;https://graph.facebook.com/100001916134069/picture?width=150&amp;height=150&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285334,&quot;description&quot;:&quot;超適合夏天的甜點&quot;,&quot;created_at&quot;:&quot;2017-04-17T15:01:13+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-17T15:17:52+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/FkFxCOrm-NQ4eGAtwYnfEU_S4_8=/360x360/uploads/dish/photo/285334/06fb294eded7fec9.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/Y6nzMCpRUejveza8fLcz-Nt5ckQ=/1080x1080/uploads/dish/photo/285334/06fb294eded7fec9.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;👍&quot;,&quot;created_at&quot;:&quot;2017-04-17T15:17:52+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;monester0718&quot;,&quot;nickname&quot;:&quot;萱&quot;,&quot;avatar_url&quot;:&quot;https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}},{&quot;id&quot;:285270,&quot;description&quot;:&quot;好不容易完成的作品&quot;,&quot;created_at&quot;:&quot;2017-04-17T08:51:21+08:00&quot;,&quot;updated_at&quot;:&quot;2017-04-17T11:13:43+08:00&quot;,&quot;photos&quot;:{&quot;square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/KmOaSKKlecNLUpcHP8sQehUjrek=/360x360/uploads/dish/photo/285270/349e848df566aa57.jpg&quot;},&quot;large_square&quot;:{&quot;url&quot;:&quot;https://d20fsb0kunocn0.cloudfront.net/LhSgSjtINcOXJzRMSEBBX3q7yHs=/1080x1080/uploads/dish/photo/285270/349e848df566aa57.jpg&quot;}},&quot;reply&quot;:{&quot;reply&quot;:&quot;還不賴耶👍還好還救得回來😅&quot;,&quot;created_at&quot;:&quot;2017-04-17T11:13:43+08:00&quot;,&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;arashi1020&quot;,&quot;nickname&quot;:&quot;arashi&quot;,&quot;avatar_url&quot;:&quot;https://graph.facebook.com/1193565767398137/picture?width=150&amp;height=150&quot;},&quot;recipe&quot;:{&quot;id&quot;:196840,&quot;name&quot;:&quot;養樂多凍起司蛋糕（5吋、免烤箱）&quot;,&quot;servings&quot;:0,&quot;time&quot;:0,&quot;tips&quot;:&quot;💡要用塊狀的奶油乳酪(cream cheese)，不要用到奶油乳酪抹醬，會太甜而且質地太軟。\n💡沒有5吋模具也沒關係，用其他尺寸的模具做，蛋糕只是會比較扁。\n（我喜歡用5吋模做，因為量少可以趁新鮮吃完，做出來的蛋糕小巧又夠高，看起來很滿意）\n💡若是要用洋菜粉，做法跟吉利t類似，克數要少一半。&quot;,&quot;published_at&quot;:&quot;2017-04-12T22:27:40+08:00&quot;,&quot;vip&quot;:false,&quot;description&quot;:&quot;養樂多是一種活菌發酵乳，含有對人體腸道有益健康的乳酸菌，香港俗稱\&quot;益力多\&quot;，用養樂多來做起司蛋糕，讓甜點變得健康又美味^_^&quot;,&quot;url&quot;:&quot;https://icook.tw/recipes/196840&quot;,&quot;views_count&quot;:40563,&quot;favorites_count&quot;:4943,&quot;dishes_count&quot;:16,&quot;comments_count&quot;:34,&quot;cover_picture&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;cover&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/d9607f70b1203ecb.jpg&quot;,&quot;large&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/large_d9607f70b1203ecb.jpg&quot;},&quot;medium&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/medium_d9607f70b1203ecb.jpg&quot;},&quot;small&quot;:{&quot;url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/recipe/cover/196840/small_d9607f70b1203ecb.jpg&quot;}},&quot;user&quot;:{&quot;username&quot;:&quot;819558861456696&quot;,&quot;nickname&quot;:&quot;❤️手上路&quot;,&quot;avatar_image_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;,&quot;avatar_url&quot;:&quot;https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg&quot;}}}]}"
								data-isMobile="false" data-loginUrl=/login
								data-newCardImg=https://d3kjtz7uyul5bi.cloudfront.net/assets/default/setting-head-7830fbc8357a6239b0008f812c962997feee1527ef7ca02afe431e292e1c11af.jpg
								data-url=/recipes/196840/dishes
								data-user="{&quot;username&quot;:&quot;264217527369594&quot;,&quot;nickname&quot;:&quot;陳偉翔&quot;,&quot;avatar&quot;:&quot;https://graph.facebook.com/264217527369594/picture?width=150&amp;height=150&quot;,&quot;token&quot;:&quot;oOg9sGJPKU1TE6ZTEKVRvHCRpQChBPYjh44BYoZRfeXxxap8LW3wgWUz7eQFrp7QqCeNB5NPC73y5LsWuzGg8A==&quot;,&quot;is_admin&quot;:false}"></div>
							<a class="to-dishes" href="/recipes/196840/dishes">看全部料理</a>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-12">
						<div class="inner-block recipe-comments-block">
							<h3>
								討論<span>共 34 則</span>
							</h3>
							<div data-hypernova-key="CommentFormWithFlux"
								data-hypernova-id="be3638a9-835c-4cb1-b177-eb2df90f0bbb">
								<div class="recipe-comment-form" data-reactroot=""
									data-reactid="1" data-react-checksum="-2045968271">
									<form class="form-horizontal" data-reactid="2">
										<fieldset data-reactid="3">
											<div class="media" data-reactid="4">
												<div class="pull-left hidden-xs" data-reactid="5">
													<img alt="user_avatar"
														class="img-responsive img-circle user-img"
														src="https://graph.facebook.com/264217527369594/picture?width=150&amp;height=150"
														data-reactid="6" />
												</div>
												<div class="media-body" data-reactid="7">
													<div class="form-group required maxlen" data-reactid="8">
														<label for="message"
															class="control-label required maxlen hidden"
															data-reactid="9"></label>
														<textarea class="form-control required maxlen"
															placeholder="加入討論..." name="message" rows="2" cols="10"
															required="" maxlength="400" data-reactid="10"></textarea>
														<div class="help-block" data-reactid="11">
															<span class="" data-reactid="12">剩餘400個字</span>
														</div>
													</div>
													<div class="form-actions clearfix" data-reactid="13">
														<div class="pull-left" data-reactid="14">
															<p class="notice" data-reactid="15">
																<!-- react-text: 16 -->
																發佈即代表已知悉並詳閱「
																<!-- /react-text -->
																<a href="http://newsroom.icook.tw/terms" target="_blank"
																	rel="noopener noreferrer" data-reactid="17">愛料理服務條款</a>
																<!-- react-text: 18 -->
																」之規範。
																<!-- /react-text -->
															</p>
														</div>
														<button class="btn btn-login pull-right" disabled=""
															type="submit" data-reactid="19">確定送出</button>
													</div>
												</div>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
							<script type="application/json"
								data-hypernova-key="CommentFormWithFlux"
								data-hypernova-id="be3638a9-835c-4cb1-b177-eb2df90f0bbb"><!--{"defaultAvatar":"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png","user":"{\"username\":\"264217527369594\",\"nickname\":\"陳偉翔\",\"avatar\":\"https://graph.facebook.com/264217527369594/picture?width=150&amp;height=150\",\"token\":\"ERLlu3NN3V29DCjpC5HIdzJ0YNBKCcVZ/wfoNpgxMyNAP3J3PG8EkYssY14emgcb6sJI13hCOMeKbVJCpVHuNg==\",\"is_admin\":false}","loginUrl":"/login","url":"/recipes/196840/comments","fluxInitObj":"{\"page\":1,\"comments_count\":34,\"recipe\":{\"id\":196840,\"name\":\"養樂多凍起司蛋糕（5吋、免烤箱）\",\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}},\"comments\":[{\"id\":127957,\"message\":\"謝謝妳！😊感恩\",\"created_at\":\"2017-04-20T23:16:44+08:00\",\"user\":{\"username\":\"Linda322\",\"nickname\":\"Linda\",\"avatar_image_url\":\"https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150\"},\"comment_replies\":[]},{\"id\":127946,\"message\":\"請問去哪裏買5吋的模？\",\"created_at\":\"2017-04-20T22:11:13+08:00\",\"user\":{\"username\":\"Linda322\",\"nickname\":\"Linda\",\"avatar_image_url\":\"https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127956,\"message\":\"你可以參考：烤模_5吋活動蛋糕模(硬膜)_SN5011◎5吋.硬膜.活動.蛋糕.壽糕.甜點.點心.膜具.烤模.不沾\\nhttps://tw.bid.yahoo.com/item/100083728380\",\"created_at\":\"2017-04-20T23:15:09+08:00\",\"parent_id\":127946,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127876,\"message\":\"不好意思，我問題很多，怕做錯所以一直問\\n洋菜粉跟洋菜條用量都是吉利T的一半對嗎？\\n上面的養樂多凍有辦法用洋菜條來做嗎？\",\"created_at\":\"2017-04-20T17:08:22+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127892,\"message\":\"是的^_^，養樂多凍若也要用洋菜粉來做，液體要加熱至90度，室溫即凝固，所以動作要快。\",\"created_at\":\"2017-04-20T17:52:04+08:00\",\"parent_id\":127876,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127853,\"message\":\"請問養樂多凍加吉利丁片還需隔水加熱嗎？還是泡冰水軟後直接拌入？\",\"created_at\":\"2017-04-20T14:50:33+08:00\",\"user\":{\"username\":\"cute0315\",\"nickname\":\"李明明\",\"avatar_image_url\":\"https://graph.facebook.com/10202488837142548/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127870,\"message\":\"隔水融化加入^_^\",\"created_at\":\"2017-04-20T16:57:19+08:00\",\"parent_id\":127853,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127851,\"message\":\"所以洋菜條克數用量跟吉利丁粉一樣對嗎？\",\"created_at\":\"2017-04-20T14:40:32+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127869,\"message\":\"請看小撇步。\",\"created_at\":\"2017-04-20T16:56:51+08:00\",\"parent_id\":127851,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127840,\"message\":\"想請問可以用洋菜條嗎？如何使用呢？\",\"created_at\":\"2017-04-20T13:40:42+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127842,\"message\":\"請看步驟21。\",\"created_at\":\"2017-04-20T13:53:44+08:00\",\"parent_id\":127840,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127444,\"message\":\"這款蛋糕賣相很好，有養樂多味的乳酪，好吃哦！但我家小孩說上面的養樂多凍太硬，請問可以將吉力丁粉少個幾克，會不會比較軟Q?\",\"created_at\":\"2017-04-18T16:08:44+08:00\",\"user\":{\"username\":\"a0935554538\",\"nickname\":\"小玉姐姐\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127446,\"message\":\"我的比例是1:6，你可以試一試用1:5的比例去試做看看，因為我自己吃起來覺得剛好，這需要你自己去做看看囉^_^你可以試試用3g的吉利丁粉配上150g的養樂多會軟很多，但是脫模就不會那麽漂亮喔\",\"created_at\":\"2017-04-18T16:39:21+08:00\",\"parent_id\":127444,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127358,\"message\":\"請問吉利丁片是泡水弄幹後直接加入（冷的）奶油糊中即可嗎？不用加熱嗎？\",\"created_at\":\"2017-04-18T10:08:35+08:00\",\"user\":{\"username\":\"100000323795351\",\"nickname\":\"陳佩玉\",\"avatar_image_url\":\"https://graph.facebook.com/100000323795351/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127373,\"message\":\"直接加入即可^_^也可以隔水加熱至液體\",\"created_at\":\"2017-04-18T11:12:05+08:00\",\"parent_id\":127358,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127340,\"message\":\"請問若是底部也要脫膜該如何處理呢？\",\"created_at\":\"2017-04-18T08:13:44+08:00\",\"user\":{\"username\":\"1020685227302467\",\"nickname\":\"Ady Wang\",\"avatar_image_url\":\"https://graph.facebook.com/10206852273024672/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127357,\"message\":\"可以用抹刀插入底部，延著底部慢慢的劃過一圈即可。（或是舖烘焙紙也可以省去脫模）\",\"created_at\":\"2017-04-18T10:03:35+08:00\",\"parent_id\":127340,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127233,\"message\":\"老師，我看到你說鮮奶油換成鮮奶要10g吉利t, 如果是洋菜粉就是5g對嗎？\",\"created_at\":\"2017-04-17T17:58:05+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127267,\"message\":\"答對了^_^\",\"created_at\":\"2017-04-17T21:12:47+08:00\",\"parent_id\":127233,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]}]}"}--></script>

							<div class="panel-group recipe-comments" id="accordion">
								<div class="panel">
									<div class="panel-heading">
										<a href="#collapseComments" class="visible-xs visible-sm"
											data-toggle="collapse" data-parent="#accordion"
											id="more-comment">看更多留言</a>
									</div>
									<div data-hypernova-key="ListWithFlux"
										data-hypernova-id="02f9d797-7156-45f6-8ff0-5e969c20f43b">
										<div class="panel-collapse" id="collapseComments"
											data-reactroot="" data-reactid="1"
											data-react-checksum="606729023">
											<div class="panel-body" data-reactid="2">
												<div data-reactid="3">
													<div id="comment-127957" class="media comment clearfix"
														data-reactid="4">
														<!-- react-empty: 5 -->
														<div data-reactid="6">
															<a class="pull-left" href="/users/Linda322/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="7"><img
																class="img-responsive img-circle user-img"
																src="https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150"
																alt="user_avatar" data-reactid="8" /></a>
															<div class="media-body" data-reactid="9">
																<div class="info" data-reactid="10">
																	<div class="author" data-reactid="11">
																		<a href="/users/Linda322/" target="_blank"
																			rel="noopener noreferrer" data-reactid="12">Linda</a>
																	</div>
																	<div class="body" data-reactid="13">
																		<div class="message" data-reactid="14">
																			<p>謝謝妳！😊感恩</p>
																		</div>
																		<span class="timestamp" data-reactid="15">15
																			小時前</span>
																	</div>
																	<button class="report-msg" data-reactid="16"></button>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127946" class="media comment clearfix"
														data-reactid="17">
														<!-- react-empty: 18 -->
														<div data-reactid="19">
															<a class="pull-left" href="/users/Linda322/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="20"><img
																class="img-responsive img-circle user-img"
																src="https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150"
																alt="user_avatar" data-reactid="21" /></a>
															<div class="media-body" data-reactid="22">
																<div class="info" data-reactid="23">
																	<div class="author" data-reactid="24">
																		<a href="/users/Linda322/" target="_blank"
																			rel="noopener noreferrer" data-reactid="25">Linda</a>
																	</div>
																	<div class="body" data-reactid="26">
																		<div class="message" data-reactid="27">
																			<p>請問去哪裏買5吋的模？</p>
																		</div>
																		<span class="timestamp" data-reactid="28">16
																			小時前</span>
																	</div>
																	<button class="report-msg" data-reactid="29"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="30">
																	<!-- react-empty: 31 -->
																	<div data-reactid="32">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="33"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="34" /></a>
																		<div class="media-body" data-reactid="35">
																			<div class="info" data-reactid="36">
																				<div class="author" data-reactid="37">作者回應</div>
																				<div class="body" data-reactid="38">
																					<div class="message" data-reactid="39">
																						<p>
																							你可以參考：烤模_5吋活動蛋糕模(硬膜)_SN5011◎5吋.硬膜.活動.蛋糕.壽糕.甜點.點心.膜具.烤模.不沾<br />
																							<a
																								href="https:&#x2F;&#x2F;tw.bid.yahoo.com&#x2F;item&#x2F;100083728380"
																								target="_blank">https:&#x2F;&#x2F;tw.bid.yahoo.com&#x2F;item&#x2F;100083728380</a>
																						</p>
																					</div>
																					<span class="timestamp" data-reactid="40">15
																						小時前</span>
																				</div>
																				<button class="report-msg" data-reactid="41"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127876" class="media comment clearfix"
														data-reactid="42">
														<!-- react-empty: 43 -->
														<div data-reactid="44">
															<a class="pull-left" href="/users/shan3163/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="45"><img
																class="img-responsive img-circle user-img"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
																alt="user_avatar" data-reactid="46" /></a>
															<div class="media-body" data-reactid="47">
																<div class="info" data-reactid="48">
																	<div class="author" data-reactid="49">
																		<a href="/users/shan3163/" target="_blank"
																			rel="noopener noreferrer" data-reactid="50">珊珊兒</a>
																	</div>
																	<div class="body" data-reactid="51">
																		<div class="message" data-reactid="52">
																			<p>
																				不好意思，我問題很多，怕做錯所以一直問<br />洋菜粉跟洋菜條用量都是吉利T的一半對嗎？<br />上面的養樂多凍有辦法用洋菜條來做嗎？
																			</p>
																		</div>
																		<span class="timestamp" data-reactid="53">21
																			小時前</span>
																	</div>
																	<button class="report-msg" data-reactid="54"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="55">
																	<!-- react-empty: 56 -->
																	<div data-reactid="57">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="58"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="59" /></a>
																		<div class="media-body" data-reactid="60">
																			<div class="info" data-reactid="61">
																				<div class="author" data-reactid="62">作者回應</div>
																				<div class="body" data-reactid="63">
																					<div class="message" data-reactid="64">
																						<p>是的^_^，養樂多凍若也要用洋菜粉來做，液體要加熱至90度，室溫即凝固，所以動作要快。</p>
																					</div>
																					<span class="timestamp" data-reactid="65">20
																						小時前</span>
																				</div>
																				<button class="report-msg" data-reactid="66"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127853" class="media comment clearfix"
														data-reactid="67">
														<!-- react-empty: 68 -->
														<div data-reactid="69">
															<a class="pull-left" href="/users/cute0315/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="70"><img
																class="img-responsive img-circle user-img"
																src="https://graph.facebook.com/10202488837142548/picture?width=150&amp;height=150"
																alt="user_avatar" data-reactid="71" /></a>
															<div class="media-body" data-reactid="72">
																<div class="info" data-reactid="73">
																	<div class="author" data-reactid="74">
																		<a href="/users/cute0315/" target="_blank"
																			rel="noopener noreferrer" data-reactid="75">李明明</a>
																	</div>
																	<div class="body" data-reactid="76">
																		<div class="message" data-reactid="77">
																			<p>請問養樂多凍加吉利丁片還需隔水加熱嗎？還是泡冰水軟後直接拌入？</p>
																		</div>
																		<span class="timestamp" data-reactid="78">1 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="79"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="80">
																	<!-- react-empty: 81 -->
																	<div data-reactid="82">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="83"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="84" /></a>
																		<div class="media-body" data-reactid="85">
																			<div class="info" data-reactid="86">
																				<div class="author" data-reactid="87">作者回應</div>
																				<div class="body" data-reactid="88">
																					<div class="message" data-reactid="89">
																						<p>隔水融化加入^_^</p>
																					</div>
																					<span class="timestamp" data-reactid="90">21
																						小時前</span>
																				</div>
																				<button class="report-msg" data-reactid="91"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127851" class="media comment clearfix"
														data-reactid="92">
														<!-- react-empty: 93 -->
														<div data-reactid="94">
															<a class="pull-left" href="/users/shan3163/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="95"><img
																class="img-responsive img-circle user-img"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
																alt="user_avatar" data-reactid="96" /></a>
															<div class="media-body" data-reactid="97">
																<div class="info" data-reactid="98">
																	<div class="author" data-reactid="99">
																		<a href="/users/shan3163/" target="_blank"
																			rel="noopener noreferrer" data-reactid="100">珊珊兒</a>
																	</div>
																	<div class="body" data-reactid="101">
																		<div class="message" data-reactid="102">
																			<p>所以洋菜條克數用量跟吉利丁粉一樣對嗎？</p>
																		</div>
																		<span class="timestamp" data-reactid="103">1 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="104"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="105">
																	<!-- react-empty: 106 -->
																	<div data-reactid="107">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="108"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="109" /></a>
																		<div class="media-body" data-reactid="110">
																			<div class="info" data-reactid="111">
																				<div class="author" data-reactid="112">作者回應</div>
																				<div class="body" data-reactid="113">
																					<div class="message" data-reactid="114">
																						<p>請看小撇步。</p>
																					</div>
																					<span class="timestamp" data-reactid="115">21
																						小時前</span>
																				</div>
																				<button class="report-msg" data-reactid="116"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127840" class="media comment clearfix"
														data-reactid="117">
														<!-- react-empty: 118 -->
														<div data-reactid="119">
															<a class="pull-left" href="/users/shan3163/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="120"><img
																class="img-responsive img-circle user-img"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
																alt="user_avatar" data-reactid="121" /></a>
															<div class="media-body" data-reactid="122">
																<div class="info" data-reactid="123">
																	<div class="author" data-reactid="124">
																		<a href="/users/shan3163/" target="_blank"
																			rel="noopener noreferrer" data-reactid="125">珊珊兒</a>
																	</div>
																	<div class="body" data-reactid="126">
																		<div class="message" data-reactid="127">
																			<p>想請問可以用洋菜條嗎？如何使用呢？</p>
																		</div>
																		<span class="timestamp" data-reactid="128">1 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="129"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="130">
																	<!-- react-empty: 131 -->
																	<div data-reactid="132">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="133"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="134" /></a>
																		<div class="media-body" data-reactid="135">
																			<div class="info" data-reactid="136">
																				<div class="author" data-reactid="137">作者回應</div>
																				<div class="body" data-reactid="138">
																					<div class="message" data-reactid="139">
																						<p>請看步驟21。</p>
																					</div>
																					<span class="timestamp" data-reactid="140">1
																						天前</span>
																				</div>
																				<button class="report-msg" data-reactid="141"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127444" class="media comment clearfix"
														data-reactid="142">
														<!-- react-empty: 143 -->
														<div data-reactid="144">
															<a class="pull-left" href="/users/a0935554538/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="145"><img
																class="img-responsive img-circle user-img"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
																alt="user_avatar" data-reactid="146" /></a>
															<div class="media-body" data-reactid="147">
																<div class="info" data-reactid="148">
																	<div class="author" data-reactid="149">
																		<a href="/users/a0935554538/" target="_blank"
																			rel="noopener noreferrer" data-reactid="150">小玉姐姐</a>
																	</div>
																	<div class="body" data-reactid="151">
																		<div class="message" data-reactid="152">
																			<p>這款蛋糕賣相很好，有養樂多味的乳酪，好吃哦！但我家小孩說上面的養樂多凍太硬，請問可以將吉力丁粉少個幾克，會不會比較軟Q?</p>
																		</div>
																		<span class="timestamp" data-reactid="153">3 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="154"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="155">
																	<!-- react-empty: 156 -->
																	<div data-reactid="157">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="158"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="159" /></a>
																		<div class="media-body" data-reactid="160">
																			<div class="info" data-reactid="161">
																				<div class="author" data-reactid="162">作者回應</div>
																				<div class="body" data-reactid="163">
																					<div class="message" data-reactid="164">
																						<p>我的比例是1:6，你可以試一試用1:5的比例去試做看看，因為我自己吃起來覺得剛好，這需要你自己去做看看囉^_^你可以試試用3g的吉利丁粉配上150g的養樂多會軟很多，但是脫模就不會那麽漂亮喔</p>
																					</div>
																					<span class="timestamp" data-reactid="165">3
																						天前</span>
																				</div>
																				<button class="report-msg" data-reactid="166"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127358" class="media comment clearfix"
														data-reactid="167">
														<!-- react-empty: 168 -->
														<div data-reactid="169">
															<a class="pull-left" href="/users/100000323795351/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="170"><img
																class="img-responsive img-circle user-img"
																src="https://graph.facebook.com/100000323795351/picture?width=150&amp;height=150"
																alt="user_avatar" data-reactid="171" /></a>
															<div class="media-body" data-reactid="172">
																<div class="info" data-reactid="173">
																	<div class="author" data-reactid="174">
																		<a href="/users/100000323795351/" target="_blank"
																			rel="noopener noreferrer" data-reactid="175">陳佩玉</a>
																	</div>
																	<div class="body" data-reactid="176">
																		<div class="message" data-reactid="177">
																			<p>請問吉利丁片是泡水弄幹後直接加入（冷的）奶油糊中即可嗎？不用加熱嗎？</p>
																		</div>
																		<span class="timestamp" data-reactid="178">3 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="179"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="180">
																	<!-- react-empty: 181 -->
																	<div data-reactid="182">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="183"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="184" /></a>
																		<div class="media-body" data-reactid="185">
																			<div class="info" data-reactid="186">
																				<div class="author" data-reactid="187">作者回應</div>
																				<div class="body" data-reactid="188">
																					<div class="message" data-reactid="189">
																						<p>直接加入即可^_^也可以隔水加熱至液體</p>
																					</div>
																					<span class="timestamp" data-reactid="190">3
																						天前</span>
																				</div>
																				<button class="report-msg" data-reactid="191"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127340" class="media comment clearfix"
														data-reactid="192">
														<!-- react-empty: 193 -->
														<div data-reactid="194">
															<a class="pull-left" href="/users/1020685227302467/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="195"><img
																class="img-responsive img-circle user-img"
																src="https://graph.facebook.com/10206852273024672/picture?width=150&amp;height=150"
																alt="user_avatar" data-reactid="196" /></a>
															<div class="media-body" data-reactid="197">
																<div class="info" data-reactid="198">
																	<div class="author" data-reactid="199">
																		<a href="/users/1020685227302467/" target="_blank"
																			rel="noopener noreferrer" data-reactid="200">Ady
																			Wang</a>
																	</div>
																	<div class="body" data-reactid="201">
																		<div class="message" data-reactid="202">
																			<p>請問若是底部也要脫膜該如何處理呢？</p>
																		</div>
																		<span class="timestamp" data-reactid="203">3 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="204"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="205">
																	<!-- react-empty: 206 -->
																	<div data-reactid="207">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="208"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="209" /></a>
																		<div class="media-body" data-reactid="210">
																			<div class="info" data-reactid="211">
																				<div class="author" data-reactid="212">作者回應</div>
																				<div class="body" data-reactid="213">
																					<div class="message" data-reactid="214">
																						<p>可以用抹刀插入底部，延著底部慢慢的劃過一圈即可。（或是舖烘焙紙也可以省去脫模）</p>
																					</div>
																					<span class="timestamp" data-reactid="215">3
																						天前</span>
																				</div>
																				<button class="report-msg" data-reactid="216"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div id="comment-127233" class="media comment clearfix"
														data-reactid="217">
														<!-- react-empty: 218 -->
														<div data-reactid="219">
															<a class="pull-left" href="/users/shan3163/"
																rel="noopener noreferrer" target="_blank"
																data-reactid="220"><img
																class="img-responsive img-circle user-img"
																src="https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png"
																alt="user_avatar" data-reactid="221" /></a>
															<div class="media-body" data-reactid="222">
																<div class="info" data-reactid="223">
																	<div class="author" data-reactid="224">
																		<a href="/users/shan3163/" target="_blank"
																			rel="noopener noreferrer" data-reactid="225">珊珊兒</a>
																	</div>
																	<div class="body" data-reactid="226">
																		<div class="message" data-reactid="227">
																			<p>老師，我看到你說鮮奶油換成鮮奶要10g吉利t, 如果是洋菜粉就是5g對嗎？</p>
																		</div>
																		<span class="timestamp" data-reactid="228">4 天前</span>
																	</div>
																	<button class="report-msg" data-reactid="229"></button>
																</div>
																<div class="media comment reply-comment"
																	data-reactid="230">
																	<!-- react-empty: 231 -->
																	<div data-reactid="232">
																		<a href="/users/819558861456696/" class="pull-left"
																			data-reactid="233"><img
																			class="img-responsive img-circle user-img"
																			alt="user_avatar"
																			src="https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg"
																			data-reactid="234" /></a>
																		<div class="media-body" data-reactid="235">
																			<div class="info" data-reactid="236">
																				<div class="author" data-reactid="237">作者回應</div>
																				<div class="body" data-reactid="238">
																					<div class="message" data-reactid="239">
																						<p>答對了^_^</p>
																					</div>
																					<span class="timestamp" data-reactid="240">4
																						天前</span>
																				</div>
																				<button class="report-msg" data-reactid="241"></button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-reactid="242">
													<a href="#" class="load-more" data-reactid="243">看更多留言</a>
												</div>
											</div>
										</div>
									</div>
									<script type="application/json"
										data-hypernova-key="ListWithFlux"
										data-hypernova-id="02f9d797-7156-45f6-8ff0-5e969c20f43b"><!--{"defaultAvatar":"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png","user":"{\"username\":\"264217527369594\",\"nickname\":\"陳偉翔\",\"avatar\":\"https://graph.facebook.com/264217527369594/picture?width=150&amp;height=150\",\"token\":\"XZnNh0RnS6AW5N3x/VAxFmv8VCdrMNNn4u0XojoMfLcMtFpLC0WSbCDElkboW/56s0p8IFl7LvmXh63WB2yhog==\",\"is_admin\":false}","loadUrl":"/recipes/196840/comments","commentUrl":"/comments/:id","isMobile":null,"fluxInitObj":"{\"page\":1,\"comments_count\":34,\"recipe\":{\"id\":196840,\"name\":\"養樂多凍起司蛋糕（5吋、免烤箱）\",\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}},\"comments\":[{\"id\":127957,\"message\":\"謝謝妳！😊感恩\",\"created_at\":\"2017-04-20T23:16:44+08:00\",\"user\":{\"username\":\"Linda322\",\"nickname\":\"Linda\",\"avatar_image_url\":\"https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150\"},\"comment_replies\":[]},{\"id\":127946,\"message\":\"請問去哪裏買5吋的模？\",\"created_at\":\"2017-04-20T22:11:13+08:00\",\"user\":{\"username\":\"Linda322\",\"nickname\":\"Linda\",\"avatar_image_url\":\"https://graph.facebook.com/1628700167146842/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127956,\"message\":\"你可以參考：烤模_5吋活動蛋糕模(硬膜)_SN5011◎5吋.硬膜.活動.蛋糕.壽糕.甜點.點心.膜具.烤模.不沾\\nhttps://tw.bid.yahoo.com/item/100083728380\",\"created_at\":\"2017-04-20T23:15:09+08:00\",\"parent_id\":127946,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127876,\"message\":\"不好意思，我問題很多，怕做錯所以一直問\\n洋菜粉跟洋菜條用量都是吉利T的一半對嗎？\\n上面的養樂多凍有辦法用洋菜條來做嗎？\",\"created_at\":\"2017-04-20T17:08:22+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127892,\"message\":\"是的^_^，養樂多凍若也要用洋菜粉來做，液體要加熱至90度，室溫即凝固，所以動作要快。\",\"created_at\":\"2017-04-20T17:52:04+08:00\",\"parent_id\":127876,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127853,\"message\":\"請問養樂多凍加吉利丁片還需隔水加熱嗎？還是泡冰水軟後直接拌入？\",\"created_at\":\"2017-04-20T14:50:33+08:00\",\"user\":{\"username\":\"cute0315\",\"nickname\":\"李明明\",\"avatar_image_url\":\"https://graph.facebook.com/10202488837142548/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127870,\"message\":\"隔水融化加入^_^\",\"created_at\":\"2017-04-20T16:57:19+08:00\",\"parent_id\":127853,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127851,\"message\":\"所以洋菜條克數用量跟吉利丁粉一樣對嗎？\",\"created_at\":\"2017-04-20T14:40:32+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127869,\"message\":\"請看小撇步。\",\"created_at\":\"2017-04-20T16:56:51+08:00\",\"parent_id\":127851,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127840,\"message\":\"想請問可以用洋菜條嗎？如何使用呢？\",\"created_at\":\"2017-04-20T13:40:42+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127842,\"message\":\"請看步驟21。\",\"created_at\":\"2017-04-20T13:53:44+08:00\",\"parent_id\":127840,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127444,\"message\":\"這款蛋糕賣相很好，有養樂多味的乳酪，好吃哦！但我家小孩說上面的養樂多凍太硬，請問可以將吉力丁粉少個幾克，會不會比較軟Q?\",\"created_at\":\"2017-04-18T16:08:44+08:00\",\"user\":{\"username\":\"a0935554538\",\"nickname\":\"小玉姐姐\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127446,\"message\":\"我的比例是1:6，你可以試一試用1:5的比例去試做看看，因為我自己吃起來覺得剛好，這需要你自己去做看看囉^_^你可以試試用3g的吉利丁粉配上150g的養樂多會軟很多，但是脫模就不會那麽漂亮喔\",\"created_at\":\"2017-04-18T16:39:21+08:00\",\"parent_id\":127444,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127358,\"message\":\"請問吉利丁片是泡水弄幹後直接加入（冷的）奶油糊中即可嗎？不用加熱嗎？\",\"created_at\":\"2017-04-18T10:08:35+08:00\",\"user\":{\"username\":\"100000323795351\",\"nickname\":\"陳佩玉\",\"avatar_image_url\":\"https://graph.facebook.com/100000323795351/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127373,\"message\":\"直接加入即可^_^也可以隔水加熱至液體\",\"created_at\":\"2017-04-18T11:12:05+08:00\",\"parent_id\":127358,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127340,\"message\":\"請問若是底部也要脫膜該如何處理呢？\",\"created_at\":\"2017-04-18T08:13:44+08:00\",\"user\":{\"username\":\"1020685227302467\",\"nickname\":\"Ady Wang\",\"avatar_image_url\":\"https://graph.facebook.com/10206852273024672/picture?width=150&amp;height=150\"},\"comment_replies\":[{\"id\":127357,\"message\":\"可以用抹刀插入底部，延著底部慢慢的劃過一圈即可。（或是舖烘焙紙也可以省去脫模）\",\"created_at\":\"2017-04-18T10:03:35+08:00\",\"parent_id\":127340,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]},{\"id\":127233,\"message\":\"老師，我看到你說鮮奶油換成鮮奶要10g吉利t, 如果是洋菜粉就是5g對嗎？\",\"created_at\":\"2017-04-17T17:58:05+08:00\",\"user\":{\"username\":\"shan3163\",\"nickname\":\"珊珊兒\",\"avatar_image_url\":\"https://d3kjtz7uyul5bi.cloudfront.net/assets/default/default_avatar-1f70d6bebb0559fd2233ee49343a8f1e847c2e8a7bf394f743962a2863c54f1d.png\"},\"comment_replies\":[{\"id\":127267,\"message\":\"答對了^_^\",\"created_at\":\"2017-04-17T21:12:47+08:00\",\"parent_id\":127233,\"user\":{\"username\":\"819558861456696\",\"nickname\":\"❤️手上路\",\"avatar_image_url\":\"https://dbjdsnch130xu.cloudfront.net/uploads/user/avatar/964507/thumb_8d506a5ca2b33d37.jpg\"}}]}]}"}--></script>
								</div>
							</div>

						</div>

					</div>
				</div>

				<div class="rl-modal" data-adunit="iCook_Recipe_Interstitial"
					data-dimensions="300x250,320x480" style="display: none"></div>
			</div>
		</div>
	</div>



	<script src="<%=request.getContextPath()%>/js/jquery-3.2.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

</body>
</html>