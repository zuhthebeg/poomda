<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:javascript src="sub.js"/>
		<script>
		    // This is called with the results from from FB.getLoginStatus().
		    function statusChangeCallback(response) {
		        console.log('statusChangeCallback');
		        console.log(response);
		        if (response.status === 'connected') {
		            getUserInfo();
		        }
		    }
		
		    function checkLoginState() {
		        FB.getLoginStatus(function(response) {
		            statusChangeCallback(response);
		        });
		    }
		
		    window.fbAsyncInit = function() {
		        FB.init({
		            appId      : '827933583947504',
		            cookie     : true,  // enable cookies to allow the server to access 
		            xfbml      : true,  // parse social plugins on this page
		            version    : 'v2.2' // use version 2.1
		    });
		
		    FB.getLoginStatus(function(response) {
		            statusChangeCallback(response);
		        });
		    };
		
		    (function(d, s, id) {
		        var js, fjs = d.getElementsByTagName(s)[0];
		        if (d.getElementById(id)) return;
		        js = d.createElement(s); js.id = id;
		        js.src = "//connect.facebook.net/en_US/sdk.js";
		        fjs.parentNode.insertBefore(js, fjs);
		      }(document, 'script', 'facebook-jssdk'));
		
		  // Here we run a very simple test of the Graph API after login is
		  // successful.  See statusChangeCallback() for when this call is made.
		    function facebookLogin() {
		        FB.api('/me', function(response) {
		            $('#facebook_id').val(response.id);
		            $('#email').val(response.email);
		            $('#nick').val(response.name);
		
		            $('#nickChk').val('Y');
		            if($('#email').val() != ''){
		                $('#email').attr('readonly', true);
		            }
		            $('#nick').attr('readonly', true);
		        },{scope : 'read_stream,email'});
		    }
		
		    function getUserInfo(){
		        FB.api('/me/picture' , function(response) {
			        $('#profile').val(response.data.url);
			        console.log(response.data);
			    });
		
		        facebookLogin();
		    }
		    
		    FB.login(function(response) {
		    	$('#facebook_id').val(response.id);
		        $('#email').val(response.email);
		        $('#nick').val(response.name);
		
		        $('#nickChk').val('Y');
		        if($('#email').val() != ''){
		            $('#email').attr('readonly', true);
		        }
		        $('#nick').attr('readonly', true);
		    }, {scope: 'public_profile,email'});
		  
		    $(document).ready(function(){
		        $('#nick').keypress(function(e){
		            if(e.which == 13){
		                $('#dupNick').click();
		            }
		        });
		
		        $('#nick').change(function(){
		            $('#nickChk').val('N');
		        });
		
		        $('#dupNick').bind('click', function(){
		            $.ajax({
		                type: "POST",
		                url: "/user/dupNick",
		                dataType:"json",
		                data : {'nick' : $('#nick').val()},
		                beforeSend:function(xhr){
		                    if($('#nick').val() == ''){
		                        alert('닉네임을 입력 해 주세요.');
		                        return false;
		                    }
		                },
		                success: function(data){
		                    $('#nickChk').val(data.result);
		                    $('#dupResult').html('중복');  
		                },
		                error: function(xhr, status, error){
		                },
		                complete:function(xhr, textStatus){
		                }
		            });
		        });
		    });
		  
		    function doNext(){
		        /*if(doValidation()){
		            $.ajax({
		                type: "POST",
		                url: "/member/addStep1.do",
		                dataType:"json",
		                data : $('#frm').serialize() ,
		                beforeSend:function(xhr){
		                    if($('#nickChk').val() == 'N'){
		                        alert('닉네임 중복확인을 해주세요.');
		                        return false;
		                    }
		
		                    if($('#pwd').val() != $('#rePwd').val()){
		                        alert('비밀번호 확인 값이 다릅니다.\n비밀번호를 다시 확인 해 주세요.');
		                        $('#pwd').val('');
		                        $('#rePwd').val('');
		                        $('#pwd').focus();
		                        return false;
		                    }
		                },
		                success: function(data){
		                    if(data.result == '-1'){
		                    	alert(data.result_msg);
		                    } else {
		                    	$('#frm').attr('action','/member/registStep2.do');
		                        $('#frm').attr('method','post');
		                        $('#frm').submit();
		                    }
		                },
		                error: function(xhr, status, error){
		                },
		                complete:function(xhr, textStatus){
		                }
		            });
		        }*/
		    }
		</script>
	</head>
	<body>
	
	<form name="frm" id="frm">
		<input type="hidden" name="nickChk" id="nickChk" value="N" />
		<input type="hidden" name="facebook_id" id="facebook_id" value="" />
		<input type="hidden" name="profile" id="profile" value="" />
	    
	    <section id="join"><!-- 본문 영역 시작 -->
	        <div class="sub_tab">
	          <div class="tab_progress"><a href="#"><span></span>필수정보 입력</a><span class="bar_next"></span></div>
	          <div class="tab_next"><a href="#"><span></span>추가정보 입력</a><span class="bar_next"></span></div>
	          <div class="tab_next"><a href="#"><span></span>완료</a></div>
	      </div>
	        <div class="info_wrap">
	            <div class="form_wrap">
	                <p></p><div class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="true" onlogin="checkLoginState();"></div></div><br>
	            <div class="form_wrap mat10">
	                <p>닉네임</p><input type="text" id="nick" name="nick" class="ip_b ip_tx w_400" placeholder=""><button type="button" id="dupNick" class="ip_btn">중복확인</button><span id="dupResult"></span></div><br>
	             <div class="form_wrap mat10">
	                <p>이메일</p><input type="text" id="email" name="email" class="ip_b ip_tx w_400" placeholder=""></div><br>
	             <div class="form_wrap mat10">
	                <p>비밀번호</p><input type="text" id="pwd" name="pwd" class="ip_b ip_tx w_400" placeholder=""></div>
	              <div class="form_wrap mat10">
	                <p>비밀번호 확인</p><input type="text" id="rePwd" name="rePwd" class="ip_b ip_tx w_400" placeholder=""></div>
	        </div>
	        <div class="info_btn">
	                <a href="javascript:doNext();">다음</a>
	        </div>
	    </section><!-- 본문 영역 끝 -->
	</form>

</body>
</html>