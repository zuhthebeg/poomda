<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.member.*" %>
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
								<a href="#;" class="on serviceTarget" onclick="$('.serviceTarget').removeClass('on');$(this).addClass('on');$('#animalList').show();">
									동 물
								</a>
							</li>
							<li>
								<a href="#;" class="serviceTarget" onclick="$('.serviceTarget').removeClass('on');$(this).addClass('on');$('#shelterList').show();">
									보호소
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- sponsor-choice // E -->

				<!-- sponsor-place // S -->
				<div class="sponsor-place">
					<label>
						<g:select from="${org.poomda.locale.Address.list()}" optionKey="state" name="addressId" noSelection="${['':'지역'] }" value="${params.addressId}" />
					</label>
					<label>
						<select>
							<option selected>
								구 
							</option>
							<option>
								지역
							</option>
							<option>
								지역
							</option>
						</select>
					</label>
					<input type="text" placeholder="보호소명을 입력해 주세요.">
					<div>
						<a href="#;">
							찾기
						</a>
						<a href="#;">
							보호소 신규등록
						</a>
					</div>
				</div>
				<!-- sponsor-place // E -->
				
				<p>
					등록되지 않은 보호소는 신규등록해주세요!
				</p>
			</div>
			<!-- sponsor-condition // E -->
			
			<!-- main-shelter-list Program box // S -->
			<div class="main-shelter-list" id="animalList">
			
<g:each in="${Animal.list([max:8,sort:'dateCreated',order:'desc'])}" var="animal" status="i">
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');" ${i==4 ? 'style=margin:0px;' : ''}>
					<a href="#;" class="main-shelter-count">
						<span class="on"></span>
						${UserLikeAnimal.countByAnimal(animal) }+
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
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
</g:each><%--
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						12
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section>
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						123
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section>
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						999+
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section> 
				
				<section class="marginleft-clear">
					<a href="#;" class="main-shelter-count">
						<span></span>
						999+
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section>
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						12
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section>
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						123
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section>
				<section onclick="$('.checked').removeClass('on'); $(this).find('.checked').addClass('on');">
					<a href="#;" class="main-shelter-count">
						<span></span>
						999+
					</a>
					<a href="#animalList" class="checked">
						<dl>
							<dt>
								<img src="../img/main/shaterlisttast.jpg" alt="말라뮤트 사진">
							</dt>
							<dd>
								<h2>
									말라뮤트
								</h2>
								<p>
									수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음
								</p>
								<span>
									<strong>경기도 남양주시</strong>
								</span>
							</dd>
						</dl>
					</a>
				</section> 
			--%></div>
			<!-- main-shelter-list Program box // E -->

			<div class="sponsor-navbox">
				<g:link  controller="sponsor" action="sponsor2" class="sponsor-next">
					다 음 >
				</g:link>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
	
</body>
</html>