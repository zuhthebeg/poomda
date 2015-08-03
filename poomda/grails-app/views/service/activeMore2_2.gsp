<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="main.css"/>
		<asset:stylesheet src="service.css"/>
		<script src="../js/sub.js"></script>
		
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
					<a href="./active_more.jsp">
						활동정보 변경
					</a>
					<a href="./active_more2.jsp" class="on">
						참여신청 관리
					</a>
				</div>
				<!-- active-more-choice // E -->
				
				<!-- active-more-2-tab // S -->
				<div class="active-more-2-tab">					
					<ul>
						<li>
							<a href="./active_more2_1.jsp">
								신청자 <span>(7)</span>
							</a>
						</li>
						<li>
							<a href="./active_more2_2.jsp" class="on">
								참가자 <span>(7)</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- active-more-2-tab // E -->
				<!-- active-more-2-joiner // S -->
				<div class="active-more-2-joiner">
					<div>
						<img src="../img/common/no-image-big2.gif">
						<ul>
							<li>
								<span>닉네임</span> 간달퐁
							</li>
							<li>
								<span>연령대/성별</span> 10대/남성
							</li>
							<li>
								<span>연락처</span> 010-1111-1111
							</li>
						</ul>
						<div>
							<a href="#;">
								상세프로필
							</a>
							<a href="#;">
								신청서 보기
							</a>
							<a href="#;" class="gray-bg">
								승인취소
							</a>
						</div>
					</div>
					<div>
						<img src="../img/common/no-image-big2.gif">
						<ul>
							<li>
								<span>닉네임</span> 간달퐁
							</li>
							<li>
								<span>연령대/성별</span> 10대/남성
							</li>
							<li>
								<span>연락처</span> 010-1111-1111
							</li>
						</ul>
						<div>
							<a href="#;">
								상세프로필
							</a>
							<a href="#;">
								신청서 보기
							</a>
							<a href="#;" class="gray-bg">
								참가승인
							</a>
						</div>
					</div>
					<div>
						<img src="../img/common/no-image-big2.gif">
						<ul>
							<li>
								<span>닉네임</span> 간달퐁
							</li>
							<li>
								<span>연령대/성별</span> 10대/남성
							</li>
							<li>
								<span>연락처</span> 010-1111-1111
							</li>
						</ul>
						<div>
							<a href="#;">
								상세프로필
							</a>
							<a href="#;">
								신청서 보기
							</a>
							<a href="#;" class="gray-bg">
								참가승인
							</a>
						</div>
					</div>
					<div>
						<img src="../img/common/no-image-big2.gif">
						<ul>
							<li>
								<span>닉네임</span> 간달퐁
							</li>
							<li>
								<span>연령대/성별</span> 10대/남성
							</li>
							<li>
								<span>연락처</span> 010-1111-1111
							</li>
						</ul>
						<div>
							<a href="#;">
								상세프로필
							</a>
							<a href="#;">
								신청서 보기
							</a>
							<a href="#;" class="gray-bg">
								참가승인
							</a>
						</div>
					</div>
				</div>
				<!-- active-more-2-joiner // E -->

			</div>
			<!-- main-service-list Program box // E -->

			<div class="sponsor-navbox">
				<a href="#;" class="sponsor-cancle">
					취 소
				</a>
				<a href="#;" class="sponsor-ok">
					완 료
				</a>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
</body>
</html>