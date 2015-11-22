<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="service.css"/> 
		
		
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

			<!-- service-button-box // S -->
			<div class="service-buttonbox">
				
				<!-- service-choice // S -->
				<div class="service-choice">
					<g:activeLink controller="service" action="Volunteer" activeClass="on">
						봉사활동 찾기
					</g:activeLink>
					<g:activeLink controller="service" action="Sponsored" activeClass="on">
						후원활동 찾기
					</g:activeLink>
				</div>
				<!-- service-choice // E -->
				<p>
					진정한 실천을 하고 있는 아름다운 당신!
				</p>
				
				
				
				<!-- service-place // S -->
				<div class="service-place">
					<label>
						<g:select from="${org.poomda.locale.Address.list()}" optionKey="state" name="addressId" noSelection="${['':'지역'] }" value="${params.addressId}" />
					</label>
					<label>
						<select>
							<option selected>
								구 
							</option>
						</select>
					</label>
					<label>
						<select>
							<option selected>보호소 </option>
							<option>동물 </option>
						</select>
					</label>
					<label>
						<g:select from="${activityTypeList}" optionKey="name" name="activityType" value="${params.activityType}" />
					</label>
					<a href="#;">
						찾기
					</a>
				</div>
				<!-- service-place // E -->

			</div>
			<!-- service-button-box // E -->
			
			<div class="service-results">
				<ul>
					<li>
						<a href="#;" class="on">
							전체
						</a>
					</li>
					<li>
						<a href="#;">
							최근등록순
						</a>
					</li>
					<li>
						<a href="#;">
							추천순
						</a>
					</li>
					<li>
						<a href="#;">
							참여순
						</a>
					</li>
					<li>
						<a href="#;">
							임박순
						</a>
					</li>
				</ul>
				<p>
					등록된 봉사활동 <span>8 개</span>
				</p>
			</div>
			<!-- main-service-list Program box // S -->
			<div class="main-service-list">
				<section>
					<a href="#;" class="main-service-case-3">
						<img src="${assetPath(src: 'common/noimage-small.jpg')}">
						반달아빠
					</a>
					<a href="./outreach.jsp">
						<dl>
							<dt>
								<img src="${assetPath(src: 'common/noimages.gif')}" alt="NO IMAGE">
							</dt>
							<dd>
								<div class="main-service-tit">
									<h2>
										[2차] 반달이네 보호소 정기봉사활동!
									</h2>
									<p>
										보호소에 불이나서 여러가지 도움이 필요합니다. 많은 분들의 참여를 기다리겠습니다.<br>
										보호소에 불이나서 여러가지 도움이 필요합니다. 많은 분들의 참여를 기다리겠습니다.
									</p>
								</div>
								<div class="main-service-notice">
									<dl>
										<dt>
											<ul>
												<li>
													<strong>모집기간</strong> 2014년 5월 25일 까지
												</li>
												<li>
													<strong>장 소</strong> 경기도 고양시 시청 앞
												</li>
											</ul>
										</dt>
										<dd>
											<span>
												장소
											</span>
											<span>
												보수
											</span>
											<span>
												미용
											</span>
											<span>
												차량
											</span>	
											<span>
												의료
											</span>								
										</dd>
									</dl>
								</div>
								<span>
									봉사<br>
									활동
								</span>
							</dd>
							<dd class="main-service-result">
								<div>
									<span class="main-service-tracking">
										완료
									</span>
									<br>
									<span class="main-service-joinpeople">
										참여인원
									</span>
									<br>
									<span class="main-service-people">
										10 명
									</span>
								</div>
							</dd>
						</dl>
					</a>
				</section>

				
				<section>
					<a href="#;" class="main-service-case-1">
						<span></span>
						999+
					</a>
					<a href="#;" class="main-service-case-2">
						<span></span>
						999+
					</a>
					<a href="#;" class="main-service-case-3">
						<img src="${assetPath(src: 'common/noimage-small.jpg')}">
						반달아빠
					</a>
					<a href="./outreach.jsp">
						<dl>
							<dt>
								<img src="${assetPath(src: 'main/shaterlisttast.jpg')}" alt="말라뮤트 사진">
							</dt>
							<dd>
								<div class="main-service-tit">
									<h2>
										[2차] 반달이네 보호소 정기봉사활동!
									</h2>
									<p>
										보호소에 불이나서 여러가지 도움이 필요합니다. 많은 분들의 참여를 기다리겠습니다.<br>
										보호소에 불이나서 여러가지 도움이 필요합니다. 많은 분들의 참여를 기다리겠습니다.
									</p>
								</div>
								<div class="main-service-notice">
									<dl>
										<dt>
											<ul>
												<li>
													<strong>모집기간</strong> 2014년 5월 25일 까지
												</li>
												<li>
													<strong>장 소</strong> 경기도 고양시 시청 앞
												</li>
											</ul>
										</dt>
										<dd>
											<span>
												장소
											</span>
											<span>
												보수
											</span>
											<span>
												미용
											</span>
											<span>
												차량
											</span>	
											<span>
												의료
											</span>								
										</dd>
									</dl>
								</div>
								<span>
									봉사<br>
									활동
								</span>
							</dd>
							<dd class="main-service-result">
								<div>
									<span class="main-service-tracking">
										완료
									</span>
									<br>
									<span class="main-service-joinpeople">
										참여인원
									</span>
									<br>
									<span class="main-service-people">
										10 명
									</span>
								</div>
							</dd>
						</dl>
					</a>
				</section>
			</div>
			<!-- main-service-list Program box // E -->
			
			<!-- pagenav // S -->
			<div class="pagenav">
				<a href="#;">
					&lt;
				</a>
				<a href="#;" class="on">
					1
				</a>
				<a href="#;">
					2
				</a>
				<a href="#;">
					3
				</a>
				<a href="#;">
					4
				</a>
				<a href="#;">
					5
				</a>
				<a href="#;">
					6
				</a>
				<a href="#;">
					7
				</a>
				<a href="#;">
					8
				</a>
				<a href="#;">
					9
				</a>
				<a href="#;">
					10
				</a>
				<a href="#;">
					&gt;
				</a>
			</div>
			<!-- pagenav // E -->

		</div>
	</div>
	<!-- sub-content // E -->
	
</body>
</html>