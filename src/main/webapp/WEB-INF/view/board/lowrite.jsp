<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/header.jsp" %>


		<script type="text/javascript">
			function Boardwrite() {
					$.ajax({
						type:'POST',
						url:"/board/api/write",
						contentType:'application/json',
						dataType: 'text',
						data: JSON.stringify
						  ({"boardGroup":$("#boardGroup").val(),
							"ano":$("#ano").val(),
							"category":$("#category").val(),
							"content":$("#content").val(),
							"place":$("#place").val(),
						   	"boardSub":$("#boardSub").val(),
							  "date":$("#date").val(),
						  	"pictureName":$("#picture").val(),
							  "boardSeq":$("#boardSeq").val()
						  }),
						success:function(data){
							if($("#boardGroup").val()=="lost"){
								return location.href='/board/lost'
							}
							return location.href='/board/find'
						},
						error:function (data){
							alert("다시");
						}
					});
				}
		</script>
		<script src="/vendor/coza/jquery/jquery-3.2.1.min.js"></script>

			<script>
				function setThumbnail(event){


					for (var picture of event.target.files){

						var reader = new FileReader();

						reader.onload = function (event){

							var div = document.createElement("div");

							var img = document.createElement("img");
							img.setAttribute("src", event.target.result);
							var btn = document.createElement("button");
							btn.innerHTML = "X";
							btn.onclick = function (){
								this.parentNode.remove();

							}
							div.appendChild(img)
							div.appendChild(btn)

							document.querySelector("div#fileList").appendChild(div);

						};

						console.log(picture);
						reader.readAsDataURL(picture);

					}
				}
			</script>

			<script>
				function uploadImage(){
					var file = $('#picture')[0].files[0];
					var formData = new FormData();
					formData.append('data', file);
					$.ajax({
						type: 'POST',
						url: '/upload',
						data: formData,
						processData: false,
						contentType: false
					}).done(function (data) {
						alert("이미지업로드 성공");
					}).fail(function (error) {
						alert(error);
					})
				}
			</script>






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
				글쓰기
			</span>
		</div>
	</div>
	
	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
				<div class="col-md-8 col-lg-9 p-b-80" id="contentchange">

						<div class='m-l-25 m-r--38 m-lr-0-xl fs-12' style='margin-left: 200px'>
							</br>
							</br>
							<div class='table-shopping-cart fs-12'>
								<div class='card-header'>
									<h3 class='mb-0'>분실물 글작성</h3>
								</div>
								<div class='card-body fs-12'>
									<form class='form2 fs-12' method='post'  name='write' id='form2' role='form2' enctype='multipart/form-data'
										autocomplete='off' onsubmit="return false;">
										<div class='form-group row'>
											<label for='noinputId'
												class='col-lg-2 col-form-label form-control-label'>작성자</label>
											<div class='col-lg-10'>
												<input type='text' class='form-control fs-12' id='editId' readonly=""
													name='userid' value='${loginUser}'>
											</div>
										</div>
										
										<div class='form-group row'>
											<label for='inputSub'
												class='col-lg-2 col-form-label form-control-label'>제목</label>
											<div class='col-lg-10'>
											<input class='form-control fs-12' type='text' id='boardSub'
													name='boardSub' value='${board.boardSub}' required=''>
											</div>
										</div>
										
										
										<div class='form-group row'>
											<label for='inputDate'
												class='col-lg-2 col-form-label form-control-label'>날짜</label>
											<div class='col-lg-10'>
												
												<input class='form-control fs-12' type='date' id='date' value='${board.date}'
													name='date'  required=''>
											</div>
										</div>
										
										<div class='form-group row'>
											<label for='inputArea'
												class='col-lg-2 col-form-label form-control-label'>지역</label>
											<div class='col-lg-3'>
												<div class="select-box">
											      <select class="ui fluid dropdown" name="ano" id="ano" onmousedown="if(this.options.length>5){this.size=5;}" onchange='this.size=0;' onblur="this.size=0;">
											        	   <option value="02">서울</option>
												           <option value="051">부산</option>
												           <option value="053">대구</option>
												           <option value="032">인천</option>
												           <option value="062">광주</option>
												           <option value="042">대전</option>
												           <option value="052">울산</option>
												           <option value="044">세종</option>
												           <option value="031">경기</option>
												           <option value="033">강원</option>
												           <option value="043">충북</option>
												           <option value="041">충남</option>
												           <option value="063">전북</option>
												           <option value="061">전남</option>
												           <option value="054">경북</option>
												           <option value="055">경남</option>
												           <option value="064">제주</option>
												           <option value="0">기타</option>
											      </select>
											</div>
											</div>
											<label for='inputPlace'
												class='col-lg-2 col-form-label form-control-label' style="text-align:right">분실장소</label>
											<div class='col-lg-5'>
												<input class='form-control fs-12' type='text' id='place'
													name='place' required=''>
											</div>
										</div>
										
										<div class='form-group row'>
											<label for='inputArea'
												class='col-lg-2 col-form-label form-control-label'>물품종류</label>
											<div class='col-lg-3'>
												<div class="select-box">
											      <select class="ui fluid dropdown"id="category" name="category",value='${board.category}', onmousedown="if(this.options.length>5){this.size=5;}" onchange='this.size=0;' onblur="this.size=0;">
												       <option value="가방">가방</option>
											           <option value="귀금속">귀금속</option>
											           <option value="도서용품">도서용품</option>
											           <option value="서류">서류</option>
											           <option value="산업용품">산업용품</option>
											           <option value="핸드폰">핸드폰</option>
											           <option value="현금">현금</option>
											           <option value="카드">카드</option>
											           <option value="노트북">노트북</option>
											           <option value="악기">악기</option>
											           <option value="지갑">지갑</option>
											           <option value="증명서">증명서</option>
											           <option value="스포츠용품">스포츠용품</option>
											           <option value="전자기기">전자기기</option>
											           <option value="자동차">자동차</option>
											           <option value="의류">의류</option>
											           <option value="기타">기타</option>
											      </select>
											</div>
											</div>
											<label for='inputPlace'
												class='col-lg-2 col-form-label form-control-label' style="text-align:right">보상여부</label>
											<div class='col-lg-3'>
												<div class="select-box">
													<select name="boardGroup" class="ui fluid dropdown" id="boardGroup" onmousedown="if(this.options.length>5){this.size=5;}" onchange='this.size=0;' onblur="this.size=0;">
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
													name='content' value='${board.content}' required=''></textarea>
											</div>
										</div>
										
										<div>
											<input type="file" id="picture" name="files[]" accept="image/*" onchange="setThumbnail(event)" multiple/>

										</div>
										<div id="fileList" class="fileList" multiple/>
											<button onclick="uploadImage()">올리기</button>
										</div>
																			
										</br>
										<div class='flex-w flex-m m-r-20 m-tb-5'>
											<div
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5'
												style='opacity: 0; pointer-events: none'></div>
											<button
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10'
												id='submit2' name='submit2' onclick="Boardwrite()">
												등록</button>
											&emsp;
											<button
												class='flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10'
												id='submit3' name='submit3' onclick="location.href='/board/lost'">
												취소</button>
										</div>
									</form>
						</div>
					</div>


				</div>
				
			</div>
		</div>
	</section>
	<!-- /////////////////////////////////////// 컨텐츠 종료  /////////////////////////////////////// -->
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	
	<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
	<!-- ////////////////////////////////////// footer 시작 ////////////////////////////////////// -->


	<script src="/js/tempjs/FiComments.js"></script>





<%@ include file="/WEB-INF/view/include/footer.jsp" %>
