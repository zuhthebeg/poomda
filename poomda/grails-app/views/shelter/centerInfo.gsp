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
					<g:render template="../animal/animallist" model="[animalList : Animal.findAllByShelter(shelter,[max:8,offset:0])]"></g:render>
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
			</div>	
			<div class="voluntary">
				<h2>품고있는 활동들</h2>
				<span>등록된 활동 <span>3개</span></span>
				<div class="volunList">
					<g:render template="../service/activityList" model="[type:2, activityList:org.poomda.activity.Activity.findAllByShelter(shelter,[max:2,order:'desc',sort:'dateCreated'])]"/>
				</div>
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