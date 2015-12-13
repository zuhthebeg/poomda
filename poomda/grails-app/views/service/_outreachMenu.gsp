<%@ page import="org.poomda.activity.*" %>
					<div class="outreach-menu">
						<ul>
							<li>
								<g:activeLink controller="service" action="outreach" activeClass="on" params="[id:params.id]">
									활동정보
								</g:activeLink>
							</li>
							<li>
								<g:activeLink controller="service" action="outreach2" activeClass="on" params="[id:params.id]">
									활동현황 <span>(${History.countByActivity(activity)}+)</span>
								</g:activeLink>
							</li>
							<li>
								<g:activeLink controller="service" action="outreach3" activeClass="on" params="[id:params.id]">
									댓글  <span>(${Reply.countByActivity(activity)})</span>
								</g:activeLink>
							</li>
							<li>
								<g:activeLink controller="service" action="outreach4" activeClass="on" params="[id:params.id]">
									후기 <span>(${Review.countByActivity(activity)})</span>
								</g:activeLink>
							</li>
						</ul>
					</div>