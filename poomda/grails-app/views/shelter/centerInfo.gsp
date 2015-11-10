<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="search.css"/>
		<asset:javascript src="sub.js"/>
		
	</head>
	<body>
<!-- sub-content // S -->
	<div id="sub_content" class="center_info">
		<div>
			<h1>동물/보호소 찾기</h1>
			<p>보호중인 동물과 보호소를 찾을 수 있습니다.</p>
		</div>
		<aside>
			<button type="button">신고하기</button>
			<g:link action="regCenterModify" params="[id:shelter.id]" title="관리페이지 바로가기">관리페이지</g:link>
		</aside>	
		<section class="info_container">
			<h1>${shelter}</h1>
			<ul>
				<li><span>추천 <span class="bold">777</span></span></li>
				<li><span>공유 <span class="bold">777</span></span></li>
				<li><span>관심 <span class="bold">777</span></span></li>
			</ul>
			<div class="info_contents">
				<section class="center_image">
					<h1>보호소 사진</h1>
					<ul>
						<g:each var="imgShelter" in="${ImgShelter.findAllByShelter(shelter)}">
						<li>
							<img src="${imgShelter?.filepath + '/' + imgShelter?.filename}" alt="보호소모습" width="100%" />
							<button type="button">확대보기</button>
						</li>
						</g:each>
						<%--<li><img src="../img/main/shaterlisttast.jpg" alt="보호소사진2" /><button type="button">확대보기</button></li>
						<li><img src="" alt="보호소사진3" /><button type="button">확대보기</button></li>	--%>
					</ul>
				</section>
				<section class="center_inform">
					<h1>보호소 상세정보</h1>
					<div class="btn_wrap">
						<button type="button">입양문의</button>
						<div class="question_layer">
								<h2>입양문의 방법</h2>
								<div>
									<img src="../img/search/img_spl.png" alt="봉사등록자 이미지" />
									<span>간달풍/30대 남성</span>
									<p>
										저에게 쪽지를 보내주시거나 카카오톡 아이디<br />
										Bacehee로 연락주시면 자세히 안내해 드리겠습니다.<br />
										혹은 보호소 대표 카페로 오시면 됩니다.
									</p>
								</div>
								<button type="button" class="send_msg">쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
						<button type="button">봉사문의</button>
						<div class="question_layer">
								<h2>봉사문의 방법</h2>
								<div>
									<img src="../img/search/img_spl.png" alt="봉사등록자 이미지" />
									<span>간달풍/30대 남성</span>
									<p>
										봉사는 페이지에 있는 대표 사이트 다음카페로 오셔서<br />
										봉사신청을 하셔야 합니다.
									</p>
								</div>
								<button type="button" class="send_msg">쪽지보내기</button>
								<button type="button" class="close_lyr">닫기</button>
						</div>
					</div>	
					<table>
						<caption>보호소 정보</caption>
						<colgroup>
							<col span="15%" />
							<col span="35%" />
							<col span="15%" />
							<col span="35%" />
						</colgroup>
						<tr>
							<th scope="row"><h2>보호소<h2></th>
							<td>${shelter.name}</td>
							<th scope="row"><h2>지역<h2></th>
							<td>${shelter.address}</td>
						</tr>
						<tr>
							<th scope="row"><h2>소개<h2></th>
							<td colspan="3">${shelter.introduction}</td>
						</tr>
						<tr>
							<th scope="row"><h2>대표사이트<h2></th>
							<td colspan="3"><a class="url" href="${shelter.siteName}" target="_blank" title="사이트 새창열림">${shelter.siteName}</a></td>
						</tr>
					</table>
					<section  class="volunteer">
						<h1>등록한 봉사자</h1>
						<div>
							<div class="vlt_pic">
								<img src="" alt="등록한 봉사자 사진" />
								<button type="button" class="go_msg">쪽지보내기</button>
							</div>
							<table>
								<caption>등록한 봉사자 정보</caption>
								<colgroup>
									<col span="30%">
								<col span="70%">
								</colgroup>
								<tr>
									<th scope="row"><h2>닉네임</h2></th>
									<td>간달풍</td>
								</tr>
								<tr>
									<th scope="row"><h2>연령대/성별</h2></th>
									<td>30대/남성</td>
								</tr>
								<tr>
									<th scope="row"><h2>연락처</h2></th>
									<td>카톡 bacehee</td>
								</tr>
								<tr>
									<th scope="row"><h2>자기소개</h2></th>
									<td>저는 수의사, 프로그래머입니다.</td>
								</tr>
								<tr>
									<th scope="row"><h2>활동이력</h2></th>
									<td>2014년부터 가평군 유기동물 보호소에서 동물 보호업무를 담당하고 있습니다.</td>
								</tr>
							</table>
						</div>
					</section>
				</section>
				<div class="message_layer">
					<span>쪽지보내기</span>
					<form action="" method="">
						<span><em>간달퐁</em>에게</span>
						<textarea>
						</textarea>
						<span class="txt_count"><span>33</span>/1000자</span>
						<button type="submit">쪽지 발송</button>
					</form>
					<button type="button" class="close_lyr">닫기</button>
				</div>
			</div>	
			<div class="list_area ">
				<h2>품고있는 동물들</h2>
				<span class="animal_num">등록된 동물 <span>${Animal.countByShelter(shelter)} 마리</span></span>	
				<div class="animalList">
					<g:render template="../animal/animallist" model="[animalList : Animal.findAllByShelter(shelter,[max:8,offset:0])]"></g:render>
				</div>	<!--section END-->
				<ul class="page">
						<li><a href="" title="이전목록으로 이동">&lt;</a></li>
						<li class="on"><a href="" title="1페이지 바로가기">1</a></li>
						<li><a href="" title="2페이지 바로가기">2</a></li>
						<li><a href="" title="3페이지 바로가기">3</a></li>
						<li><a href="" title="4페이지 바로가기">4</a></li>
						<li><a href="" title="5페이지 바로가기">5</a></li>
						<li><a href="" title="6페이지 바로가기">6</a></li>
						<li><a href="" title="7페이지 바로가기">7</a></li>
						<li><a href="" title="8페이지 바로가기">8</a></li>
						<li><a href="" title="9페이지 바로가기">9</a></li>
						<li><a href="" title="10페이지 바로가기">10</a></li>
						<li><a href="" title="다음목록으로 이동">&gt;</a></li>
					</ul>
			</div>	
			<div class="voluntary">
				<h2>품고있는 활동들</h2>
				<span>등록된 활동 <span>3개</span></span>
				<div class="volunList">
					<section>
						<h1 class="vol_cate1">봉사<br />활동</h1>
						<div class="vol_left">
							<img src="../img/main/shaterlisttast.jpg" alt="봉사활동 등록사진" />
							<span class="connect"><span>이 봉사활동을 공유한 수</span>+999</span>
							<span class="fav"><span>이 봉사활동을 관심등록한 수</span>+999</span>
						</div>
						<section class="vol_middle">
							<h1>[2차] 반달이네 보호소 정기봉사활동!</h1>
							<p>	
								보호소에 불이나서 여러가지 도움이 필요합니다. 많은 분들의 참여를 기다리겠습니다.
							</p>
							<ul>
								<li>
									<h2>모집기간</h2> 
									<span>2014년 5월 25일까지</span>
								</li>
								<li>
									<h2>장소</h2> 
									<span>경기도 고양시 시청앞</span>
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
							<h2><span>봉사진행상황</span>완료</h2>
							<h2>
								참여인원<span class="bold">10명</span>
							</h2>
							<div>
								<img src="../img/search/img_spl.png" alt="봉사등록자 이미지" />
								<span>반달아빠</span>
							</div>
						</div>
					</section>
					<section>
						<h1 class="vol_cate2">후원<br />활동</h1>
						<div class="vol_left">
							<img src="../img/common/noimages.gif" alt="봉사활동 등록사진" />
							<span class="connect"><span>이 봉사활동을 공유한 수</span>+999</span>
							<span class="fav"><span>이 봉사활동을 관심등록한 수</span>+999</span>
						</div>
						<section class="vol_middle">
							<h1>[3차] 포천 애린동산 사료보내기 후원모집</h1>
							<p>	
								포런 애린동산에는 1천여마리의 동물들이 있어 사료가 항상 모자랍니다. 집에 기호가 맞지 않아 먹지 않고 있는 사료라도...
							</p>
							<ul>
								<li>
									<h2>모집기간</h2> 
									<span>2014년 5월 25일까지</span>
								</li>
								<li>
									<h2>장소</h2> 
									<span>경기도 고양시 시청앞</span>
								</li>							
								<li>
									<h2>후원목록</h2>
									<ul class="vol_list">
										<li>물품후원</li>
									</ul>
								</li>	
							</ul>	
						</section>
						<div class="vol_right">
							<h2><span>봉사진행상황</span>진행중</h2>
							<h2>
								참여인원<span class="bold">10명</span>
							</h2>
							<div>
								<img src="../img/search/img_spl.png" alt="봉사등록자 이미지" />
								<span>반달아빠</span>
							</div>
						</div>
					</section>
				</div>
				<ul class="page">
						<li><a href="" title="이전목록으로 이동">&lt;</a></li>
						<li class="on"><a href="" title="1페이지 바로가기">1</a></li>
						<li><a href="" title="2페이지 바로가기">2</a></li>
						<li><a href="" title="3페이지 바로가기">3</a></li>
						<li><a href="" title="4페이지 바로가기">4</a></li>
						<li><a href="" title="5페이지 바로가기">5</a></li>
						<li><a href="" title="6페이지 바로가기">6</a></li>
						<li><a href="" title="7페이지 바로가기">7</a></li>
						<li><a href="" title="8페이지 바로가기">8</a></li>
						<li><a href="" title="9페이지 바로가기">9</a></li>
						<li><a href="" title="10페이지 바로가기">10</a></li>
						<li><a href="" title="다음목록으로 이동">&gt;</a></li>
					</ul>
			</div><!--voluntary END-->
			<div class="reply">
				<h2>댓글</h2>
				<span>등록된 댓글 <span>3개</span></span>
			</div>	
			
		</section>
		
		

	<!-- sub-content // E -->
</div>
</body>
</html>