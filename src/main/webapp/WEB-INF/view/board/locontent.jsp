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
		
	<link rel="stylesheet" href="/css/beryllium/style.css">
	<link rel="stylesheet" href="/css/beryllium/themify-icons.css">
	<link rel="stylesheet" href="/css/topmenu.css">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/images/coza/icons/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="/vendor/coza/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/fonts/coza/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/fonts/coza/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="/fonts/coza/linearicons-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/MagnificPopup/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="/vendor/coza/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="/css/coza/util.css">
	<link rel="stylesheet" type="text/css" href="/css/coza/main.css">
	
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
						<img src="/images/003-.png" alt="IMG-LOGO">
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
										<a href="../gxsx/login.do">Login</a></li>
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
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.do" class="stext-109 cl8 hov-cl1 trans-04">
				홈
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="list.do" class="stext-109 cl8 hov-cl1 trans-04">
				분실물
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				${locontent.board_sub}
			</span>
		</div>
	</div>

	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<%--	<div class="slick3 gallery-lb">
                                <c:forEach items="${boardcontant}" var="boardcontant">
                                    <div class="item-slick3" data-thumb="../images/Lostimgs/">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="../images/Lostimgs/" alt="IMG-PRODUCT">

                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>

							</div>--%>
						</div>
					</div>
				</div>

				<span id="boardSeq" class="boardSeq" name="boardSeq">
					${boardcontant.boardSeq}
				</span>
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
							${boardcontant.board_sub}
						</h4>
						<ul class="p-lr-28 p-lr-15-sm">
							<li class="flex-w flex-t p-b-7">
								<span class="stext-102 cl3 size-205">
									날짜
								</span>

								<span class="stext-102 cl6 size-206">
									${boardcontant.date}
								</span>
							</li>

							<li class="flex-w flex-t p-b-7">
								<span class="stext-102 cl3 size-205">
									분실장소
								</span>

								<span class="stext-102 cl6 size-206" id="place">
									${area}  ${boardcontant.place}
								</span>
							</li>

							<li class="flex-w flex-t p-b-7">
								<span class="stext-102 cl3 size-205">
									보상여부
								</span>

								<span class="stext-102 cl6 size-206">
									<c:if test="${boardcontant.board_group==0}">
										<span class="stext-102 cl6 size-206">
											없음
										</span>
									</c:if>
									<c:if test="${boardcontant.board_group==1}">
										<span class="stext-102 cl6 size-206">
											있음
										</span>
									</c:if>
								</span>
							</li>

							<li class="flex-w flex-t p-b-7">
								<span class="stext-102 cl3 size-205">
									글내용
								</span>

								<span class="stext-102 cl6 size-206">
								<div style="word-break:break-all">
									${boardcontant.content}
								</div></span>
							</li>
						</ul>

						<!-- botton -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="flex-w flex-r-m p-b-10">
								<c:if test="${(loginUser eq boardcontant.user.userid)}">
									<a href="/board/edit/${boardcontant.boardSeq}"><button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"onclick="boardEdit()">
									수정
									</button>
										</c:if></a></div>
								<div class="flex-w flex-r-m p-b-10">
								<c:if test="${loginUser eq boardcontant.user.userid}">
									<%--<a href="/board/api/delete/${boardcontant.boardSeq}">--%><button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" onclick="boardDelete()">
										삭제
									</button>
								</c:if>
									</div>
								<%--<c:if test="${loginUser.equals('mondaygirl')}">
									<a href="/board/api/delete/${boardcontant.boardSeq}"><button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
										삭제
									</button></a>
								</c:if>--%>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a id="comment_toggle" class="nav-link active" data-toggle="tab" href="#description" role="tab">Comment (0)</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
								<div class="flex-w flex-t p-b-68" id="lost_comment_list">
									<c:forEach var="comments" items="${boardcontant.comments}" varStatus="status">


										<div class="size-207" id="comment_${comments.comment_seq}" style="margin-left:100px">
											<div class="flex-w flex-sb-m p-b-17" style="justify-content: unset">
												<span class="mtext-107 cl2 p-r-20">
													${boardcontant.user.userid}
													<span class="stext-102 cl6">&nbsp;
														${comments.date} </span>
												</span>

												<span class="fs-18 cl11">
												<c:if test="${loginUser eq boardcontant.user.userid }">
													<c:if test="${!empty loginUser}">
														<button id="btn${comments.comment_seq}"  type="button" onclick="update_form_id(this.value);" value="${comments.comment_seq}" class="stext-109 cl8 hov-cl1 trans-04">수정</button>
														<button id="btndel${comments.comment_seq}" type="button" id="comment_seq"onclick="commentDelete('${comments.comment_seq}', '${ comments.seq }');" value="${comments.comment_seq}" class="stext-109 cl8 hov-cl1 trans-04" >삭제</button>

													</c:if>
												</c:if>
																				<!-- <a href="#" class="stext-109 cl8 hov-cl1 trans-04"><i class="zmdi zmdi-mail-reply"></i></a>  -->
												</span>
											</div>

											<div id="update-form-${comments.comment_seq}">
												<p class="stext-102 cl6">
													<c:out value="${ comments.content }" escapeXml="true"/>
												</p>
											</div>
											<br/>
										</div>

									</c:forEach>

								</div>

								<!-- Add review -->
								<form class="w-full">

									<div class="row p-b-25">
										<div class="col-12 p-b-5">
										<label id="reply_to"></label>
											<label class="stext-102 cl3" for="review">댓글 작성</label>
											<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
										</div>
									</div>
									<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10"
											type="button" onclick="commentInsert('${boardcontant.boardSeq}');">
										등록
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">

		</div>
	</section>


	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">
					<img src="../images/최근게시물.png">
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<c:forEach var="related" items="${related}" varStatus="status">
						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<a href="../lostitem/locontent.do?lono=${related.lono}" >
									<img src="../images/Lostimgs/${related.lopicname}" alt="IMG-PRODUCT"></a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											${related.lodate}
										</a>

										<span class="stext-105 cl3">
											<a href="../lostitem/locontent.do?lono=${related.lono}" class="cl3" >${related.losub}</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
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
							<img src="../images/003-w.png" >
						</h4>

					</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						CATEGORIES
					</h4>

						<ul>
							<li class="p-b-10">
								<a href="../gxsx/notice.do" class="stext-107 cl7 hov-cl1 trans-04">
									Notice
								</a>
							</li>

							<li class="p-b-10">
								<a href="../finditem/list.do?cp=1" class="stext-107 cl7 hov-cl1 trans-04">
									Finditem
								</a>
							</li>

							<li class="p-b-10">
								<a href="../lostitem/list.do?cp=1" class="stext-107 cl7 hov-cl1 trans-04">
									Lostitem
								</a>
							</li>
						</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						CONTACT US
					</h4>

					<p class="stext-107 cl7 size-201">
						<i class="fa fa-home"></i> 서울 마포구 백범로 23 구프라자 3층,
						<br/>&nbsp;&nbsp;&nbsp; (지번)신수동 63-14 구프라자 3층
					</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-phone"></i> 02-707-1480
					</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-envelope"></i> javaoneteam@gmail.com

					</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						BUSINESS HOURS
					</h4>

					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Weekdays : </span>
						<span>9am to 8pm</span>
					</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Saturday &nbsp; : </span>
						<span>9am to 2pm</span>
					</p>
					<p class="stext-107 cl7 size-201">
						<i class="fa fa-clock-o"></i> <span class="day">Sunday &nbsp; &nbsp; : </span>
						<span>Closed</span>
					</p>
				</div>
			</div>

			<p class="stext-107 cl6 txt-center">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | by Sansillyung <i class="fa fa-heart-o" aria-hidden="true"></i>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>

	<!-- ////////////////////////////////////// footer 종료 ////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->


	<%--<!-- Back to top -->
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
								<c:forEach items="${locontent}" var="locontent">
									<div class="item-slick3" data-thumb="../images/Lostimgs/${locontent.lopicname }">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/Lostimgs/${locontent.lopicname}" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
									</c:forEach>

