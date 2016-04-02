<%@ page import="org.poomda.site.*" %>
<g:set var="site" value="${Information.findByName('poomda')}" />
<!-- footer // S -->
	<footer>
		<div class="contact">
			<ul>
				<li>
					<a href="mailto:${site.contactEmail}" class="email">
						이메일
					</a>
				</li>
				<li>
					<span></span>
				</li>
				<li>
					<a href="${site.facebook}" target="_blank" class="facebook">
						페이스북
					</a>
				</li>
			</ul>
		</div>
		<div class="footer-menu">
			<ul>    
				<li>
					<a href="#;">
						품다소개
					</a>
				</li>
				<li>
					<span></span>
				</li>
				<li>
					<a href="#;">
						공지사항
					</a>
				</li>
				<li>
					<span></span>
				</li>
				<li>
					<a href="#;">
						개인정보
					</a>
				</li>
				<li>
					<span></span>
				</li>
				<li>
					<a href="#;">
						취급방침
					</a>
				</li>
				<li>
					<span></span>
				</li>
				<li>
					<a href="#;">
						이용약관
					</a>
				</li>
			</ul>
		</div>
		<div class="copyright">
			${site.copyright} 개인정보관리책임자 : ${site.administrator}<br>
			Contact : <address><a href="mailto:${site.contactEmail}">${site.contactEmail}</a></address>
		</div>
	</footer>
	<!-- footer // E -->

</div>
<!-- wrap-m // E -->
</body>
</html>

