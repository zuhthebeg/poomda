<%@ page import="org.poomda.shelter.*" %>
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

			<!-- active-more-buttonbox // S -->
			<div class="active-more-buttonbox">
				
				<!-- active-more-choice // S -->
				<div class="active-more-choice">
					<g:activeLink controller="sponsor" action="sponsor2" activeClass="on" params="[id:params.id]">
						활동정보 변경
					</g:activeLink>
					<g:activeLink controller="service" action="activityRequestors" activeClass="on" params="[id:params.id]">
						참여신청 관리
					</g:activeLink>
				</div>
				<!-- active-more-choice // E -->
				
				<!-- active-more-2-tab // S -->
				<div class="active-more-2-tab">					
					<ul>
						<li>
							<g:activeLink controller="service" action="activityRequestors" activeClass="on" params="[id:params.id]">
								신청자 <span>(${ActivityParticipants.countByActivityAndStatus(Activity.get(params.id),'REGIST') })</span>
							</g:activeLink>
						</li>
						<li>
							<g:activeLink controller="service" action="activityEntry" activeClass="on" params="[id:params.id]">
								참가자 <span>(${ActivityParticipants.countByActivityAndStatus(Activity.get(params.id),'APPROVAL') })</span>
							</g:activeLink>
						</li>
					</ul>
				</div>
				<!-- active-more-2-tab // E -->
				<!-- active-more-2-joiner // S -->
				<div class="active-more-2-joiner">
					<g:each in="${ActivityParticipants.findAllByActivityAndStatusInList(Activity.get(params.id),['REGIST','REJECT'])}" var="joiner">
						<div>
							<g:set var="defaultImgPath" value="${assetPath(src: 'common/no-image-big2.gif')}" />
							<img src="${joiner.user.profile ? joiner.user.profile : defaultImgPath}" alt="등록한 유저 사진" width=40 height=40 />
							<ul>
								<li>
									<span>닉네임</span> ${joiner.user.nickname}
								</li>
								<li>
									<span>연령대/성별</span> ${joiner.user?.age ? (joiner.user?.age/10).toInteger() : 2}0대  / ${joiner.user?.gender}
								</li>
								<li>
									<span>연락처</span> ${joiner.user.phone}
								</li>
							</ul>
							<div>
								<g:link action="profile" controller="user" params="[id:joiner.user.id]">
									상세프로필
								</g:link>
								<a href="#;" class="modal_up">
									신청서 보기
								</a>
								<div class="question_layer">
									<h2>
										참여신청서
									</h2>
									<div>
										<h3>
											자기소개
										</h3>
										<p>
											${joiner.user.introduction}
										<p>
									</div>
									<div>
										<h3>
											참여동기 및 경험
										</h3>
										<p>
											${joiner.user.activityHistory}
										<p>
									</div>
									<div>
										<h3>
											연락처
										</h3>
										<p>
											${joiner.user.phone}
										<p>
									</div>
									<button type="button" class="send_msg">신청서 제출</button>
									<button type="button" class="close_lyr">닫기</button>
								</div>
								<a href="#" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','APPROVAL')" class="red-bg">
									참가승인
								</a>
							</div>
						</div>
					</g:each>
				</div>
				<!-- active-more-2-joiner // E -->

			</div>
			<!-- main-service-list Program box // E -->

			<div class="sponsor-navbox">
				<a href="#;" class="sponsor-cancle">
					취 소
				</a>
				<a href="#;" class="sponsor-ok">
					모두 승인
				</a>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
<script>
	function requestChangeStatus(activityId, email, status){
		if(!confirm('변경 하시겠습니까?')) return false;
		if(email == '') {alert('로그인 해주세요.');return false;}

		$.ajax({
			url : '../requestChangeStatus',
			data : {activityId:activityId, email : email, status:status},
			method : 'post',
			success : function (data){
				console.log(data);
				if(data == true) location.reload();
				else alert('실패하였습니다.');
			}
		});
	}
</script>	
</body>
</html>