<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="keywords" content="sansillyung, gxsx, bitcamp">
		<meta name="description" content="sansillyung - GxSx">
		<meta name="author" content="sansillyung">
		
		<title>GxSx</title>
		
	<link rel="stylesheet" href="../static/css/beryllium/style.css">
	<link rel="stylesheet" href="../css/beryllium/themify-icons.css">
	<link rel="stylesheet" href="../css/topmenu.css">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../images/coza/icons/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="../vendor/coza/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/coza/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/coza/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/coza/linearicons-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/animsition/css/animsition.min.css">
<%--
	<link rel="stylesheet" type="text/css" href="../vendor/coza/select2/select2.min.css">
--%>
	<link rel="stylesheet" type="text/css" href="../vendor/coza/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/MagnificPopup/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="../vendor/coza/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="../css/coza/util.css">
	<link rel="stylesheet" type="text/css" href="../css/coza/main.css">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/lightpick.css">
	
	<style>
	</style>
</head>

<body class="animsition">
	
	<!-- Header -->	
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- ////////////////////////////////////// 맨 위 메뉴 시작 ////////////////////////////////////// -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="/" class="logo">
						<img src="../images/003-.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="/">Home</a>
							</li>

							<li>
								<a href="../gxsx/notice.do?cp=1">Notice</a>
							</li>

							<li class="label1" data-label1="습득물">
								<a href="../finditem/list.do?cp=1">Finditem</a>
							</li>

							<li class="label1" data-label1="분실물">
								<a href="/board/">Lostitem</a>
							</li>
							<li>
								 <a href="../gxsx/contact.do">Contact</a>								 
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<ul class="main-menu">					
							<c:if test="${ empty loginUser && empty klogin}">
									<li><i class="zmdi zmdi-account-circle"></i>
										<a href="/user/login">Login</a></li>
							</c:if>
							<c:if test="${ !empty loginUser }">
								<li class="dropdown">
							        <li class="dropdown">
							          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							          <i class="ti-bell"></i>(<b>${messageResult.size()}</b>)</a>
							          <c:choose>
							          	<c:when test="${messageResult=='[]'}">
							          		<ul class="dropdown-menu notify-drop" style="right:350px;min-width:100px;max-height:30px">
								            		<div class="drop-content" data-tooltip="tooltip" data-placement="top" style="min-height:10px">
										            	<li><center><div class="col-md-9 col-sm-9 col-xs-9 pd-l0" style="margin-left:15px;">
										            		알람 없음</div></center>
										            	</li>
									            	</div>
									            </ul>
							          	</c:when>
							          	<c:otherwise>
								          	<ul class="dropdown-menu notify-drop" style="right:350px">
									          	<div class="drop-content" data-tooltip="tooltip" data-placement="top">
									          		<c:forEach items="${messageResult}" var="messageResult" varStatus="status" begin="0" end="4">
										            	<li><div class="col-md-9 col-sm-9 col-xs-9 pd-l0" style="margin-left:15px;min-width:250px">
										            		<a href="../Question/questionco.do?qno=${messageResult.qno}">${messageResult.qsub}</a>
										            		<p style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 250px">${messageResult.qcon}</p>
										            		<p class="time">답변완료</p></div>
										            	</li>
										            </c:forEach>
									            </div>
								            </ul>
							          	</c:otherwise>
							          </c:choose>
						            </li>
							    </li>
						    </c:if>
								
						<c:if test="${ !empty loginUser || !empty klogin }">
							<li class="dropdown">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="ti-user"></i></a>
					          <ul class="dropdown-menu notify-drop" style="min-width:150px">
					            <div class="drop-content" data-tooltip="tooltip" data-placement="top" style="min-height:50px; overflow:hidden">							            
					            	<li><div>&nbsp;&nbsp;
											<i class="ti-bookmark-alt"></i>&nbsp;&nbsp;<a href="../Users/mypage.do">마이페이지</a>
					            		</div></li>
					            	<li><div>&nbsp;&nbsp;
					            			<i class="ti-headphone-alt"></i>&nbsp;&nbsp;<a href="../gxsx/contact.do">고객센터</a>
					            		</div></li>
					            	<li><div>&nbsp;&nbsp;
						            		<i class="ti-power-off"></i>
						            		<c:if test="${ empty loginUser && empty klogin}">
						            			&nbsp;<a href="">로그아웃</a>
						            		</c:if>
						            		<c:if test="${ !empty loginUser && empty kakaologout_url}">
												&nbsp;<a href="/user/logout">로그아웃</a>
											</c:if>
											<c:if test="${!empty klogin && !empty kakaologout_url}">
												&nbsp;<a href="${kakaologout_url}">로그아웃</a>
											</c:if>
					            		</div></li>
					             </div>
						      </ul>
							</li>
						</c:if>	
						</ul>			
					</div>
				</nav>
			</div>	
		</div>
	</header>
	<!-- ////////////////////////////////////// 맨 위 메뉴 종료 ////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- /////////////////////////////////////// 컨텐츠 시작  /////////////////////////////////////// -->

	<!-- Product -->
	<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					L o s t I t e m
				</h3>
			</div>

			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10"></div>
								
				<div class="flex-w flex-c-m m-tb-10">
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Search
					</div>
				</div>

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								달력
							</div>
							
							<div id="examples" class="mt-5">
		                       <div class="row">
	                                <div class="col-md-5">
	                                    <p id="result-2" name="result-2" style="opacity: 0">&nbsp;</p>
	                                    <input type="text" id="demo-2" class="form-control form-control-sm" autocomplete="off" style="width:250px"/>
	                           		</div>
	                     		</div>
							</div>
						</div>

						<div class="filter-col2 p-r-15 p-b-27" style="width: 33%;">
							<div class="mtext-102 cl2 p-b-15">
								지역
							</div>
						<div class="flex-w p-t-4 m-r--5">
								<a id="area--1" href="#" onclick="selectArea(this, -1);" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									전체</a>
							</div>
							<div class="flex-w p-t-4 m-r--5">
								<c:forEach items="${ area }" var="area">
								<a id="area-${ area.ano }" href="#" onclick="selectArea(this, '${area.ano}');" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									${ area.acity }</a>
								</c:forEach>
							</div>
						</div>

						<div class="filter-col4 p-b-27" style="width: 40%;">
							<div class="mtext-102 cl2 p-b-15">
								종류
							</div>
							<div class="flex-w p-t-4 m-r--5">
								<c:forEach items="${ category }" var="category" varStatus="index">
									<a id="category-${ index.index }" href="#" onclick="selectTag('${index.index}', this);" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
										${ category.cname }</a>
								</c:forEach>
							</div>
						</div>
						
						<div class="w-full">
							<!-- Search product -->
							<div class="bor8 dis-flex p-l-15" style="background-color:white" >
								<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04" id="btnsearch" onclick="searchAction(1, true);" type="button">
									<i class="zmdi zmdi-search"></i>
								</button>
								<input class="mtext-107 cl2 size-114 plh2 p-r-15 w-full" type="text" name="query" id="query" value="${ query }" 
									onkeyup="selectSub();" onkeypress="enterkey()" placeholder="검색" autocomplete="off">
							</div>
							</br>
						</div>
											
					</div>					
				</div>
			</div>

			<!-- AJAX-SEARCH -->
			<div class="row isotope-grid">

				<c:if test="${empty boardlist}">
					<center>데이터가 하나도 없음</center>
				</c:if>

				<c:forEach items="${boardlist}" var="boardlist">
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<c:if test="${ empty loginUser && empty klogin}">
									<a href="/user/login"><img src="../images/Lostimgs/${boardlist.category}" alt="IMG-PRODUCT"></a>
								</c:if>
								<c:if test="${ (!empty loginUser && empty kakaologout_url) || (!empty klogin && !empty kakaologout_url)}">
									<a href="/board/content/${boardlist.board_seq}"><img src="../images/Lostimgs/${boardlist.category}" alt="IMG-PRODUCT"></a>
								</c:if>
							</div>


							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
								<span class="m-r-3">
									<c:if test="${ empty loginUser && empty klogin}">
										<a href="/user/login"><span class="cl5">${boardlist.board_sub}</span></a>
									</c:if>
					           		<c:if test="${ (!empty loginUser && empty kakaologout_url) || (!empty klogin && !empty kakaologout_url)}">
										<a href="/board/content/${boardlist.board_seq}"><span class="cl5">${boardlist.board_sub}</span></a>
									</c:if>
								</span>
