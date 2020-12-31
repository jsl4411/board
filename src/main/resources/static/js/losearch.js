/**
 * 
 */
var board_sub;
var category;
var startDate = null;
var endDate = null;
var ano;
//let fiplace; //TODO : 장소 입력 css 설계 이후 javascript 정의
function searchAction(nextPage, isSearch){
	let date_range = document.getElementById("result-2").innerText.trim();
	
//	console.log("1 : "+fisub);
//	console.log("2 : "+ficname);
//	console.log("3 : "+startDate);
//	console.log("4 : "+endDate);
	
	if(date_range != ""){
		date_range = splitDate(date_range);
		startDate = date_range[0];
		endDate = date_range[1];
	}
	
	//undefined 처리
	if(typeof category === 'undefined'){
		category = null;
	}
	if(typeof board_sub == 'undefined'){
		board_sub = null;
	}
	if(typeof ano == 'undefined'){
		ano = -1;
	}
	
	let input_data = {
		startDate: startDate,
		endDate: endDate,
		board_sub: board_sub,
		category: category,
		isSearch: isSearch,
		nextPage: nextPage,
		ano: ano
	};
	console.log(input_data);
	$.ajax({
		url: "/",
		type: "POST",
		data: input_data,
		dataType: "HTML",
		success: function(responseData){
			$('#changing-list').html(responseData);
		}
	});
}

let prev_tag;
function selectTag(index, tag){
	let temp = tag.innerHTML;
	category = temp.trim();
	
	if(typeof prev_tag != 'undefined'){
		document.getElementById('category-'+prev_tag).style.borderColor = "#ccc";
	}
	if(prev_tag == index){
		tag.style.borderColor = "#ccc";
		category = undefined;
	}else{
		tag.style.borderColor = "#3486eb";
		category = temp.trim();
	}
	prev_tag = index;
}

let prev_area;
function selectArea(area, value){
	if(typeof prev_area != 'undefined'){
		document.getElementById('area-'+prev_area).style.borderColor = "#ccc";
	}
	if(prev_area == value){
		area.style.borderColor = "#ccc";
		ano = undefined;
	}else{
		area.style.borderColor = "#3486eb";
		ano = value;
	}
	prev_area = value;
}

const search_input = document.getElementById("query");
function selectSub(){
	board_sub = query.value;
	//console.log(query.value);
}