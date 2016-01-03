<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<%@ page import="org.poomda.activity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="search.css"/>
		
		
	</head>
	<body>
<!-- sub-content // S -->
	<div id="sub_content" class="center_info">
		<div>
			<h1>동물 정보</h1>
			<p>보호중인 동물의 정보를 확인하세요.</p>
		</div>
		<aside>
			<button type="button">신고하기</button>
			<g:if test="${sec?.loggedInUserInfo(field: 'id').toString().equals(animal.user.id.toString())}">
				<g:link action="manageAnimal" params="[id:animal.id]" title="관리페이지 바로가기">관리페이지</g:link>
			</g:if>
		</aside>	
		<section class="info_container">
			<h1>${shelter}</h1>
			<ul>
				<li><span>추천 <span class="bold">${animal.getLikeCount()}</span></span></li>
				<li><span>공유 <span class="bold">777</span></span></li>
				<li><span class="on">관심 <span class="bold"> ${animal.updateViewCount(1)}</span></span></li>
			</ul>
			<div class="info_contents">
				<section class="center_image">
					<h1>동물 사진</h1>
					<ul>
						<g:each var="imgAnimal" in="${ImgAnimal.findAllByAnimal(animal)}">
						<li>
							<img src="${imgAnimal?.filepath + '/' + imgAnimal?.filename}" alt="동물 모습" width="100%" class="thumb lightbox-photo" data-caption="동물모습"/>
							<button type="button" onclick="$(this).prev().click()">확대보기</button>
						</li>
						</g:each>
						<%--<li><img src="../img/main/shaterlisttast.jpg" alt="보호소사진2" /><button type="button">확대보기</button></li>
						<li><img src="" alt="보호소사진3" /><button type="button">확대보기</button></li>	--%>
					</ul>
				</section>
				<section class="center_inform">
					<h1>보호동물 상세정보</h1>
					<div class="btn_wrap">
						<button type="button" >입양문의</button>
						<div class="question_layer">
								<h2>입양문의 방법</h2>
								<div>
									<img src="${assetPath(src: 'search/img_spl.png')}" alt="봉사등록자 이미지" />
									<span>${animal.user?.nickname} / ${animal.user.getAgeByBirthday()}${animal.user.gender}</span>
									<p>
										저에게 쪽지를 보내주시거나 카카오톡 아이디<br />
										Bacehee로 연락주시면 자세히 안내해 드리겠습니다.<br />
										혹은 보호소 대표 카페로 오시면 됩니다.
									</p>
								</div>
								<button type="button" class="send_msg">쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
						<g:if test="${animal.shelter}">
							<button type="button" onclick="location.href='${request.contextPath}/shelter/centerInfo?shelterId=${animal.shelter.id }';">보호소 보러가기</button>
						</g:if>
					</div>	
					<table>
						<caption>보호 동물 정보</caption>
						<colgroup>
							<col span="15%" />
							<col span="35%" />
							<col span="15%" />
							<col span="35%" />
						</colgroup>
						<tr> 
							<th scope="row"><h2>이름</h2></th>
							<td>${animal.name ?: animal.breed}</td>
							<th scope="row"><h2>상태</h2></th>
							<td>${animal.status }</td>
						</tr>
						<tr>
							<th scope="row"><h2>나이/성별</h2></th>
							<td>${animal.age} / ${animal.gender}</td>
							<th scope="row"><h2>특징</h2></th>
							<td>${animal.furColor} / ${animal.feature}</td>
						</tr>
						<tr>
							<th scope="row"><h2>주소</h2></th>
							<td colspan="3">${animal.shelter ? animal.shelter.name : animal.tempShelter}</td>
						</tr>
						<tr>
							<th scope="row"><h2>입양 문의</h2></th>
							<td colspan="3">${animal.adoptionInquiry}</td>
						</tr>
						<g:if test="${animal.shelter}">
							<tr>
								<th scope="row">보호중인 보호소</th>
								<td colspan="3"><g:link controller="shelter" action="centerInfo" params="[shelterId:animal.shelter.id]">${animal.shelter}</g:link></td>
							</tr>
						</g:if>
					</table>
					<g:if test="${animal.user}">
						<g:render template="../user/profileCard" model="[user:animal.user,type:1]"></g:render>
					</g:if>
					
				</section>
			</div>	
			<g:if test="${animal.shelter}">
				<div class="list_area ">
					<h2>보호소에 함께 있는 동물들</h2>
					<span class="animal_num">함께 등록된 동물 <span>${Animal.countByShelter(animal.shelter)} 마리</span></span>	
					<div class="animalList">
						<g:render template="../animal/animallist" model="[animalList : Animal.findAllByShelter(animal.shelter,params)]"></g:render>
					</div>	<!--section END-->
					
					<label>
						<div class="paginate"><g:paginate total="${Animal.countByShelter(animal.shelter)}" max="8" params="[animalId:params.animalId]" /></div>
					</label>
				</div>	
			</g:if>
			
			<div class="voluntary">
				<h2>품고있는 활동들</h2>
				<span>등록된 활동 <span>${Activity.countByAnimal(animal)}개</span></span>
				<div class="volunList">
					<g:render template="../service/activityList" model="[type:2, activityList:Activity.findAllByAnimal(animal,params)]"/>
				</div>
				<label>
					<div class="paginate"><g:paginate total="${Activity.countByAnimal(animal)}" max="4" /></div>
				</label>
			</div><!--voluntary END-->	
		</section>
	<!-- sub-content // E -->
</div>
<g:render template="/layouts/message" model="[user:animal.user]"/>	
</body>
</html>