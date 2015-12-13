<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.member.*" %>
				<!-- outreach-tit // S -->
				<div class="outreach-tit">
					<h2>
						${activity.title }
					</h2>
					<div>
						<ul class="user-menu">
							<li>
								<a href="#;" class="user-declaration">
									신고하기
								</a>
							</li>
							<g:if test="${User.get(sec.loggedInUserInfo(field: 'id')) == activity.user }">
								<li>
									<g:link action="activityRequestors" params="[id:params.id]" class="user-adminpage">
										관리페이지
									</g:link>
								</li>
							</g:if>
						</ul>
						<ul class="user-menu-2">
							<li class="user-ddabong">
								<a href="#;" class="on">
									추천 ${org.poomda.member.UserLikeActivity.countByActivity(activity)}
								</a>
							</li>
							<li class="user-share">
								<a href="#;">
									공유 ${activity.shareCount}
								</a>
							</li>
							<li class="user-interest">
								<a href="#;">
									관심 ${activity.viewCount}+
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- outreach-tit // E -->