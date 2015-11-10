<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.member.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="search.css"/>
		<asset:javascript src="sub.js"/>
		
	</head>
	<body>
<!-- sub-content // S -->
	<div id="sub_content" class="search">
		<div>
			<h1>동물/보호소 찾기</h1>
			<p>보호중인 동물과 보호소를 찾을 수 있습니다.</p>
		</div>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li class="on"> 
				<h2><button type="button" onclick="location.href='${request.contextPath}/search/searchAnimal'" >보호 동물 찾기</button></h2>
			</li>
			<li>
				<h2><button type="button" onclick="location.href='${request.contextPath}/search/searchCenter'">보호소 찾기</button></h2>
			</li>
		</ul>	
			<div class="sch_cont">
				<p><span class="bold">입양을 원하시나요?</span> 보호중인 동물을 찾고 입양문의를 해보세요.</p>
				<div class="search_form">
					<form action="" method="">
						<fieldset>
							<legend>보호중인 동물 찾기</legend>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="지역"  class="select" readonly />
								<button type="button">지역을 선택하세요</button>
								<ul class="option_li">
										<g:each in="${org.poomda.locale.Address.list() }" var="address">
											<li>${address.state}</li>
										</g:each>
								</ul>
							</div>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="구"  class="select" readonly />
								<button type="button">구를 선택하세요</button>
								<ul class="option_li">
									<li>전체</li>
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="동물"  class="select" readonly />
								<button type="button">동물 선택하세요</button>
								<ul class="option_li">
									<g:each in="${AnimalType.list() }" var="type">
										<li onclick="getAnimalBreedList(${type.id})">${type.nameKor}</li>
									</g:each>								
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="품종"  class="select" readonly />
								<button type="button">품종을 선택하세요</button>
								<ul class="option_li" id="breedList">
									<li>직접입력</li>
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="상태"  class="select" readonly />
								<button type="button">보호 상태를 선택하세요</button>
								<ul class="option_li">
									<g:each in="${Animal.constraints.status.inList}" var="status">
										<li>${status}</li>
									</g:each>
								</ul>
							</div>	
							<button type="search" class="btn_sch">찾기</button>						
						</fieldset>
					</form>
				</div>
				<div class="list_area"><!--목록공통클래스 center_list-->
					<ul class="sort">
						<li class="on">전체</li>
						<li>최근등록순</li>
						<li>추천순</li>
					</ul>
					<span>등록된 동물 <span>${Animal.count() } 마리 </span></span>
					<div class="animalList">
						<g:render template="../animal/animallist" model="[animalList : Animal.findAllByShelterIsNotNull([max:8])]"></g:render>
					</div>	<!--section END-->
					<ul class="page">
						<li><a href="" title="이전목록으로 이동">&lt;</a></li>
						<li class="on"><a href="" title="1페이지 바로가기">1</a></li>
						<li><a href="" title="2페이지 바로가기">2</a></li>
						<li><a href="" title="3페이지 바로가기">3</a></li>
						<li><a href="" title="4페이지 바로가기">4</a></li>
						<li><a href="" title="5페이지 바로가기">5</a></li>
						<li><a href="" title="6페이지 바로가기">6</a></li>
						<li><a href="" title="7페이지 바로가기">7</a></li>
						<li><a href="" title="8페이지 바로가기">8</a></li>
						<li><a href="" title="9페이지 바로가기">9</a></li>
						<li><a href="" title="10페이지 바로가기">10</a></li>
						<li><a href="" title="다음목록으로 이동">&gt;</a></li>
					</ul>
				</div><!--center list END-->
				
			</div>
			
		
	</div>
	<!-- sub-content // E -->

</body>
</html>