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
						<span>쪽지( 7 )</span> 홍길동님
					</span>
				</li>
				<sec:ifNotLoggedIn>
				<li>
					<g:link controller="login">로그인</g:link>
				</li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li>
						<g:link controller="logout">로그아웃</g:link>
					</li>
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<li>
						<g:link controller="user" action="create">가입하기</g:link>
					</li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li>
						<g:link controller="user" action="show" params="[id:sec.loggedInUserInfo(field: 'id')]">
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
					<g:link controller="shelter" action="regCenter" class="on">
						보호소 등록하기
					</g:link>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-2">
					<g:link controller="animal" action="regAnimal">
						동물 등록하기
					</g:link>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-3">
					<g:link controller="search" action="searchAnimal">
						동물/보호소 찾기
					</g:link>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-4">
					<g:link controller="service" action="service">
						봉사/후원참여
					</g:link>
				</li>
				<li>
					<span></span>
				</li>
				<li class="gnb-menu-5">
					<g:link controller="sponsor" action="sponsor">
						봉사/후원등록
					</g:link>
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