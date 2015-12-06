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
					등록된 봉사활동 <span>${org.poomda.activity.Activity.count() } 개</span>
				</p>
			</div>
			<!-- main-service-list Program box // S -->
			<div class="main-service-list">
				
				<g:render template="activityList" model="[type:1, activityList:org.poomda.activity.Activity.list()]"/>
				
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