<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/header.jsp" %>


	<!-- ////////////////////////////////////// 맨 위 메뉴 종료 ////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- /////////////////////////////////////// 컨텐츠 시작  /////////////////////////////////////// -->

	<script>
		function boardEdit(){
			alert($("#boardGroup").val())


			$.ajax({
				type:"POST",
				url:"/board/api/edit/"+$("#boardSeq").val(),
				contentType: 'application/json',
				dataType: 'text',
				data: JSON.stringify
				({	"boardSeq":$("#boardSeq").val(),
					"boardGroup":$("#boardGroup").val(),
					"ano":$("#ano").val(),
					"category":$("#category").val(),
					"content":$("#content").val(),
					"place":$("#place").val(),
					"boardSub":$("#boardSub").val()}),
				success: function(data){
					location.href='/board/lost'
				},
				error: function(data){
					alert("애러");
				}
			});
		}
	</script>






	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.do" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="list.do" class="stext-109 cl8 hov-cl1 trans-04">
				Finditem
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				write
			</span>
		</div>
	</div>

	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">

						<div class='m-l-25 m-r--38 m-lr-0-xl fs-12' style='margin-left: 200px'>
							</br>
							</br>
							<div class='table-shopping-cart fs-12'>
								<div class='card-header'>
									<h3 class='mb-0'>분실물 수정</h3>
								</div>
								<div class='card-body fs-12'>
									<form class='form2 fs-12' method='post'  name='input' id='form2' role='form2' enctype='multipart/form-data'
										autocomplete='off' onsubmit="return false;" >

										<input type="hidden" name="boardSeq" id="boardSeq" value="${boardedit.boardSeq}">


										<div class='form-group row'>
											<label for='noinputId'
												class='col-lg-2 col-form-label form-control-label'>아이디</label>
											<div class='col-lg-10'>
												<input type='text' class='form-control fs-12' id='editId'
													name='userid' value='${loginUser}' readonly='readonly'>
											</div>
										</div>

										<div class='form-group row'>
											<label for='inputSub'
												class='col-lg-2 col-form-label form-control-label'>제목</label>
											<div class='col-lg-10'>
											<input class='form-control fs-12' type='text' id='boardSub'
													name='losub' value='${boardedit.boardSub}' required=''>
											</div>
										</div>


										<div class='form-group row'>
											<label for='inputDate'
												class='col-lg-2 col-form-label form-control-label'>날짜</label>
											<div class='col-lg-10'>

												<input class='form-control fs-12' type='date' id='date'
													name='date' value='${boardedit.date}' required=''>
											</div>
										</div>

										<div class='form-group row'>
											<label for='inputArea'
												class='col-lg-2 col-form-label form-control-label'>지역</label>
											<div class='col-lg-3'>
											      <select class="ui fluid dropdown" name="ano" id="ano">
											        	   <option <c:if test="${(boardedit.ano) == 02}"> selected='selected'</c:if> value="02">서울</option>
												        	<option <c:if test="${(boardedit.ano) == 051}"> selected='selected'</c:if> value="051">부산</option>
												        	<option <c:if test="${(boardedit.ano) == 053}"> selected='selected'</c:if> value="053">대구</option>
												        	<option <c:if test="${(boardedit.ano) == 032}"> selected='selected'</c:if> value="032">인천</option>
												        	<option <c:if test="${(boardedit.ano) == 062}"> selected='selected'</c:if> value="062">광주</option>
												        	<option <c:if test="${(boardedit.ano) == 042}"> selected='selected'</c:if> value="042">대전</option>
												      		<option <c:if test="${(boardedit.ano) == 052}"> selected='selected'</c:if> value="052">울산</option>
												        	<option <c:if test="${(boardedit.ano) == 044}"> selected='selected'</c:if> value="044">세종</option>
												        	<option <c:if test="${(boardedit.ano) == 031}"> selected='selected'</c:if> value="031">경기</option>
												        	<option <c:if test="${(boardedit.ano) == 033}"> selected='selected'</c:if> value="033">강원</option>
												        	<option <c:if test="${(boardedit.ano) == 043}"> selected='selected'</c:if> value="043">충북</option>
												        	<option <c:if test="${(boardedit.ano) == 041}"> selected='selected'</c:if> value="041">충남</option>
												        	<option <c:if test="${(boardedit.ano) == 063}"> selected='selected'</c:if> value="063">전북</option>
												        	<option <c:if test="${(boardedit.ano) == 061}"> selected='selected'</c:if> value="061">전남</option>
												        	<option <c:if test="${(boardedit.ano) == 054}"> selected='selected'</c:if> value="054">경북</option>
												        	<option <c:if test="${(boardedit.ano) == 055}"> selected='selected'</c:if> value="055">경남</option>
												        	<option <c:if test="${(boardedit.ano) == 064}"> selected='selected'</c:if> value="064">제주</option>
												        	<option <c:if test="${(boardedit.ano) == 0}"> selected='selected'</c:if> value="0">기타</option>
											      </select>
											</div>
											<label for='inputPlace'
												class='col-lg-2 col-form-label form-control-label' style="text-align:right">분실장소</label>
											<div class='col-lg-5'>
												<input class='form-control fs-12' type='text' id='place'
													name='place' value='${boardedit.place}' required=''>
											</div>
										</div>

										<div class='form-group row'>
											<label for='inputArea'
												class='col-lg-2 col-form-label form-control-label'>물품종류</label>
											<div class='col-lg-3'>
											      <select class="ui fluid dropdown" name="category">
											        	<option <c:if test="${(boardedit.category) == '가방'}">selected='selected'</c:if> value="가방">가방</option>
														<option <c:if test="${(boardedit.category) == '귀금속'}">selected='selected'</c:if> value="귀금속">귀금속</option>
														<option <c:if test="${(boardedit.category) == '도서용품'}">selected='selected'</c:if> value="도서용품">도서용품</option>
														<option <c:if test="${(boardedit.category) == '서류'}">selected='selected'</c:if> value="서류">서류</option>
														<option <c:if test="${(boardedit.category) == '산업용품'}">selected='selected'</c:if> value="산업용품">산업용품</option>
														<option <c:if test="${(boardedit.category) == '핸드폰'}">selected='selected'</c:if> value="핸드폰">핸드폰</option>
														<option <c:if test="${(boardedit.category) == '현금'}">selected='selected'</c:if> value="현금">현금</option>
														<option <c:if test="${(boardedit.category) == '카드'}">selected='selected'</c:if> value="카드">카드</option>
														<option <c:if test="${(boardedit.category) == '노트북'}">selected='selected'</c:if> value="노트북">노트북</option>
														<option <c:if test="${(boardedit.category) == '악기'}">selected='selected'</c:if> value="악기">악기</option>
														<option <c:if test="${(boardedit.category) == '지갑'}">selected='selected'</c:if> value="지갑">지갑</option>
														<option <c:if test="${(boardedit.category) == '증명서'}">selected='selected'</c:if> value="증명서">증명서</option>
														<option <c:if test="${(boardedit.category) == '스포츠용품'}">selected='selected'</c:if> value="스포츠용품">스포츠용품</option>
														<option <c:if test="${(boardedit.category) == '전자기기'}">selected='selected'</c:if> value="전자기기">전자기기</option>
														<option <c:if test="${(boardedit.category) == '자동차'}">selected='selected'</c:if> value="자동차">자동차</option>
														<option <c:if test="${(boardedit.category) == '의류'}">selected='selected'</c:if> value="의류">의류</option>
														<option <c:if test="${(boardedit.category) == '기타'}">selected='selected'</c:if> value="기타">기타</option>
											      </select>
											</div>
											<label for='inputPlace'
												class='col-lg-2 col-form-label form-control-label' style="text-align:right">보상여부</label>
											<div class='col-lg-5'>
												<div class="select-box">
													<select name="boardGroup" class="ui fluid dropdown" id="boardGroup">
											          	<option value="lost">분실물</option>
											          	<option value="find">습득물</option>
											   	  	</select>
											   	</div>
											</div>
										</div>

										<div class='form-group row'>
											<label for='inputPnum'
												class='col-lg-2 col-form-label form-control-label'>내용</label>
											<div class='col-lg-10'>
												<textarea rows="2" class='form-control csisize fs-12' type='text' id='content'
													name='content' value='${boardedit.content}' required=''></textarea>
											</div>
										</div>

<!-- 										<div id=fileup> -->
<!-- 											<input type="file" name="files" multiple> -->
<!-- 										</div> -->

										</br>
										<div class='flex-w flex-m m-r-20 m-tb-5'>
											<div
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5'
												style='opacity: 0; pointer-events: none'></div>
											<button
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10'
												id='submit2' name='submit2' onclick="boardEdit()">
												수정</button>
											&emsp;
											<div
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10'
												id='submit3' name='submit3' onclick="location.href='/board/lost'">
												취소</div>
										</div>
									</form>
						</div>
					</div>


				</div>


		</div>
	</section>
	<!-- /////////////////////////////////////// 컨텐츠 종료  /////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- ////////////////////////////////////// footer 시작 ////////////////////////////////////// -->

<%@ include file="/WEB-INF/view/include/footer.jsp" %>
