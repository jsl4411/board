/**
 * 
 */

//var comno =  '${ficomments.comno}';
//
//$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시
//	var insertData = $('[name=commentInsertForm]').serialize(); 
//	console.log("insertData:" +insertData);
//	commentIsert(insertData);
//});



//댓글 목록

function commentList(boardSeq){
		$.ajax({
			url : '/board/content/'+$("#boardSeq").html(),
			type : 'get',
			dataType: "json",
			success : function(data){
	            $("#lost_comment_list").html(data);
	            let commentSeq = document.getElementById("commentSeq").value;
	            $('#comment_toggle').text("Comment ("+commentSeq+")");
	            global_lono = document.getElementById('global-boardSeq').value;
				location.reload();

			}
	    });
	}


//댓글 등록
function commentInsert(boardSeq){
	let sendData = {};
	let newInput_html = "";
	let review = document.getElementById('review').value;
	let target = document.getElementById("reply_to").childNodes;
	
	if(typeof target[0] !== 'undefined'){
		target = target[0].value;
		sendData = {

			"content": review,
			"seq": boardSeq,
		}
	} else {
		sendData = {
			"content": review,
			"seq": boardSeq
		};
	}
	$.ajax({
		url : "/comment/api/write",
		type : 'post',
		dataType : 'text',
		contentType: "application/json",
		data : JSON.stringify(sendData),
		success : function(data){ //list로 받음, 뽑을땐 반복문 돌려야함(for)
			if(data){
				commentList(boardSeq);
				alert("댓글이 정상적으로 등록되었습니다.");
				$("#review").val("");
				location.reload();
			} else {
				alert("댓글 작성에 실패하였습니다. 오류를 문의해주세요.");
			}
			deleteReply();
		}
	});
}
var prevInput;
var prevText;
var click=0;

////댓글수정폼
function update_form_id(val){
	if(click>0){
		$('#update_txt_'+prevInput).remove();
		$('#btn'+prevInput).text("수정");
		$('#btn'+prevInput).attr("onclick", "update_form_id("+prevInput+");");		
		
		let p_el = '<p class="stext-102 cl6">'+prevText+'</p>';
		$('#update-form-'+prevInput).html(p_el);
	}
	click++;
	
	$('#btn'+val).text("수정완료");
	$('#btn'+val).attr("onclick", "do_update("+val+");");
	
	let comment_text = document.getElementById("update-form-"+val).childNodes;
	for(let i=0; i<comment_text.length; i++){
		if(comment_text[i].nodeName == 'P') comment_text = comment_text[i].innerText;
	}
	
	let new_update_input_html = '<input class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="update-txt-'+val+'" value="'+comment_text+'">';
	$('#update-form-'+val).html(new_update_input_html);
	prevText = comment_text;
	prevInput = val;
}

var global_lono;
//댓글수정
function do_update(index){
	click = 0;
	let content = document.getElementById("update-txt-"+index).value;
	console.log(index)
	console.log($("#boardSeq").html())
	$.ajax({
		url : "/comment/api/edit/"+index,
		type : 'POST',
		contentType : "application/json",
		data: JSON.stringify({
			"seq": $("#boardSeq").html(),
			"commentSeq" : index,
			"content": content
			}),
		dataType: "HTML",
		error: function(){
			alert("에러어어");
		},
		success : function(data){
			if(data){
				alert("댓글이 수정되었습니다");
				location.reload();

			}else{
				alert("댓글이 수정 실패");
			}
			commentList(global_lono);
		}
	});
}

function submit(index){
	click = 0;
	document.getElementById('form'+index).submit();
}

//댓글삭제
function commentDelete(val, boardSeq){
	let sendData = new Object;
	sendData.commentSeq = val;
	console.log(val);
	$.ajax({
		url: "/comment/api/delete/"+val,
		type: "GET",
		contentType: "application/json",
		//data: JSON.stringify(sendData),
		dataType: "text",
		success: function(data){
			if(data){
				alert("댓글이 정상적으로 삭제되었습니다.");
				commentList(boardSeq);
				location.reload();

			} else {
				alert("댓글 삭제가 실패하였습니다. 관리자에게 문의해주세요.")
			}
		}
	});
}

function reply_to(who){
	let el = document.getElementById("reply_to");
	let reciever = document.getElementById("who-"+who).value;
	el.innerHTML = "<input id='reply-target-"+who+"' type='hidden' value='"+who+"'>"+reciever+"<span onclick='deleteReply();'> X </span>";
	$("#review").focus();
}

function deleteReply(){
	let el = document.getElementById("reply_to");
	el.innerHTML = "";
}