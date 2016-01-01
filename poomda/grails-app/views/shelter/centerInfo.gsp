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
			<h1>보호소 정보</h1>
			<p>보호소 정보를 확인하세요.</p>
		</div>
		<aside>
			<button type="button">신고하기</button>
			<g:link action="regCenterModify" params="[id:shelter.id]" title="관리페이지 바로가기">관리페이지</g:link>
		</aside>	
		<section class="info_container">
			<h1>${shelter}</h1>
			<ul>
				<li><span>추천 <span class="bold">777</span></span></li>
				<li><span>공유 <span class="bold">777</span></span></li>
				<li><span>관심 <span class="bold">777</span></span></li>
			</ul>
			<div class="info_contents">
				<section class="center_image">
					<h1>보호소 사진</h1>
					<ul>
						<g:each var="imgShelter" in="${ImgShelter.findAllByShelter(shelter)}">
						<li>
							<img src="${imgShelter?.filepath + '/' + imgShelter?.filename}" alt="보호소모습" width="100%" />
							<button type="button">확대보기</button>
						</li>
						</g:each>
						<%--<li><img src="../img/main/shaterlisttast.jpg" alt="보호소사진2" /><button type="button">확대보기</button></li>
						<li><img src="" alt="보호소사진3" /><button type="button">확대보기</button></li>	--%>
					</ul>
				</section>
				<section class="center_inform">
					<h1>보호소 상세정보</h1>
					<div class="btn_wrap">
						<button type="button">입양문의</button>
						<div class="question_layer">
								<h2>입양문의 방법</h2>
								<div>
									<g:set var="defaultImgPath" value="${assetPath(src: 'search/img_spl.png')}" />
									<img src="${shelter.user.profile ? shelter.user.profile : defaultImgPath}" alt="봉사등록자 이미지"  />
									<span>${shelter.user.nickname} / ${shelter.user? (shelter.user?.age/10).toInteger() : 2}0대  ${shelter.user?.gender}성</span>
									<p>
										${shelter.serviceInquiry}
									</p>
								</div>
								<button type="button" class="send_msg">쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
						<button type="button">봉사문의</button>
						<div class="question_layer">
								<h2>봉사문의 방법</h2>
								<div>
									<g:set var="defaultImgPath" value="${assetPath(src: 'search/img_spl.png')}" />
									<img src="${shelter.user.profile ? shelter.user.profile : defaultImgPath}" alt="봉사등록자 이미지"  />
									<span>${shelter.user.nickname} / ${shelter.user? (shelter.user?.age/10).toInteger() : 2}0대  ${shelter.user?.gender}성</span>
									<p>
										${shelter.adoptionInquiry}
									</p>
								</div>
								<button type="button" class="send_msg">쪽지보내기</button>
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
							<th scope="row"><h2>보호소</h2></th>
							<td>${shelter.name}</td>
							<th scope="row"><h2>지역</h2></th>
							<td>${shelter.address}</td>
						</tr>
						<tr>
							<th scope="row"><h2>소개</h2></th>
							<td colspan="3">${shelter.introduction}</td>
						</tr>
						<tr>
							<th scope="row"><h2>대표사이트</h2></th>
							<td colspan="3"><a class="url" href="${shelter.siteName}" target="_blank" title="사이트 새창열림">${shelter.siteName}</a></td>
						</tr>
					</table>
					<g:render template="../user/profileCard" model="[user:shelter.user,type:1]"></g:render>
				</section>
			</div>	
			<div class="list_area ">
				<h2>품고있는 동물들</h2>
				<span class="animal_num">등록된 동물 <span>${Animal.countByShelter(shelter)} 마리</span></span>	
				<div class="animalList">
					<g:render template="../animal/animallist" model="[animalList : Animal.findAllByShelter(shelter,params)]"></g:render>
				</div>	<!--section END-->
				
				<label>
					<div class="paginate"><g:paginate total="${Animal.countByShelter(shelter)}" max="4" params="[shelterId:params.shelterId]" /></div>
				</label>
			</div>	
			<div class="voluntary">
				<h2>품고있는 활동들</h2>
				<span>등록된 활동 <span>${Activity.countByShelter(shelter)}개</span></span>
				<div class="volunList">
					<g:render template="../service/activityList" model="[type:2, activityList:Activity.findAllByShelter(shelter,[max:2,order:'desc',sort:'dateCreated'])]"/>
				</div>
				<label>
					<div class="paginate"><g:paginate controller="shelter" action="centerInfo" total="${Activity.countByShelter(shelter)}" max="4" /></div>
				</label>
			</div><!--voluntary END-->
			<div class="reply">
				<h2>댓글</h2>
				<span>등록된 댓글 <span>3개</span></span>
			</div>	
			
		</section>
		
		

	<!-- sub-content // E -->
</div>
</body>
</html>