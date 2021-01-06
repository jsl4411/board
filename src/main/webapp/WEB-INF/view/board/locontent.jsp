<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/header.jsp" %>

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
				location.href='/board/lost'
			},
			error: function(data){
				alert("애러");
			}
		});
	}


</script>


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
				${locontent.boardSub}
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
                                    <div class="item-slick3" data-thumb="/images/Lostimgs/">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="/images/Lostimgs/" alt="IMG-PRODUCT">

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
							${boardcontant.boardSub}
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
									유형
								</span>

								<span class="stext-102 cl6 size-206" id="boardGroup">
									<c:if test="${boardcontant.boardGroup=='lost'}">
										<span class="stext-102 cl6 size-206">
											분실물
										</span>
									</c:if>
									<c:if test="${boardcontant.boardGroup=='find'}">
										<span class="stext-102 cl6 size-206">
											습득물
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

										<div class="size-207" id="comment${comments.commentSeq}" style="margin-left:100px">

											<div class="flex-w flex-sb-m p-b-17" style="justify-content: unset">
												<span class="mtext-107 cl2 p-r-20">
													${boardcontant.user.userid}
													<span class="stext-102 cl6">&nbsp;
														${comments.date} </span>
												</span>

												<span class="fs-18 cl11">
												<c:if test="${loginUser eq boardcontant.user.userid }">
													<c:if test="${!empty loginUser}">
														<button id="btn${comments.commentSeq}"  type="button" onclick="update_form_id(this.value);" value="${comments.commentSeq}" class="stext-109 cl8 hov-cl1 trans-04">수정</button>
														<button id="btndel${comments.commentSeq}" type="button" id="commentSeq"onclick="commentDelete('${comments.commentSeq}', '${ comments.seq }');" value="${comments.commentSeq}" class="stext-109 cl8 hov-cl1 trans-04" >삭제</button>

													</c:if>
												</c:if>
																				<!-- <a href="#" class="stext-109 cl8 hov-cl1 trans-04"><i class="zmdi zmdi-mail-reply"></i></a>  -->
												</span>
											</div>

											<div id="update-form-${comments.commentSeq}">
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
					<img src="/images/최근게시물.png">
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
									<a href="/lostitem/locontent.do?lono=${related.lono}" >
									<img src="/images/Lostimgs/${related.lopicname}" alt="IMG-PRODUCT"></a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											${related.lodate}
										</a>

										<span class="stext-105 cl3">
											<a href="/lostitem/locontent.do?lono=${related.lono}" class="cl3" >${related.losub}</a>
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

<%@ include file="/WEB-INF/view/include/footer.jsp" %>
