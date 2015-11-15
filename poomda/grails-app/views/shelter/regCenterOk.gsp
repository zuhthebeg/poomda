<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="animal.css"/>
		
		
	</head>
	<body>
	
		<!-- main-content // S -->
		<div id="sub_content" class="reg_center_ok">
			<div>
				<h1>보호소 등록하기</h1>
				<p>동물 보호소를 등록할 수 있습니다</p>
			</div>
			<p>보호소 등록이 완료되었습니다!</p>
			<g:link controller="shelter" action="centerInfo" params="[shelterId:shelter?.id]" title="등록 보호소 목록 바로가기" class="btn_blue">등록된 보호소 보러가기</g:link>
		</div>	
		<!-- sub_content // E -->
	
		<!-- footer // S -->
		<footer>
			<div class="contact">
				<ul>
					<li>
						<a href="mailto:poomda@poomda.kr" class="email">
							이메일
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="https://ko-kr.facebook.com/pawinhand" target="_blank" class="facebook">
							페이스북
						</a>
					</li>
				</ul>
			</div>
			<div class="footer-menu">
				<ul>    
					<li>
						<a href="#;">
							품다소개
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="#;">
							공지사항
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="#;">
							개인정보
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="#;">
							취급방침
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="#;">
							이용약관
						</a>
					</li>
				</ul>
			</div>
			<div class="copyright">
				Copyrightⓒ Poomda.kr All right reserved. 개인정보관리책임자 : 이환희<br>
				Help : <address><a href="mailto:poomda@poomda.kr">poomda@poomda.kr</a></address>
			</div>
		</footer>
		<!-- footer // E -->
	
	</div>
	<!-- wrap-m // E -->

</body>
</html>
