$(document).ready(function(){
	$('textarea').keyup();
	
	// 글자수 체크
	$('textarea').on('keyup',function(){
		var msg_length = $(this).val().length;
		var max_length = $(this).attr('maxlength');
		
		if($(this).next().tagName == 'span') $(this).next().text(msg_length + '/'+ max_length+'자');
		
		if(msg_length > max_length){ $(this).next('.textLength').css('color','red'); return false;}
		else{ $(this).next('.textLength').css('color','black'); }
	});
		
	// 동물등록 탭
	$(".sch_ul li >h3").on("click",function(){
		$(".sch_ul >li").removeClass("on");
		$(this).parent().addClass("on");
		
		var idx=$(this).parent().index();
		if(idx==0){
			$(".reg_animal").css("height","1450px");
			
		}
		else {$(".reg_animal").css("height","800px")}
		
	});
		
	
	//동물등록 보호소 선택
	
	$(".reg_animal .center_list section").on("click",function(){
		$(".center_list section .chk_center").remove();
		$(this).append("<div class='chk_center'></div>");	
		var $value=$(this).find(".shelter_id").val();
		$(".center_list >input").val($value);
	});	
	$(".reg_animal li div >a").on("click",function(){
		var chk=$(".chk_center").length;
		if(chk==0){
			alert("보호중인 보호소를 선택해주세요");
		}else{
			location.href='regAnimal2?shelterId='+$('#shelterId').val();
		}
		
	}); 
		
		
	
		
	//보호소 및 동물정보 section 마우스오버
	$(".animalList >section, .centerList >section").on("mouseover", function(){
		$(this).find(".more_info").show();
		$(this).mouseout(function(){
			$(this).find(".more_info").hide();
		});
		
	});	
  
//봉사문의 입양문의 팝업
	
	$(".info_contents .btn_wrap >button, .modal_up").on("click",function(){
			
			$("#wrap-m").append("<div class='back'></div>");
			$(this).next().show();
			 back_h();
	});
	
	$(".question_layer button.close_lyr").on("click",function(){
		
		$(this).parent().hide();
		$(".back").remove();
		
	});

	//쪽지보내기
	$(".go_msg").on("click",function(){
		$("body").append("<div class='back'></div>");
		$("#msgSendModal").show();
		$(".message_layer textarea").focus();
		 back_h();
	});
	
	// for search form
	$('.option_li').prev().each(function(){
		$(this).on("click",function(){
			$(this).next().show();
		});
	});
	
	$('.option_li').find('li').each(function(){
		var li = this;
		$(li).on("click",function(){
			$(li).parent().parent().find('input').val( $(li).text());
			$(this).parent().hide();
		});
	});
	$('.close_lyr').click(function(){
		$(this).parent().hide();
		$('.back').height(0);
	});

}); //END
//검정배경 height
function back_h(){
	var bodyheight=getDocHeight();
	var set_div=document.getElementsByClassName("back");
	set_div[0].style.height=bodyheight+"px";
}		
function getDocHeight() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollHeight, D.documentElement.scrollHeight),
        Math.max(D.body.offsetHeight, D.documentElement.offsetHeight),
        Math.max(D.body.clientHeight, D.documentElement.clientHeight)
    );
}	


function openMsgModal(){
	$('#msgModal').show();
	$("body").prepend("<div class='back'></div>");
	 back_h();		
}
function openSendMsgModal(){
	$("body").append("<div class='back'></div>");
	$("#msgSendModal").show();
	$(".message_layer textarea").focus();
	 back_h();	
}
function beforeSearchFormSubmit(data){
	var valid = false;
	$(data).find('input').each(function(){
		if(this.value == '전체' || this.value == '지역' || this.value == '구' || this.value == '보호소 명을 입력해주세요') this.value='';
		if($.trim(this.value).length > 0) valid = true;
	});
	if(!valid) {alert('검색 조건을 입력해주세요');
		$(data).find('input').each(function(){
			this.value = this.defaultValue;
		});	
	}
	
	if(valid){
		jQuery.ajax({
			type : 'POST',
			data : jQuery(this).parents('form:first').serialize(),
			url : '../shelter/searchShelter',
			success : function(data, textStatus) {
				jQuery('#centerList').html(data);
				// 보호소 선택 활성화
				$(".reg_animal .center_list section").on("click",function(){
					$(".center_list section .chk_center").remove();
					$(this).append("<div class='chk_center'></div>");	
					var $value=$(this).find(".shelter_id").val();
					$(".center_list >input").val($value);
				});	
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
			}
		});
		return false
	}
	
	return valid;
}

function getAnimalBreedList(id){
	jQuery.ajax({
		type : 'POST',
		data : {id:id},
		dataType:'json',
		url : '/poomda/animal/breedlist',
		success : function(data, textStatus) {
			var objectList="";
			$.each(data, function (key, value){
		        objectList+="<li>" + value.name +"</li>";
		    });
			objectList += "<li>직접입력</li>"
				
		    $('#breedList').html(objectList).find('li').each(function(){
		    	var li = this;
		    	$(li).on("click",function(){
		    		if($(li).text() == '직접입력')
		    			$(li).parent().parent().find('input').val('').attr('readonly',false);
		    		else
		    			$(li).parent().parent().find('input').val( $(li).text()).attr('readonly',true);
		    		
		    		$(this).parent().hide();
		    	});
		    });
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
		}
	});
}

function getCityListByStateInSelect(state){
	$.ajax({
		url : '../address/getCityListByState',
		data : {state:state},
		method : 'post',
		success : function (data){
			$('#cityList').empty();
			for(var i=0; i<data.length; i++){
				$('#cityList').append("<option>"+data[i]+"</option>");
			}
		}
	});
}

function getCityListByState(stateObj){
	var state = $(stateObj).parent().prev().find('input').val();
	$.ajax({
		url : '../address/getCityListByState',
		data : {state:state},
		method : 'post',
		success : function (data){
			$(stateObj).next().empty();
			for(var i=0; i<data.length; i++){
				$(stateObj).next().append("<li>"+data[i]+"</li>");
				$(stateObj).next().find('li').each(function(){
					var city = $(this).text();
					$(this).on('click',function(){$(stateObj).prev().val(city);$(this).parent().hide();});
				});
			}
		}
	});
}