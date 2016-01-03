<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
	</head>
	<body>
	<!-- main-content // S -->
	<div id="main-content">
		<article>
			<div>
				<span>${Shelter.count() }</span> 개 보호소<br>
				<span>${Animal.count() }</span> 마리 동물들을 품고 있습니다.
			</div>
		</article>		
		
		
		<div class="main-body">

			<p>최근 등록된 동물</p>
			
			<!-- main-shelter-list Program box // S -->
			<div class="main-shelter-list">
				<g:each in="${Animal.list([max:4,sort:'dateCreated',order:'desc']) }" var="animal" status="i">
					<section>
						<a href="#;" class="main-shelter-count">
							<span ${animal.getLikeCount() < 10 ?'': 'class="on"' }></span>
							${animal.getLikeCount() < 10 ? animal.getLikeCount() : 10+'+' }
						</a>
						<g:link controller='animal' action="animalInfo" params="[animalId:animal?.id]" title='등록 동물 바로가기' class="btn_blue">
							<dl>
								<dt>
									<div class="img_cover">
										<g:set var="imgAnimal" value="${ImgAnimal.findByAnimal(animal)}" />
										<img src="${imgAnimal ? imgAnimal?.filepath + '/' + imgAnimal?.filename : ''}" alt="동물 사진" width="100%" />
									</div>
									
									<g:set var="status1" value="${animal.status.size() !=3 ? animal.status.substring(0,2) : animal.status}" />
									<g:set var="status2" value="${animal.status.size() > 2 && animal.status.size() !=3 ? animal.status.substring(2,animal.status.size()) : ''}" />
									<span class="main-shelter-case-1">
										<span style="display: block;${!status2 ? 'margin-top:10px;' : ''}">
										${status1}<br/>${status2}
										</span>
									</span>
								</dt>
								<dd>
									<h2>
										${animal.name}
									</h2>
									<p>
										${animal.gender} / ${animal.age } / ${animal.furColor}-${animal.feature}
									</p>
									<span>
										<strong>남양주 보호소</strong>(경기-남양주)
									</span>
								</dd>
							</dl>
						</g:link>
					</section>
				</g:each>
			</div>
			<!-- main-shelter-list Program box // E -->

			
			<p>최근 등록된 활동</p>
			
			<!-- main-service-list Program box // S -->
			<div class="main-service-list">
				<g:render template="../service/activityList" model="[type:1, activityList:org.poomda.activity.Activity.list([max:2,order:'desc',sort:'dateCreated'])]"/>
			</div>
			<!-- main-service-list Program box // E -->

			<!-- main-event Program box // S -->
			<div class="main-event">

				<!-- Fackbook Like box // S -->
				<section class="main-event-box-1">
					<div>
						<h3>
							Fackbook
						</h3>
						<a href="#">
							MORE >
						</a>
					</div>
					<div id="fb-root"></div>
					<script>(function(d, s, id) {
					  var js, fjs = d.getElementsByTagName(s)[0];
					  if (d.getElementById(id)) return;
					  js = d.createElement(s); js.id = id;
					  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.3";
					  fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));</script>
					<div class="fb-like" data-href="https://www.facebook.com/pawinhand" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
				</section>
				<!-- Fackbook Like box // E -->

				<!-- Paw In Hand apk download box // S -->
				<section class="main-event-box-2">
					<div>
						<h3>
							Paw In Hand
						</h3>
						<a href="#">
							MORE >
						</a>
					</div>
					<a href="#">
						포인핸드 - 유기동물 입양 & 실종동물 찾기<br>
						<span>
							2015.04.30
						</span>
					</a>
					<p>
						전국 보호소의 유기정보를 실시간으로 알려주는<br>
						포인핸드앱을 다운로드 하세요!
					</p>
				</section>
				<!-- Paw In Hand apk download box // E -->

			</div>
			<!-- main-event Program box // E -->
		</div>
	</div>
	<!-- main-content // E -->
</html>

