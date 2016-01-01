<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<%@ page import="org.poomda.member.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="search.css"/>
		
		
	</head>
	<body>
<!-- sub-content // S -->
	<div id="sub_content" class="search">
		<div>
			<h1>동물/보호소 찾기</h1>
			<p>보호중인 동물과 보호소를 찾을 수 있습니다.</p>
		</div>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li> 
				<h2><button type="button" onclick="location.href='${request.contextPath}/search/searchAnimal'">보호 동물 찾기</button></h2>
			</li>
			<li class="on">
				<h2><button type="button" onclick="location.href='${request.contextPath}/search/searchCenter'">보호소 찾기</button></h2>
			</li>
		</ul>	
				<div class="sch_cont">
					<p>주변의 보호소를 찾아서 <span class="bold">보호중인 동물들도 확인하고, 봉사, 후원방법</span>을 알아보세요.</p>
					<div class="search_form sch_center">
						<form action="" method="">
							<fieldset>
								<g:render template="../address/customInputAddress"></g:render>
								
								<input type="text" class="center_name remove_val" value="보호소명을 입력해주세요">
								<button type="search" class="btn_sch">찾기</button>						
							</fieldset>
						</form>
					</div>
					<div class="list_area">
							<ul class="sort">
								<li class="on">전체</li>
								<li>최근등록순</li>
								<li>추천순</li>
							</ul>
							<g:set var="searchResult" value="${shelterList}" />
							<span>검색결과 <span>${searchCount}</span></span>
							<div class="centerList">
								<g:each in="${searchResult}" var="shelter">
									<section>
										<h1>${shelter.name }</h1>
										<span class="myFav"><span>나를 포함 이 보호소를 관심등록한 수</span>+${UserLikeShelter.countByShelter(shelter)}</span>
										<g:set var="imgShelter" value="${ImgShelter.findByShelter(shelter)}"/>
										<div class="img_cover">
											<img src="${imgShelter?.filepath + '/' + imgShelter?.filename}" alt="보호소모습" width="100%" />
										</div>
										<p>${shelter.introduction }</p>
										<span>${shelter.address}</span>
										<div class="more_info">
											<g:link controller="shelter" action="centerInfo" params="[shelterId:shelter.id]" title='보호소정보 바로가기'>보호소 보기</g:link>
											<button type='button'>입양문의</button>
											<button type='button'>봉사문의</button>
										</div>	
									</section>
								</g:each>
							</div>	
							<label>
								<div class="paginate"><g:paginate total="${searchCount}" max="8" /></div>
							</label>
					</div><!--center list END-->
					
					
				</div><!--sch_cont END-->
			
		
	</div>
	<!-- sub-content // E -->
