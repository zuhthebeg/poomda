<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
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
						<li>
							활동 및 대상 선택
						</li>
						<li>
							정보입력
						</li>
						<li class="on">
							완료
						</li>
					</ul>
				</div>
				<!-- sponsor-progress // E -->

				<!-- sponsor-finish // S -->
				<div class="sponsor-finish">
					<p>
						활동 등록이 완료되었습니다!
					</p>
					<g:link controller="service" action="outreach" params="[id:activity.id]">
						등록한 활동 보러가기
					</g:link>
				</div>
				<!-- sponsor-finish // E -->

			</div>
			<!-- sponsor-condition // E -->
		</div>
	</div>
	<!-- sub-content // E -->
</body>
</html>