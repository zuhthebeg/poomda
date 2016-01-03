<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.activity.*" %>
<%@ page import="org.poomda.file.*" %>
<%@ page import="org.poomda.member.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="service.css"/>
		
		
	</head>
	<body>
	<!-- sub-content // S -->
	<div id="sub-content" class="service">
		<div>
			<div>
				<h1>봉사/후원참여</h1>
				<p>직접 봉사활동이나 후원활동에 참여해 보세요</p>
			</div>
		</div>
		<div class="sub-body">

			<!-- outreach-box // S -->
			<div class="outreach-box">
				<g:render template="outreachTitle" model="[activity:activity]"/>
								
				<!-- outreach-body // S -->
				<div class="outreach-body">
					<g:render template="outreachMenu"/>
					
					<div class="outreach-content">
						<div class="img-content">
							<g:set var="imgs" value="${ImgActivity.findAllByActivity(activity) }" />
							<g:if test="${! imgs}"><img src="${assetPath(src: 'common/noimage-big.jpg')}"></g:if>
							<g:each var="imgActivity" in="${imgs}">
								<img src="${imgActivity?.filepath + '/' + imgActivity?.filename}" alt="활동 모습" width="100%"  class="thumb lightbox-photo" data-caption="활동 모습" />
							</g:each>
							<label onclick="$(this).prev().click()"></label>
						</div>
						<div class="information-content">
							<a href="#none" class="modal_up">
								참여신청하기
							</a>
							<sec:ifLoggedIn>
								<g:render template="application" model="[user:User.get(sec.loggedInUserInfo(field: 'id'))]"></g:render>
							</sec:ifLoggedIn>
							<table class="outreach-joinform">
								<colgroup>
									<col width="17%">
									<col width="83%">
								</colgroup>	
								<tbody>
									<tr>
										<th>
											활동대상
										</th>
										<td>
											<g:if test="${activity.shelter}">${activity.shelter} <g:link controller="shelter" action="centerInfo" params="[shelterId:activity.shelter.id]"> 자세히</g:link></g:if>
											<g:if test="${activity.animal}">${activity.animal} <g:link controller="animal" action="animalInfo" params="[animalId:activity.animal.id]"> 자세히</g:link></g:if>
										</td>
									</tr>
									<tr>
										<th>
											모집기간
										</th>
										<td>
											<strong>${activity.period.format( 'yyyy년 M월 dd일 까지' )}</strong>
										</td>
									</tr>
									<tr>
										<th>
											남은시간
										</th>
										<td>
											<strong>${( (activity.period.time - new Date().time)/ (1000*60*60*24) ).toInteger()}</strong> 일
										</td>
									</tr>
									<tr>
										<th>
											활동성격
										</th>
										<td>
											<span>
												청소
											</span>
											<span>
												보수
											</span>
											<span>
												미용
											</span>
											<span>
												차량
											</span>
											<span>
												의료
											</span>
										</td>
									</tr>
								</tbody>
							</table>
							<g:render template="../user/profileCard" model="[user:activity.user,type:2]"></g:render>
							<h3>
								신청인원 (${ActivityParticipants.countByActivity(activity)}명)
								/ 참여인원 (${ActivityParticipants.countByActivityAndStatus(activity,'APPROVAL')}명)
							</h3>
							<div class="outreach-joinform-3">
							
								<g:each in="${ActivityParticipants.findAllByActivityAndStatus(activity,'APPROVAL')?.user}" var="user">
									<a href="#;">
										<g:set var="defaultImgPath" value="${assetPath(src: 'common/noimage-small.jpg')}" />
										<img src="${user.profile ? user.profile : defaultImgPath}" alt="등록한 유저 사진" /> 
										${user.nickname }
									</a>
								</g:each>
							</div>
						</div>
					</div>
				</div>
				<!-- outreach-body // E -->

				<!-- outreach-intro // S -->
				<div class="outreach-intro">
					<h2>
						소개글
					</h2>
					<p>
						${activity.activityInfo}
					</p>
					<!-- 
					<div>
						<img src="${assetPath(src: 'service/outreach-testimg-2.jpg')}">
					</div>
					 -->
				</div>
				<!-- outreach-intro // E -->

			</div>
			<!-- outreach-box // E -->
			
		</div>
	</div>
	<!-- sub-content // E -->
<g:render template="/layouts/message" model="[user:activity.user]"/>	
</body>
</html>