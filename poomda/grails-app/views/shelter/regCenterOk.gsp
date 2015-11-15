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
	</body>
</html>
