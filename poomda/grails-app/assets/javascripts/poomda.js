/***********************************************************************************************************/
/** selectbox                                                                                              */
/***********************************************************************************************************/

function initSelectBox(){
	if($(".item_list")){
		$(".item_list").hide();
	}
    selectbox(); 
}
function selectbox(){
	// 펼침 버튼 클릭 이벤트
	if($("[name=toggleSelectBox]")!=null){
		
		$("[name=toggleSelectBox]").click(function(e){
			  $("[name=toggleSelectBox]").parent().parent().find("ul").hide();
			  $("[name=toggleSelectBox]").parent().removeClass();
			  $("[name=toggleSelectBox]").parent().addClass("input_base selecter");
			
			  if($(this).attr("class") == "select_btn") {
				  $(this).parent().addClass("on");
				  $(this).parent().parent().find("ul").hide();
				  $(this).removeClass();
				  $(this).addClass("deselect_btn");
			  }
			  else{
				  $(this).parent().removeClass();
				  $(this).parent().addClass("input_base on selecter");
				  $(this).parent().parent().find("ul").show();
				  $(this).removeClass();
				  $(this).addClass("select_btn");
			  }
			  
		   }); 
	}
}

function initValue(targetObj){
	// targetObj == ul
	if(targetObj != null) {
		var hiddenObj = $(targetObj).parent().find("input");
		if(hiddenObj != null && $(hiddenObj).val() != "" ) {
			$(targetObj).parent().find("div > .selectedText").html($(hiddenObj).attr("data-name"));
			$(hiddenObj).change();
		}
		else {
			$(targetObj).parent().find("div > .selectedText").html("");
			$(hiddenObj).change();
		}
	}
}

function setValue(value, targetObj) {
	
}
function getValue(targetObj) {
	
}
function itemClick(targetObj){
	// li 선택 이벤트
	if($(targetObj)!=null){
		$(targetObj).click(function(e){
			var hiddenObj = $(this).parent().parent().find("input");
			$(this).parent().parent().find("ul").hide();
			$(this).parent().parent().find("div > button").click();
			if(hiddenObj != null) {
				$(this).parent().parent().find("div > .selectedText").html($(this).html());
				$(hiddenObj).val($(this).attr("data-code"));
				$(hiddenObj).change();
			}
		});
	}
}

/***********************************************************************************************************/
/** img                                                                                               */
/***********************************************************************************************************/


function uploadImgSetting(obj){
    var files = !!obj.files ? obj.files : [];

    if (!files.length || !window.FileReader) return;

    if (/^image/.test( files[0].type)){

        var reader = new FileReader();
        reader.readAsDataURL(files[0]);
        reader.onloadend = function(){
        	$(obj).parent().css("background-image", "url("+this.result+")");
        };
    }
}

/***********************************************************************************************************/
/** 문자열 길이 리턴(한글 2, 영문 1)                                                                              */
/**예제                                                                                                     */
/**$(document).ready(function(){                                                                           */
/**    $('#aaa').keyup(function(){                                                                         */
/**	       $('#text').html($(this).val().getLength());                                                     */
/**	   });                                                                                                 */
/**});                                                                                                     */
/***********************************************************************************************************/
String.prototype.getLength = function(){
	var len =	(function(s,b,i,c){
		for(b=i=0;c=s.charCodeAt(i++);b+=c>>11?2:1);
		return b;
	})(this.valueOf());

	return len;
};

/***********************************************************************************************************/
/** text area                                                                                            */
/***********************************************************************************************************/

function textAreaSetting() {
	$("[name=txtAreaComponent]").keyup(function(){
		var len = $(this).val().length;
		$(this).parent().find(".currentTxtAreaCnt").text(len);
	});
}

/***********************************************************************************************************/
/** validation                                                                                             */
/***********************************************************************************************************/
function doValidation(){
	var rtn = true;
	$('input[type=text]').each(function(){
		if($(this).attr('required') && $(this).val() == ''){
			alert($(this).attr('title') + '은(는) 필수 입력 사항입니다.');
			rtn = false;
			return false;
		}
	});

	$('input[type=selected]').each(function(){
		if($(this).attr('required') && $(this).val() == ''){
			alert($(this).attr('title') + '은(는) 필수 입력 사항입니다.');
			rtn = false;
			return false;
		}
	});

	$('input[type=textarea]').each(function(){
		if($(this).attr('required') && $(this).val() == ''){
			alert($(this).attr('title') + '은(는) 필수 입력 사항입니다.');
			rtn = false;
			return false;
		}
	});

	return rtn;
}

