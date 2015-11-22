<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
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
			<g:link action="regCenterModify" params="[id:animal.id]" title="관리페이지 바로가기">관리페이지</g:link>
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
							<img src="${imgAnimal?.filepath + '/' + imgAnimal?.filename}" alt="보호소모습" width="100%" />
							<button type="button">확대보기</button>
						</li>
						</g:each>
						<%--<li><img src="../img/main/shaterlisttast.jpg" alt="보호소사진2" /><button type="button">확대보기</button></li>
						<li><img src="" alt="보호소사진3" /><button type="button">확대보기</button></li>	--%>
					</ul>
				</section>
				<section class="center_inform">
					<h1>보호동물 상세정보</h1>
					<div class="btn_wrap">
						<button type="button">입양문의</button>
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
								<button type="button" class="send_msg" onclick="">쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
						<button type="button">봉사문의</button>
						<div class="question_layer">
								<h2>봉사문의 방법</h2>
								<div>
									<img src="${assetPath(src: 'search/img_spl.png')}" alt="봉사등록자 이미지" />
									<span>${animal.user?.nickname} / ${animal.user.getAgeByBirthday()}${animal.user.gender}</span>
									<p>
										봉사는 페이지에 있는 대표 사이트 다음카페로 오셔서<br />
										봉사신청을 하셔야 합니다.
									</p>
								</div> 
								<button type="button" class="send_msg" onclick="$('.close_lyr').click();openSendMsgModal()" >쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
					</div>	
					<table>
						<caption>보호소 정보</caption>
						<colgroup>
							<col span="15%" />
							<col span="35%" />
							<col span="15%" />
							<col span="35%" />
						</colgroup>
						<tr> 
							<th scope="row"><h2>이름</h2></th>
							<td>${animal.name} ${animal.breed }</td>
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
					</table>
					<g:if test="${animal.user}">
						<g:render template="../user/profileCard" model="[animal:animal.user]"></g:render>
					</g:if>
				</section>
			</div>	
		</section>
	<!-- sub-content // E -->
</div>
</body>
</html>