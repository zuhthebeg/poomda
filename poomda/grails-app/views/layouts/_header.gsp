<%@ page import="org.poomda.member.*" %>
<!-- wrap-m // S -->
<div id="wrap-m">
	<!-- header // S -->
	<header>
		
		<!-- home-menu // S -->
		<div class="home-menu">
			<g:link controller="index">
				PoomDa 전국시설보호소와 동물들을 품다
			</g:link>
			<ul>
				<li>
					<span>
						<sec:ifLoggedIn>
							<g:set var="msgCount" value="${UserMessage.countByUserAndIsRead(User.get(sec.loggedInUserInfo(field: 'id')),false)}" />
							<span ${msgCount > 0 ? 'onclick=openMsgModal()' : ''} >쪽지( ${msgCount} )</span> ${User.get(sec.loggedInUserInfo(field: 'id')).nickname }님
						</sec:ifLoggedIn>
						<sec:ifNotLoggedIn>
							안녕하세요! 품다입니다.
						</sec:ifNotLoggedIn>
					</span>
				</li>
				<sec:ifNotLoggedIn>
				<li>
					<g:link controller="login">로그인</g:link>
					<facebookAuth:connect />
				</li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li>
						<g:link controller="logout">로그아웃</g:link>
					</li> 
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<li>
						<g:link controller="user" action="regist">가입하기</g:link>
					</li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li>
						<g:link controller="user" action="mypage" params="[id:sec.loggedInUserInfo(field: 'id')]">
							마이페이지
						</g:link>
					</li>
				</sec:ifLoggedIn>
			</ul>
			
		</div>
		<!-- home-menu // S -->

		<!-- gnb // S -->
		<nav>
			<ul>
				<li class="gnb-menu-1">
					<g:activeLink controller="shelter" action="regCenter" activeClass="on">보호소 등록하기</g:activeLink>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-2">
					<g:activeLink controller="animal" action="regAnimal" activeClass="on">동물 등록하기	</g:activeLink>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-3">
					<g:activeLink controller="search" action="searchAnimal" activeClass="on">동물/보호소 찾기</g:activeLink>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-4">
					<g:activeLink controller="service" action="service" activeClass="on">봉사/후원참여</g:activeLink>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-5">
					<g:activeLink controller="sponsor" action="sponsor" activeClass="on">봉사/후원등록</g:activeLink>
				</li>
			</ul>
		</nav>
		<!-- gnb // E -->
		
		<!-- notice-bar // S -->
		<div class="notice-bar">
			<div>
				<span>
					Notice
				</span>
				<a href="#;" class="notice-icon">
					품다페이지가 새롭게 오픈되었습니다.
				</a>
				<div>
					홈 &gt; <span></span>
				</div>
			</div>	
		</div>
		<!-- notice-bar // E -->

	</header>
	<!-- header // E -->
</div>
