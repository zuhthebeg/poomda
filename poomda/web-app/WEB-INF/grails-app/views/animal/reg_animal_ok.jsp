<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/animal.css">
<script src="../js/sub.js"></script>

<!-- sub-content // S -->
	<div id="sub_content" class="reg_animal_ok"><!--보호소,동물 등록 공통클래스 regost-->
		<div>
			<h1>동물 등록하기</h1>
			<p>보호중인 동물을 등록해 주세요</p>
		</div>	
		<ul class="step">
			<li>보호장소 선택</li>
			<li>정보입력</li>
			<li><h2>완료</h2></li>
		</ul>	
		<p>보호소 등록이 완료되었습니다!</p>
		<a href="" title="등록 동물 바로가기" class="btn_blue">등록한 동물 보러가기</a>
	</div>
	<!-- sub-content // E -->

<%@ include file="../inc/footer.jsp" %>
<script>
console.log($("li >div").height());
</script>
</body>
</html>