<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/main/header.jsp" %>


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
									<a href="/board/content/${boardlist.boardSeq}"><img src="../images/Lostimgs/${boardlist.category}" alt="IMG-PRODUCT"></a>
								</c:if>
							</div>


							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
								<span class="m-r-3">
									<c:if test="${ empty loginUser && empty klogin}">
										<a href="/user/login"><span class="cl5">${boardlist.boardSub}</span></a>
									</c:if>
					           		<c:if test="${ (!empty loginUser && empty kakaologout_url) || (!empty klogin && !empty kakaologout_url)}">
										<a href="/board/content/${boardlist.boardSeq}"><span class="cl5">${boardlist.boardSub}</span></a>
									</c:if>
								</span>
<%--
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"></a>
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"></a>
--%>

									<span class="stext-105 cl3">
									<i class="zmdi zmdi-calendar"></i>&nbsp;${boardlist.date}
								</span>
									<span class="cl4"><i class="zmdi zmdi-pin"></i>&nbsp;${boardlist.place}</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
								<%--	<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<c:if test="${boardlist.boardGroup!='lost'}">
											<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
										</c:if>
										<c:if test="${boardlist.boardGroup=='find'}">
											<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
										</c:if>
									</a>--%>
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

	<%@ include file="/WEB-INF/view/main/footer.jsp" %>
