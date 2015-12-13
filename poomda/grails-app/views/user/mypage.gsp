<%@ page import="org.poomda.service.*"%>
<%@ page import="org.poomda.animal.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to Poomda</title>
<asset:stylesheet src="regist.css" />

</head>
<body>

	<form action="registOk" id="regForm" method="post" enctype="multipart/form-data">
		<section id="join">
			<!-- 본문 영역 시작 -->
			<div class="sub_tab">
				<h2>프로필 보기</h2>
			</div>
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
			<div class="info_btn">
				<a href="#" >쪽지보내기</a>
			</div>
		</section>
		<!-- 본문 영역 끝 -->
	</form>
</body>
</html>