<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.activity.*" %>
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
				
				<!-- outreach-tit // S -->
				<div class="outreach-tit">
					<h2>
						${activity.title }
					</h2>
					<div>
						<ul class="user-menu">
							<li>
								<a href="#;" class="user-declaration">
									신고하기
								</a>
							</li>
							<li>
								<a href="#;" class="user-adminpage">
									관리페이지
								</a>
							</li>
						</ul>
						<ul class="user-menu-2">
							<li class="user-ddabong">
								<a href="#;" class="on">
									추천 ${org.poomda.member.UserLikeActivity.countByActivity(activity)}
								</a>
							</li>
							<li class="user-share">
								<a href="#;">
									공유 ${activity.shareCount}
								</a>
							</li>
							<li class="user-interest">
								<a href="#;">
									관심 ${activity.viewCount}+
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- outreach-tit // E -->
				
				<!-- outreach-body // S -->
				<div class="outreach-body">
					<div class="outreach-menu">
						<ul>
							<li>
								<a href="#" class="on">
									활동정보
								</a>
							</li>
							<li>
								<a href="outreach2">
									활동현황 <span>(999+)</span>
								</a>
							</li>
							<li>
								<a href="outreach3">
									댓글  <span>(9)</span>
								</a>
							</li>
							<li>
								<a href="outreach4">
									후기 <span>(0)</span>
								</a>
							</li>
						</ul>
					</div>
					
					<div class="outreach-content">
						<div class="img-content">
							<img src="${assetPath(src: 'service/outreach-testimg.jpg')}">
							<label>
								<input type="file">
							</label>
						</div>
						<div class="information-content">
							<a href="#">
								참여신청하기
							</a>
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
											<g:if test="${activity.shelter}">${activity.shelter}<g:link controller="shelter" action="centerInfo" params="[shelterId:activity.shelter.id]">자세히</g:link></g:if>
											<g:if test="${activity.animal}">${activity.animal}<g:link controller="animal" action="animalInfo" params="[animalId:activity.animal.id]">자세히</g:link></g:if>
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
											<strong>${activity.activityUser.size() }</strong> 일
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
								참여인원 (${activity.activityUser.size()}명)
							</h3>
							<div class="outreach-joinform-3">
							
								<g:each in="${activity.activityUser}" var="aUser">
									<a href="#;">
										<img src="${assetPath(src: 'common/noimage-small.jpg')}"> ${aUser.nickname }
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
					<div>
						<img src="${assetPath(src: 'service/outreach-testimg-2.jpg')}">
					</div>
				</div>
				<!-- outreach-intro // E -->

			</div>
			<!-- outreach-box // E -->
			
		</div>
	</div>
	<!-- sub-content // E -->
</body>
</html>