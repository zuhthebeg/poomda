<%@ page import="org.poomda.service.*" %>
<section  class="volunteer">
	<h1>등록한 봉사자</h1>
	<div>
		<div class="vlt_pic">
			<img src="" alt="등록한 봉사자 사진" />
			<button type="button" class="go_msg">쪽지보내기</button>
		</div>
		<table>
			<caption>등록한 봉사자 정보</caption>
			<colgroup>
				<col span="30%">
			<col span="70%">
			</colgroup>
			<tr>
				<th scope="row"><h2>닉네임</h2></th>
				<td>${user?.nickname}</td>
			</tr>
			<tr>
				<th scope="row"><h2>연령대/성별</h2></th>
				<td>${user?.getAgeByBirthday()} / ${user?.gender}</td>
			</tr>
			<tr>
				<th scope="row"><h2>연락처</h2></th>
				<td>${user?.phone }</td>
			</tr>
			<tr>
				<th scope="row"><h2>자기소개</h2></th>
				<td>${user?.introduction}</td>
			</tr>
			<tr>
				<th scope="row"><h2>활동이력</h2></th>
				<td>${user?.activityHistory}</td>
			</tr>
		</table>
	</div>
</section>