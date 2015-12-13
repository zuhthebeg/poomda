<%@ page import="org.poomda.service.*" %>
<g:if test="${type == 1 }">
	<section  class="volunteer">
		<h1>등록한 봉사자</h1>
		<div>
			<div class="vlt_pic">
				<g:set var="defaultImgPath" value="${assetPath(src: 'common/noimage-big.jpg')}" />
				<img src="${user.profile ? user.profile : defaultImgPath}" alt="등록한 유저 사진" />
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
					<td>${user?.age ? (user?.age/10).toInteger() : 2}0대  / ${user?.gender}</td>
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
</g:if>

<g:if test="${type == 2 }">
	<h3>
		주최자 정보
	</h3>
	<div class="outreach-host">
		<ul>
			<li>
				<g:set var="defaultImgPath" value="${assetPath(src: 'common/noimage-big.jpg')}" />
				<img src="${user.profile ? user.profile : defaultImgPath}" alt="등록한 유저 사진"     width="120" />
			</li>
			<li>
				<a href="#">
					쪽지보내기
				</a>
			</li>
		</ul>
		<table class="outreach-joinform-2">
			<colgroup>
				<col width="25%">
				<col width="75%">
			</colgroup>	
			<tbody>
				<tr>
					<th>
						닉네임
					</th>
					<td>
						${user?.nickname}
					</td>
				</tr>
				<tr>
					<th>
						연령대/성별
					</th>
					<td>
						${user? (user?.age/10).toInteger() : 2}0대 / ${user?.gender}
					</td>
				</tr>
				<tr>
					<th>
						연락처
					</th>
					<td>
						${user?.phone}
					</td>
				</tr>
				<tr>
					<th>
						자기소개
					</th>
					<td>
						${user?.introduction}
					</td>
				</tr>
				<tr>
					<th>
						활동이력
					</th>
					<td>
						${user?.activityHistory}
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</g:if>