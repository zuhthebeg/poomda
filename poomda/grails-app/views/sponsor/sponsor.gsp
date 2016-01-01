<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.member.*" %>
<%@ page import="org.poomda.file.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="sponsor.css"/>
		
	</head>
	<body>
	<!-- sub-content // S -->
	<div id="sub-content" class="sponsor">
		<div>
			<div>
				<h1>봉사/후원등록</h1>
				<p>봉사/후원을 동록해 활동해 보세요</p>
			</div>
		</div>
		<div class="sub-body">

			<!-- sponsor-condition // S -->
			<div class="sponsor-condition">
				
				<!-- sponsor-progress // S -->
				<div class="sponsor-progress">
					<ul>
						<li class="on">
							활동 및 대상 선택
						</li>
						<li>
							정보입력
						</li>
						<li>
							완료
						</li>
					</ul>
				</div>
				<!-- sponsor-progress // E -->

				<!-- sponsor-choice // S -->
				<div class="sponsor-choice">
					<div class="sponsor-category">
						<h2>
							활동 종류
						</h2>
						<ul>
							<li>
								<a href="#;" class="on activityType" onclick="$('.activityType').removeClass('on');$(this).addClass('on');$('#activityType').val('Volunteer')">
									봉사활동
								</a>
							</li>
							<li>
								<a href="#;" class="activityType" onclick="$('.activityType').removeClass('on');$(this).addClass('on');$('#activityType').val('Sponsored')">
									후원활동
								</a>
							</li>
						</ul>
						<input type="hidden" name="activityType" id="activityType" value="Volunteer" />
					</div>
					<div class="sponsor-object">
						<h2>
							봉사 대상
						</h2>
						<ul>
							<li>
								<a href="#;" class="on serviceTarget" onclick="$('.serviceTarget').removeClass('on');$(this).addClass('on');$('.targetList').hide();$('#animalList').show();$('#target').val('Animal')">
									동 물
								</a>
							</li>
							<li>
								<a href="#;" class="serviceTarget" onclick="$('.serviceTarget').removeClass('on');$(this).addClass('on');$('.targetList').hide();$('#shelterList').show();$('#target').val('Shelter')">
									보호소
								</a>
							</li>
						</ul>
						<input type="hidden" name="target" id="target" value="Animal" />
					</div>
				</div>
				<!-- sponsor-choice // E -->

				<!-- sponsor-place // S -->
				<div class="sponsor-place">
					<g:render template="../address/selectInputAddress"></g:render>
					
					<input type="text" placeholder="보호소명을 입력해 주세요.">
					<div>
						<a href="#;">
							찾기
						</a>
						<g:link controller="shelter" action="regCenter">
							보호소 신규등록
						</g:link>
					</div>
				</div>
				<!-- sponsor-place // E -->
				
				<p>
					등록되지 않은 보호소는 신규등록해주세요!
				</p>
			</div>
			<!-- sponsor-condition // E -->
			
			<!-- main-shelter-list Program box // S -->
			<div class="main-shelter-list targetList" id="animalList">
				<g:each in="${Animal.list([max:8,sort:'dateCreated',order:'desc'])}" var="animal" status="i">
					<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');" ${i==4 ? 'style=margin:0px;' : ''}>
						<a href="#;" class="main-shelter-count">
							<span class="on"></span>
							${UserLikeAnimal.countByAnimal(animal) }+
						</a>
						<g:set var="imgAnimal" value="${ImgAnimal.findByAnimal(animal)}" />
						<a href="#none" class="checked" onclick="$('#targetValue').val('${animal.id}')">
							<dl>
								<dt style="overflow: hidden;">
									<img src="${imgAnimal ? imgAnimal?.filepath + '/' + imgAnimal?.filename : ''}" alt="동물 사진" width="100%" />
								</dt>
								<dd>
									<h2>
										${animal}
									</h2>
									<p>${animal.gender } / ${animal.age } / ${animal.breed}-${animal.feature}</p>
									<span>
										<strong>${animal.shelter?.address}</strong>
									</span>
								</dd>
							</dl>
						</a>
					</section>
				</g:each>
				<input type="hidden" name="targetValue" id="targetValue" value=""/>
			</div>
			<!-- main-shelter-list Program box // E -->


			<!-- main-shelter-list Program box // S -->
			<div class="main-shelter-list targetList" id="shelterList" style="display: none;">
				<g:each in="${Shelter.list([max:8,sort:'dateCreated',order:'desc'])}" var="shelter" status="i">
					<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');" ${i==4 ? 'style=margin:0px;' : ''}>
						<a href="#;" class="main-shelter-count">
							<span class="on"></span>
							${UserLikeShelter.countByShelter(shelter) }+
						</a>
						<a href="#none" class="checked" onclick="$('#targetValue').val('${shelter.id}')">
							<dl>
								<dt style="overflow: hidden;">
									<g:set var="imgShelter" value="${ImgShelter.findByShelter(shelter)}"/>
									<img src="${imgShelter ? imgShelter?.filepath + '/' + imgShelter?.filename : ''}" alt="보호소 사진" width="100%" />
								</dt>
								<dd>
									<h2>
										${shelter}
									</h2>
									<p>${shelter.name } / ${shelter.siteName}</p>
									<span>
										<strong>${shelter?.address}</strong>
									</span>
								</dd>
							</dl>
						</a>
					</section>
				</g:each>
				<input type="hidden" name="targetValue" id="targetValue" value=""/>
			</div>
			<!-- main-shelter-list Program box // E -->
			
			<div class="sponsor-navbox">
				<a href="#sponsor2" onclick="location.href='sponsor2?activityType='+$('#activityType').val()+'&target='+$('#target').val()+'&targetValue='+$('#targetValue').val();" class="sponsor-next">
					다 음 >
				</a>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
	
</body>
</html>