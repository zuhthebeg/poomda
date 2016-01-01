<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.activity.*" %>
<g:each in="${activityList }" var="activity">
	<g:if test="${type == 1 }">
		<section>
			<a href="#;" class="main-service-case-1">
				<span></span>
				${activity.shareCount}+
			</a>
			<a href="#;" class="main-service-case-2">
				<span></span>
				${org.poomda.member.UserLikeActivity.countByActivity(activity)}+
			</a>
			<a href="#;" class="main-service-case-3">
				<!-- <img src="${activity.attchImg.size() > 0 ? assetPath(src: 'main/shaterlisttast.jpg') :assetPath(src: 'common/noimage-small.jpg')}"> -->
				<g:set var="defaultImgPath" value="${assetPath(src: 'common/noimage-small.jpg')}" />
				<img src="${activity.user.profile ? activity.user.profile : defaultImgPath}" alt="등록한 유저 사진" /> 
				${activity.user}
			</a>
			<g:link action="outreach" controller="service" params="[id:activity.id]">
				<dl>
					<dt>
						<g:set var="img" value="${org.poomda.file.ImgActivity.findByActivity(activity) }" />
						<g:if test="${! img}"><img src="${assetPath(src: 'common/noimages.gif')}" alt="NO IMAGE"></g:if>
						<g:if test="${img}"><img src="${img?.filepath + '/' + img?.filename}" alt="활동 모습" /></g:if>
					</dt>
					<dd>
						<div class="main-service-tit">
							<h2>
								${activity.title}
							</h2>
							<p>
								${activity.activityInfo}
							</p>
						</div>
						<div class="main-service-notice">
							<dl>
								<dt>
									<ul>
										<li>
											<strong>모집기간</strong> ${activity.period.format( 'yyyy년 M월 dd일 까지' )}
										</li>
										<li>
											<strong>장 소</strong> ${activity.area}
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
							${activity.activityType == 'Sponsored' ? '후원' : '봉사'}<br>
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
								${ActivityParticipants.countByActivity(activity) } 명
							</span>
						</div>
					</dd>
				</dl>
			</g:link>
		</section>
	</g:if>


	<g:if test="${type == 2 }">
		<section>
			<h1 class="vol_cate${activity.activityType == 'Sponsored' ? 2 : 1}">${activity.activityType == 'Sponsored' ? '후원' : '봉사'}<br />활동</h1>
			<div class="vol_left">
				<g:link action="outreach" controller="service" params="[id:activity.id]">
					<img src="${assetPath(src: 'main/shaterlisttast.jpg')}" alt="봉사활동 등록사진" />
				</g:link>
				<span class="connect"><span>이 봉사활동을 공유한 수</span>+${activity.shareCount}</span>
				<span class="fav"><span>이 봉사활동을 관심등록한 수</span>+${org.poomda.member.UserLikeActivity.countByActivity(activity)}+</span>
			</div>
			<section class="vol_middle">
				<h1>${activity.title}</h1>
				<p>	
					${activity.activityInfo}
				</p>
				<ul>
					<li>
						<h2>모집기간</h2> 
						<span>${activity.period.format( 'yyyy년 M월 dd일 까지' )}</span>
					</li>
					<li>
						<h2>장소</h2> 
						<span>${activity.area}</span>
					</li>							
					<li>
						<h2>봉사목록</h2>
						<ul class="vol_list">
							<li>청소</li>
							<li>보수</li>
							<li>미용</li>
							<li>차량</li>
							<li>의료</li>
						</ul>
					</li>	
				</ul>	
			</section>
			<div class="vol_right">
				<h2><span>봉사진행상황</span>${activity.activityStatus }</h2>
				<h2>
					참여인원<span class="bold">${ActivityParticipants.countByActivity(activity)}명</span>
				</h2>
				<div>
					<img src="${assetPath(src: 'search/img_spl.png')}" alt="봉사등록자 이미지" />
					<span>${activity.user.nickname }</span>
				</div>
			</div>
		</section>
	</g:if>
</g:each>