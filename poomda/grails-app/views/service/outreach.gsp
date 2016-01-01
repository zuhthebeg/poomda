<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.activity.*" %>
<%@ page import="org.poomda.file.*" %>
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
								<img src="${imgActivity?.filepath + '/' + imgActivity?.filename}" alt="활동 모습" width="100%" />
							</g:each>
							<label>
								<input type="file">
							</label>
						</div>
						<div class="information-content">
							<a href="#" onclick="requestJoinActivity(${activity.id},'<sec:username/>')">
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
											<strong>${ActivityParticipants.countByActivity(activity) }</strong> 일
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
								참여인원 (${ActivityParticipants.countByActivity(activity)}명)
							</h3>
							<div class="outreach-joinform-3">
							
								<g:each in="${ActivityParticipants.findAllByActivity(activity)?.user}" var="user">
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
<script>
	function requestJoinActivity(activityId, email){
		if(!confirm('참여 신청 하시겠습니까?')) return false;
		if(email == '') {alert('로그인 해주세요.');return false;}

		$.ajax({
			url : '../requestJoinActivity',
			data : {activityId:activityId, email : email},
			method : 'post',
			success : function (data){
				console.log(data);
				if(data == true) location.reload();
				else alert('이미 신청하셨거나, 잘못된 요청입니다.');
			}
		});
	}
</script>
</body>
</html>