<%--
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"></a>
--%>

									<span class="stext-105 cl3">
									<i class="zmdi zmdi-calendar"></i>&nbsp;${boardlist.date}
								</span>
									<span class="cl4"><i class="zmdi zmdi-pin"></i>&nbsp;${boardlist.place}</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<c:if test="${boardlist.boardGroup!=0}">
											<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
										</c:if>
										<c:if test="${boardlist.boardGroup==0}">
											<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
										</c:if>
									</a>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>

			</div>

			<div class="btn-nextprev">
				<c:if test="${ lostResult.paging.currentPage != 1 }">
					<button class="arrow-slick3 prev-slick3 slick-arrow" style=""
							onclick="searchAction('${lostResult.paging.prevPage}', false);">
						<i class="fa fa-angle-left" aria-hidden="true"></i></button>
				</c:if>
				<c:if test="${ lostResult.paging.currentPage != lostResult.paging.pageCount }">
					<button class="arrow-slick3 next-slick3 slick-arrow" style=""
							onclick="searchAction('${lostResult.paging.nextPage}', false);">
						<i class="fa fa-angle-right" aria-hidden="true"></i></button>
				</c:if>
			</div>

			<!-- Pagination -->
			<div class="flex-c-m flex-w w-full p-t-38" id="paging">
				<c:if test="${ lostResult.paging.startPage != 1 }">
					<p class="flex-c-m how-pagination1 trans-04 m-all-7" onclick="searchAction('${ lostResult.paging.startPage-1 }',false);">&#171;</p>
				</c:if>

				<c:forEach begin="${ lostResult.paging.startPage }" end="${ lostResult.paging.endPage }" var="i">
					<c:choose>
						<c:when test="${ lostResult.paging.currentPage == i }">
							<p class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"
							   onclick="searchAction('${i}', false);">${i}</p>
						</c:when>
						<c:otherwise>
							<p class="flex-c-m how-pagination1 trans-04 m-all-7"
							   onclick="searchAction('${i}', false);">${i}</p>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${ lostResult.paging.endPage != lostResult.paging.pageCount }">
					<p class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"
					   onclick="searchAction('${lostResult.paging.endPage+1}', false);">
						&#187;</p>
				</c:if>
			</div>
			
			<a href="/board/write" class="cl6 hov-btn3">
				<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4" 
					style="width:94px;height:40px;float:right;margin-top:-106px;margin-right:102px">
						글쓰기
				</div>
			</a>
			
		</div>
	</section>
	<!-- /////////////////////////////////////// 컨텐츠 종료  /////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- ////////////////////////////////////// footer 시작 ////////////////////////////////////// -->

	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
			
				<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30" style="font-size:100px">
							GxSx
						</h4>
				</div>
				
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						CATEGORIES
					</h4>					
						<ul>
							<li class="p-b-10">
								<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
									Finditem
								</a></li>
							<li class="p-b-10">
								<a href="/board/" class="stext-107 cl7 hov-cl1 trans-04">
									Lostitem
								</a></li>
						</ul> 
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						CONTACT US
					</h4>

					<p class="stext-107 cl7 size-201">
						<i class="fa fa-home"></i> 3422 Street, Barcelona 432, Spain, 
						<br/>&nbsp;&nbsp;&nbsp; New Building North, 15th Floor</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-phone"></i> +101 377 655 22125</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-envelope"></i> mail@yourcompany.com</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i></a>
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i></a>
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i></a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						BUSINESS HOURS
					</h4>

					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Weekdays : </span>
						<span>9am to 8pm</span></p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Saturday &nbsp; : </span>
						<span>9am to 2pm</span></p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Sunday &nbsp; &nbsp; : </span>
						<span>Closed</span></p>
				</div>
			</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>
	
	<!-- ////////////////////////////////////// footer 종료 ////////////////////////////////////// -->	
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/coza/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/coza/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/coza/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->	
	<script src="../vendor/coza/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/coza/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/coza/bootstrap/js/popper.js"></script>
	<script src="../vendor/coza/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<%--	<script src="../vendor/coza/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>--%>
<!--===============================================================================================-->
	<script src="../vendor/coza/daterangepicker/moment.min.js"></script>
	<script src="../vendor/coza/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/coza/slick/slick.min.js"></script>
	<script src="../js/coza/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/coza/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="../vendor/coza/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="../vendor/coza/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/coza/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script>
<!--===============================================================================================-->
	<script src="../vendor/coza/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="../js/coza/main.js"></script>
	<script async src="https://buttons.github.io/buttons.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script src="https://unpkg.com/lightpick@latest/lightpick.js"></script>
    <script src="../js/demo.js"></script>
<%--
    <script src="../js/losearch.js"></script>
--%>
    <script>

    </script>
</body>
</html>