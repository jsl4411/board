<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/header.jsp" %>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" style="margin-top: -38px">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="../images/slide_5.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="../images/slide_6.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="../images/slide_4.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="../images/slide_1.png" class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- ////////////////////////////////////// 광고 배너 종료  ////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- /////////////////////////////////////// 습득물 시작  /////////////////////////////////////// -->

	<section class="sec-blog bg0 p-t-60 p-b-90">
		<div class="container">
			<div class="p-b-66">
				<h3 class="ltext-105 cl5 txt-center respon1" style="float:center">
					<img src="../images/습득물01.png">
				</h3>
				<a href="../finditem/list.do?cp=1" style="float:right;color:#1b252f"><img src="../images/더보기.png"></a>
			</div>

			<div class="row">
				<c:if test="${empty findResult}">
					습득물 없음
				</c:if>
				<c:forEach items="${findResult}" var="finditem" varStatus="status">
					<div class="col-sm-6 col-md-4 p-b-40">
						<div class="block2">
							<div class="block2-pic hov-img0">
								<c:if test="${empty loginuser && empty usercheck}"> <!-- 로그인 안되어있을때 로그인창으로-->
									<a href="login.do">
								</c:if>
								<c:if test="${!empty loginuser && empty usercheck}"> <!-- 로그인 되어있을때 상세페이지 이동 가능-->
									<a href="../finditem/content.do?fino=${finditem.fino}">
								</c:if>
								<c:if test="${empty loginuser && !empty usercheck}"> <!-- 카카오로 로그인했는데 개인정보 등록 전일때 추가페이지 이동-->
									<a href="tempsignupform.do">
								</c:if>
									<img src="../images/Findimgs/${findpicResult[status.index].fipicname}" alt="IMG-FIND">
								</a>
							</div>
	
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<span class="m-r-3">
										<c:if test="${empty loginuser && empty usercheck}"> <!-- 로그인 안되어있을때 로그인창으로-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="login.do">${finditem.fisub}</a>
										</c:if>
										<c:if test="${!empty loginuser && empty usercheck}"> <!-- 로그인 되어있을때 상세페이지 이동 가능-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="../finditem/content.do?fino=${finditem.fino}">${finditem.fisub}</a>
										</c:if>
										<c:if test="${empty loginuser && !empty usercheck}"> <!-- 카카오로 로그인했는데 개인정보 등록 전일때 추가페이지 이동-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="tempsignupform.do">${finditem.fisub}</a>
										</c:if>
									</span>
									<span class="stext-105 cl3">
										<i class="zmdi zmdi-calendar"></i>&nbsp;${finditem.fidate}
									</span>
									<span class="cl4"><i class="zmdi zmdi-pin"></i>&nbsp;${finditem.fiplace}</span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>	
	<!-- /////////////////////////////////////// 습득물 종료  /////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- /////////////////////////////////////// 분실물 시작  /////////////////////////////////////// -->
	<section class="sec-blog bg0 p-t-60 p-b-90">
		<div class="container">
			<div class="p-b-66">
				<h3 class="ltext-105 cl5 txt-center respon1" style="float:center">
					<img src="../images/분실물01.png">
				</h3>
				<a href="../lostitem/list.do?cp=1" style="float:right;color:#1b252f"><img src="../images/더보기.png"></a>
			</div>

			<div class="row">
				<c:if test="${empty lostResult}">
					분실물 없음
				</c:if>
				<c:forEach items="${lostResult}" var="lostitem" varStatus="status">
					<div class="col-sm-6 col-md-4 p-b-40">
						<div class="block2">
							<div class="block2-pic hov-img0">
								<c:if test="${empty loginuser && empty usercheck}"> <!-- 로그인 안되어있을때 로그인창으로-->
									<a href="login.do">
								</c:if>
								<c:if test="${!empty loginuser && empty usercheck}"> <!-- 로그인 되어있을때 상세페이지 이동 가능-->
									<a href="../lostitem/locontent.do?lono=${lostitem.lono}">
								</c:if>
								<c:if test="${empty loginuser && !empty usercheck}"> <!-- 카카오로 로그인했는데 개인정보 등록 전일때 추가페이지 이동-->
									<a href="tempsignupform.do">
								</c:if>
									<img src="../images/Lostimgs/${lostpicResult[status.index].lopicname}" alt="IMG-FIND">
								</a>
							</div>
	
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<span class="m-r-3">
										<c:if test="${empty loginuser && empty usercheck}"> <!-- 로그인 안되어있을때 로그인창으로-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="login.do">${lostitem.losub}</a>
										</c:if>
										<c:if test="${!empty loginuser && empty usercheck}"> <!-- 로그인 되어있을때 상세페이지 이동 가능-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="../lostitem/locontent.do?lono=${lostitem.lono}">${lostitem.losub}</a>
										</c:if>
										<c:if test="${empty loginuser && !empty usercheck}"> <!-- 카카오로 로그인했는데 개인정보 등록 전일때 추가페이지 이동-->
											<a class="mtext-101 cl2 hov-cl1 trans-04" href="tempsignupform.do">${lostitem.losub}</a>
										</c:if>
									</span>
									<span class="stext-105 cl3">
										<i class="zmdi zmdi-calendar"></i>&nbsp;${lostitem.lodate}
									</span>
									<span class="cl4"><i class="zmdi zmdi-pin"></i>&nbsp;${lostitem.loplace}</span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
<%@ include file="/WEB-INF/view/include/footer.jsp" %>

