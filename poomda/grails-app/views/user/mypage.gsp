<%@ page import="org.poomda.service.*"%>
<%@ page import="org.poomda.animal.*"%>
<%@ page import="org.poomda.activity.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>Welcome to Poomda</title>
	<asset:stylesheet src="regist.css" />
	<asset:stylesheet src="service.css"/>
</head>
<body>
	<div id="sub-content" class="service">
		<div>
			<div>
				<h1>마이페이지</h1>
				<p>활동 내역을 확인 하실 수 있습니다.</p>
			</div>
		</div>
		<div class="sub-body">

			<!-- active-more-buttonbox // S -->
			<div class="active-more-buttonbox">
				
				<div class="active-more-2-tab">					
					<ul>
						<li>
							<a href="#none" data-tab="#profile" class="btn_mypage_tab on" onclick="$('.btn_mypage_tab').removeClass('on');$(this).addClass('on');$('.mypage_tabs').hide();$($(this).data('tab')).show()">
								내 프로필
							</a>
						</li>
						<li>
							<a href="#none" data-tab="#message" class="btn_mypage_tab" onclick="$('.btn_mypage_tab').removeClass('on');$(this).addClass('on');$('.mypage_tabs').hide();$($(this).data('tab')).show()">
								쪽지
							</a>
						</li>
						<li>
							<a href="#none" data-tab="#activity" class="btn_mypage_tab" onclick="$('.btn_mypage_tab').removeClass('on');$(this).addClass('on');$('.mypage_tabs').hide();$($(this).data('tab')).show()">
								내 활동
							</a>
						</li>
					</ul>
				</div>
				
				<div class="mypage_tabs" id="profile">
					<form action="registOk" id="regForm" method="post" enctype="multipart/form-data">
						<div class="info_wrap">
							<section class="volunteer">
								<div>
								
									<div class="vlt_pic" style="width:30%;background-position: center;background-size: contain;
									${user.profile ? 'background-image:url(\''+user.profile+'\')' : ''}">
										<a href="#" class="imgAddBtn" onclick="$(this).next().click()">+</a>
										<input name="imgMember" type="file" onchange="uploadImgSetting(this);$('#profile').value();">
									</div>
									<table style="margin-left:50px;">
										<caption>등록한 봉사자 정보</caption>
										<colgroup>
											<col span="30%">
										<col span="70%">
										</colgroup>
										<tr>
											<th scope="row"><h2>닉네임</h2></th>
											<td>${user.nickname }</td>
										</tr>
										<tr>
											<th scope="row"><h2>연령대</h2></th>
											<td>${user.age }</td>
										</tr>
										<tr>
											<th scope="row"><h2>성별</h2></th>
											<td>${user.gender}자 </td>
										</tr>
										
										<tr>
											<th scope="row"><h2>연락처</h2></th>
											<td>${user.phone }</td>
										</tr>
										<tr>
											<th scope="row"><h2>자기소개</h2></th>
											<td>${user.introduction }</td>
										</tr>
										<tr>
											<th scope="row"><h2>활동이력</h2></th>
											<td>${user.activityHistory}</td>
										</tr>
									</table>
								</div>
							</section>
						</div>
					</form>
				</div>
				
				<div class="mypage_tabs" id="message" style="display: none;">
					<table>
						<tr>
							<th>보낸사람</th>
							<th>내용</th>
							<th>보낸날짜</th>
						</tr>
						<g:each in="${org.poomda.member.UserMessage.findAllByUser(user) }" var="msg">
							<tr>
								<td>${msg.sendUser}</td>
								<td>${msg.content}</td>
								<td>${msg.dateCreated}</td>
							</tr>
						</g:each>
					</table>
				</div>
				<div class="mypage_tabs" id="activity" style="display: none;">
					<div class="main-service-list">
						<g:render template="../service/activityList" model="[type:1, activityList:Activity.getAll(ActivityParticipants.findAllByUser(user).activity.id)]"/>
					</div>
				</div>
				
			</div>
		</div>
	</div>

</body>
</html>