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

			<!-- outreach-box // S -->
			<div class="outreach-box">
				<g:render template="outreachTitle" model="[activity:activity]"/>
								
				<!-- outreach-body // S -->
				<div class="outreach-body">
					<g:render template="outreachMenu"/>
					
					<!-- 업로드 // S -->
					<div class="outreach-upload-2">
						<span>
							<img src="../img/service/reply.jpg">
						</span>
						<textarea></textarea>
						<ul>
							<li>
								<a href="#">
									사진첨부
								</a>
							</li>
						</ul>
					</div>
					<!-- 업로드 // E -->

				</div>

				<!-- outreach-intro // S -->
				<div class="outreach-intro">
					<h2>
					</h2>
					<!-- 내용 화살표 버튼 토글 // S -->
					<div class="outreach-intro-body">

						<!-- 댓글2 // S -->
						<div class="outreach-reply-2">
							<div>
								<img src="../img/common/noimage-small2.jpg">
								<dl>
									<dt>
										간달풍  <span>1시간전</span><a href="#;"></a>
									</dt>
									<dd>
										와우!! 최은영님 최고!!
									</dd>
								</dl>
								<ul class="reply-reply">
									<li>
										<img src="../img/common/noimage-small2.jpg">
										<dl>
											<dt>
												간달풍  <span>1시간전</span><a href="#;"></a>
											</dt>
											<dd>
												와우!! 최은영님 최고!!
											</dd>
										</dl>
									</li>
									<li class="before-none">
										<div>
											<input type="text" placeholder="댓글을 남겨 주세요">
											<a href="#;">
												등록하기
											</a>
										</div>
									</li>
									<li>
										<img src="../img/common/noimage-small2.jpg">
										<dl>
											<dt>
												간달풍  <span>1시간전</span><a href="#;"></a>
											</dt>
											<dd>
												와우!! 최은영님 최고!!
											</dd>
										</dl>
									</li>
									<li>
										<img src="../img/common/noimage-small2.jpg">
										<dl>
											<dt>
												간달풍  <span>1시간전</span><a href="#;"></a>
											</dt>
											<dd>
												와우!! 최은영님 최고!!
											</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div>
								<img src="../img/common/noimage-small2.jpg">
								<dl>
									<dt>
										간달풍  <span>1시간전</span><a href="#;"></a>
									</dt>
									<dd>
										와우!! 최은영님 최고!!
									</dd>
								</dl>
							</div>
							<div>
								<img src="../img/common/noimage-small2.jpg">
								<dl>
									<dt>
										간달풍  <span>1시간전</span><a href="#;"></a>
									</dt>
									<dd>
										와우!! 최은영님 최고!!
									</dd>
								</dl>
							</div>
						</div>
						<!-- 댓글2 // E -->
					</div>
					<!-- 내용 화살표 버튼 토글 // E -->

				</div>
				<!-- outreach-intro // E -->

			</div>
			<!-- outreach-box // E -->
			
		</div>
	</div>
	<!-- sub-content // E -->
</body>
</html>