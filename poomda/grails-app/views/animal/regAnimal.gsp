<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="animal.css"/>
		
	</head>
	<body>

<!-- sub-content // S -->
	<div id="sub_content" class="reg_animal">
		<div>
			<h1>동물 등록하기</h1>
			<p>보호중인 동물을 등록해 주세요</p>
		</div>	
		<ul class="step">
			<li><h2>보호장소 선택</h2></li>
			<li>정보입력</li>
			<li>완료</li>
		</ul>	
		<p>동물이 보호되고 있는 장소를 선택하세요</p>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li class="on"> 
				<h3><button type=button>1. 보호소 보호</button></h3>
				<div style="width: 100%;">
					<div>
						<g:formRemote name="searchForm" url="[controller: 'Shelter', action:'searchShelter']" method="post" before="return beforeSearchFormSubmit(this)" >
							<fieldset>
								<legend>보호중인 보호소 찾기</legend>
								<div class="custom_input"><!--커스텀 셀렉박스 공통-->
									<input type="text" name="address" value="지역"  class="select" readonly />
									<button type="button">지역을 선택하세요</button>
									<ul class="option_li">
										<g:each in="${org.poomda.locale.Address.list()}" var="address">
											<li>${address.state}</li>
										</g:each>
									</ul>
								</div>
								<div class="custom_input"><!--커스텀 셀렉박스 공통-->
									<input type="text" name="addressDetails" value="구"  class="select" readonly />
									<button type="button"  onclick="$(this).next().show();">세부 지역을 선택하세요</button>
									<ul class="option_li">
										<li>전체</li>
									</ul>
								</div>	
								<input type="search" name="name" placeholder="보호소 명을 입력해주세요">
								<button type="submit" class="btn_sch" onclick="beforeSearchFormSubmit($('#searchForm'))">찾기</button> 
								<!-- <g:submitToRemote url="[controller: 'Shelter', action:'searchShelter']" update="centerList" value="Update"  class="btn_sch" />-->
								
							</fieldset>
							<g:link controller="shelter" action="regCenter" title="보호소등록 바로가기">보호소 신규등록</g:link>
						</g:formRemote>
						<p>등록되지 않은 보호소는 신규등록해주세요!</p>
					</div>
					
					<g:render template="../shelter/centerList" model="['shelterList': Shelter.list([max:8, sort:'dateCreated', order:'desc']) ]"/>
					
					<a href="#" class="btn_blue" onclick="regAnimalByCenter()">다음</a>
				</div>
			</li>
			<li>
				<h3><button type="button">2. 개인 보호</button></h3>
				<div>
					<g:form controller="Animal" action="regAnimal2" name="personalForm" method="post">
						<fieldset>
							<span>지역</span>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" name="address" value="경기도"  class="select" readonly />
								<button type="button">지역을 선택하세요</button>
								<ul class="option_li">
									<g:each in="${org.poomda.locale.Address.list() }" var="address">
										<li>${address.state}</li>
									</g:each>
								</ul>
							</div>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" name="addressDetails" value="전체"  class="select" readonly />
								<button type="button">세부 지역을 선택하세요</button>
								<ul class="option_li">
									<li>전체</li>
								</ul>
							</div>
							<span>상세지역</span>
							<input type="text" name="tempShelter" value="상세주소(선택입력)" />
						</fieldset>
						<button type="submit" class="btn_blue" >다음</button>
					</g:form>
				</div>
			</li>
		</ul>

	</div>
	<!-- sub-content // E -->

</body>
</html>