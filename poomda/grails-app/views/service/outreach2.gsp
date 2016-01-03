<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.acivity.*" %>
<%@ page import="org.poomda.file.*" %>
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
					
					<g:if test="${sec.loggedInUserInfo(field: 'id').toString() == activity.user.id.toString() }">
						<!-- 업로드 // S -->
						<g:form controller="history" action="registHistory" method="post" enctype="multipart/form-data">
							<input type="hidden" name="activityId" value="${params.id }" />
							<div class="outreach-upload">
								<span>
									<g:set var="imgs" value="${ImgActivity.findAllByActivity(activity) }" />
									<g:if test="${! imgs}"><img  width="100" height="100" src="${assetPath(src: 'common/noimage-big.jpg')}"></g:if>
									<g:each var="imgActivity" in="${imgs}">
										<img  width="100" height="100" src="${imgActivity?.filepath + '/' + imgActivity?.filename}" alt="활동 모습" width="100%"  class="thumb lightbox-photo" data-caption="활동 모습" />
									</g:each>
								</span>
								<textarea name="content" maxlength="1000"></textarea>
								<img src="${assetPath(src: 'common/no-image-big3.gif')}" width="140" height="100" onclick="$(this).next().click()" style="cursor: pointer;">
								<input type="file" name="imgFile1" id="imgHistory1" onchange="uploadImgSettingOnActivity(this)" style="display: none;" />
								<ul>
									<li>
										<a href="#none" onclick="$('#imgHistory1').click()">
											사진첨부
										</a>
									</li>
									<li>
										<a href="#none" onclick="$('.outreach-body > form').submit()">
											등록하기
										</a>
									</li>
								</ul>
							</div>
						</g:form>
						<!-- 업로드 // E -->
					</g:if>
				</div>
				
				<g:each in="${org.poomda.activity.History.findAllByActivity(activity,[order:'desc',sort:'dateCreated'])}" var="history" status="i">
					<div class="outreach-intro">
						<h2>
							<strong>${history.dateCreated.format('yyyy-MM-dd') } (${history.dateCreated.format("EEE") }) <span>현황</span></strong>
							<a href="#none" class="${i>0 ? '' : 'on' }" onclick="$(this).toggleClass('on').parent().nextAll().slideToggle();"></a>
						</h2>
						<!-- 내용 화살표 버튼 토글 // S -->
						<div class="outreach-intro-body" style="${i>0 ? '' : 'display:block;' }">
							<p>
								${history.content }
							</p>
							<div class="img-left">
								<g:set var="attchImgs" value="${history.attchImg}" />
								<g:each in="${attchImgs }" var="img">
									<img src="${img?.filepath + '/' + img?.filename}" title="${img.filename }"  class="thumb lightbox-photo width50p" data-caption="활동 모습">
								</g:each>
							</div>
							<br/>
							<!-- 댓글1 // S -->
							
							<g:form controller="reply" action="registReply">
								<input type="hidden" name="activityId" value="${activity.id }" />
								<input type="hidden" name="historyId" value="${history.id }" />
								<input type="hidden" name="prevAction" value="${params.action}"/>
								<div class="outreach-reply">
										<img src="${assetPath(src: 'common/noimage-middle.jpg')}">
										<textarea type="text" name="content" placeholder="댓글을 남겨 주세요."></textarea>
										<sec:ifLoggedIn>
											<a href="#none" onclick="$(this).parent().parent().submit()">
												등록하기
											</a>
										</sec:ifLoggedIn>
										<sec:ifNotLoggedIn>
											<a href="#none" onclick="alert('로그인해주세요.')">
												등록하기
											</a>
										</sec:ifNotLoggedIn>
								</div>
							</g:form>
							
							<!-- 댓글1 // E -->
	
							<!-- 댓글2 // S -->
							<div class="outreach-reply-2"  style="${i>0 ? '' : 'display:block;' }">
								<g:each in="${org.poomda.activity.Reply.findAllByActivityAndHistory(activity,history,[order:'desc',sort:'dateCreated'])}" var="reply">
									<div>
										<img src="${assetPath(src: 'common/noimage-small2.jpg')}">
										<dl>
											<dt>
												${reply.user.nickname} <span>${((new Date().time - reply.dateCreated.time)/(1000*60)).toInteger()}분전</span><a href="#;"></a>
											</dt>
											<dd>
												${reply.content }
											</dd>
										</dl>
									</div>
								</g:each>
							</div>
							<!-- 댓글2 // E -->
						</div>
						<!-- 내용 화살표 버튼 토글 // E -->						
						
					</div>
				</g:each>
			</div>
			<!-- outreach-box // E -->
			
		</div>
	</div>
	<!-- sub-content // E -->
</body>
</html>