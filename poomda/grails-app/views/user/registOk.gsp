<%@ page import="org.poomda.service.*"%>
<%@ page import="org.poomda.animal.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to Poomda</title>
<asset:stylesheet src="regist.css" />

</head>
<body>

	<form name="frm" id="frm">
		<section id="join">
			<!-- 본문 영역 시작 -->
			<div class="sub_tab">
				<div class="tab_next">
					<a href="#"><span></span>필수정보 입력</a><span class="bar_next"></span>
				</div>
				<div class="tab_next">
					<a href="#"><span></span>추가정보 입력</a><span class="bar_next"></span>
				</div>
				<div class="tab_progress">
					<a href="#"><span></span>완료</a>
				</div>
			</div>
			<div class="info_wrap">




		<!-- main-content // S -->
		<div id="sub_content" class="reg_center_ok">
			<p>회원 등록이 완료되었습니다!</p>
		</div>	
		<!-- sub_content // E -->








			</div>
			<div class="info_btn">
				<g:link action="mypage">로그인</g:link>
			</div>
		</section>
		<!-- 본문 영역 끝 -->
	</form>
</body>
</html>