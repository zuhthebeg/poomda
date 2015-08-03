<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="animal.css"/>
		<script src="../js/sub.js"></script>
		
	</head>
	<body>

		<!-- sub-content // S -->
		<div id="sub_content" class="regist">
			<div>
				<h1>보호소 등록하기</h1>
				<p>동물 보호소를 등록할 수 있습니다</p>
			</div>
			<div class="center_modify">
				<p>보호소 운영진의 동의 하에 사설보호소를 등록해주세요</p>
				<form action="" method="" class="clearFix">
					<fieldset class="img_up">
						<legend>등록보호소 사진 업로드</legend>
						<ul>
							<li>
								<button type="button">보호소 이미지를 등록해주세요</button>
								<input type="file">
							</li>
							<li>
								<button type="button">보호소 이미지를 등록해주세요</button>
								<input type="file">
							</li>
							<li>
								<button type="button">보호소 이미지를 등록해주세요</button>
								<input type="file">
							</li>
						</ul>	
					</fieldset>
					<table>
						<caption>보호소 등록을 위한 정보입력폼</caption>
						<colgroup>
							<col width=" 25%" />
							<col width="75%" />
						</colgroup>	
						<tr>
							<th scope="row"><h2>보호소 </h2><span>*</span></th>
							<td>
								<input type="text" value="경기도 남양주시 마석보호소" />
								<button type="button">중복확인</button>
							</td>
						</tr>
						<tr>
							<th scope="row"><h2>지역</h2><span>*</span></th>
							<td>
								<div class="custom_input">
									<input type="text" value="경기도"  class="select" readonly />
									<button type="button">지역을 선택하세요</button>
									<ul>
										<li>경기도</li>
									</ul>
								</div>
								<div class="custom_input">
									<input type="text" value="전체"  class="select" readonly />
									<button type="전체">세부 지역을 선택하세요</button>
									<ul>
										<li>경기도</li>
									</ul>
								</div>								
							</td>
						</tr>
						<tr>
							<th><h2>소개</h2><span>*</span></th>
							<td>
								<fieldset class="txtareaWrap">
									<textarea maxlength="1000">보호소에 대한 소개를 적어주세요</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</fieldset>	
							</td>
						</tr>
						<tr>
							<th><h2>입양문의</h2></span>*</span></th>
							<td>
								<fieldset class="txtareaWrap">
									<textarea maxlength="1000" >보호중인 동물을 입양할 수 있는 방법을 상세히 적어주세요.</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</fieldset>
							</td>
						</tr>
						<tr>
							<th><h2>봉사문의</h2></span>*</span></th>
							<td>
								<<fieldset class="txtareaWrap">>
									<textarea maxlength="1000">보호소 봉사활동에 참여할 수 있는 방법을 상세히 적어주세요.</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</fieldset>
							</td>
						</tr>
						<tr>
							<th><h2>사이트</h2><span>*</span></th>
							<td>
								<input type="text" value="http://www.naver.com" />
							</td>
						</tr>
					</table>
					<p><span>*</span>된 표시는 필수입력 입니다.
					<fieldset>
						<button type="button" class="btn_gray_light">취소</button>
						<button type="button" class="btn_gray">삭제</button>
						<button type="button" class="btn_blue">완료</button>
					</fieldset>
				</form>
			</div>
			<div class="layer_pop">
				<span>보호소 정보 변경</span>
				<p>보호소 정보 변경을 취소하시겠습니까?</p>
				<form action="" method="">
					<button type="submit" class="gray">예</button>
					<button type="button" class="blue">아니오</button>
				</form>
				<button type="button">정보변경 팝업 닫기</button>
			</div>
		</div>	
		<!-- main-content // E -->
	
		<!-- footer // S -->
		<footer>
			<div class="contact">
				<ul>
					<li>
						<a href="mailto:poomda@poomda.kr" class="email">
							이메일
						</a>
					</li>
					<li>
						<span></span>
					</li>
					<li>
						<a href="https://ko-kr.facebook.com/pawinhand" target="_blank" class="facebook">
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
				Copyrightⓒ Poomda.kr All right reserved. 개인정보관리책임자 : 이환희<br>
				Help : <address><a href="mailto:poomda@poomda.kr">poomda@poomda.kr</a></address>
			</div>
		</footer>
		<!-- footer // E -->
	
	</div>
	<!-- wrap-m // E -->

</body>
</html>
