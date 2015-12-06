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
		<input	type="hidden" name="facebookID" value="${params.facebook_id}" /> 
		<input	type="hidden" name="profile" id="profile" value="${params.profile }" />
		<input	type="hidden" name="username" value="${params.email }" />

		<section id="join">
			<!-- 본문 영역 시작 -->
			<div class="sub_tab">
				<div class="tab_next">
					<a href="#"><span></span>필수정보 입력</a><span class="bar_next"></span>
				</div>
				<div class="tab_progress">
					<a href="#"><span></span>추가정보 입력</a><span class="bar_next"></span>
				</div>
				<div class="tab_next">
					<a href="#"><span></span>완료</a>
				</div>
			</div>
			<div class="info_wrap">
				<section class="volunteer">
						<div>
							<div class="vlt_pic" style="width:30%;background-position: center;background-size: contain;
							${params.profile ? 'background-image:url(\''+params.profile+'\')' : ''}">
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
									<td>${params.nick }
										<input type="hidden" value="${params.nick }" name="nickname" />
									</td>
								</tr>
								<tr>
									<th scope="row"><h2>연령대</h2></th>
									<td><g:select from="${1..80}" value="20" name="age"/></td>
								</tr>
								<tr>
									<th scope="row"><h2>성별</h2></th>
									<td><input type="radio" name="gender" value="남" /> 남자   <input type="radio" name="gender" value="여"/> 여자 </td>
								</tr>
								
								<tr>
									<th scope="row"><h2>연락처</h2></th>
									<td><input type="text" name="phone" /></td>
								</tr>
								<tr>
									<th scope="row"><h2>자기소개</h2></th>
									<td><textarea name="introduction"></textarea></td>
								</tr>
								<tr>
									<th scope="row"><h2>활동이력</h2></th>
									<td><textarea name="activityHistory"></textarea></td>
								</tr>
							</table>
						</div>
				</section>
			</div>
			<div class="info_btn">
				<a href="#" onclick="$('#regForm').submit();">다음</a>
			</div>
		</section>
		<!-- 본문 영역 끝 -->
	</form>
</body>
</html>