<!-- 									<div class="item-slick3" data-thumb="images/product-detail-02.jpg"> -->
<!-- 										<div class="wrap-pic-w pos-relative"> -->
<!-- 											<img src="../images/coza/product-detail-02.jpg" alt="IMG-PRODUCT"> -->

<!-- 											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg"> -->
<!-- 												<i class="fa fa-expand"></i> -->
<!-- 											</a> -->
<!-- 										</div> -->
<!-- 									</div> -->

<!-- 									<div class="item-slick3" data-thumb="images/product-detail-03.jpg"> -->
<!-- 										<div class="wrap-pic-w pos-relative"> -->
<!-- 											<img src="../images/coza/product-detail-03.jpg" alt="IMG-PRODUCT"> -->

<!-- 											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg"> -->
<!-- 												<i class="fa fa-expand"></i> -->
<!-- 											</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
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
	</div>--%>

<!--===============================================================================================-->
	<script src="/vendor/coza/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/bootstrap/js/popper.js"></script>
	<script src="/vendor/coza/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/vendor/coza/daterangepicker/moment.min.js"></script>
	<script src="/vendor/coza/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/slick/slick.min.js"></script>
	<script src="/js/coza/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/vendor/coza/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script src="/vendor/coza/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/coza/sweetalert/sweetalert.min.js"></script>
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
	<script src="/vendor/coza/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script src="/js/coza/main.js"></script>

	<!-- 자바스크립트  -->
	<script src="/js/tempjs/LoComments.js"></script>
	<script>

		commentList("${ boardcontant.boardSeq }");

			function boardDelete(){

			$.ajax({
			type:"GET",
			url:"/board/api/delete/"+$("#boardSeq").html(),
			contentType: 'application/json',
			dataType: 'text',
			success: function(data){
				alert("게시물이 지워졌습니다.")
			location.href='/board/'
		},
			error: function(data){
			alert("애러");
		}
		});
		}


	</script>
</body>
</html>