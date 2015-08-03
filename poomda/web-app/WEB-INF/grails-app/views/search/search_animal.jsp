<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/search.css">
<script src="../js/sub.js"></script>
<!-- sub-content // S -->
	<div id="sub_content" class="search">
		<div>
			<h1>동물/보호소 찾기</h1>
			<p>보호중인 동물과 보호소를 찾을 수 있습니다.</p>
		</div>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li class="on"> 
				<h2><button type="button" onclick="location.href='./search_animal.jsp'" >보호 동물 찾기</button></h2>
			</li>
			<li>
				<h2><button type="button" onclick="location.href='./search_center.jsp'">보호소 찾기</button></h2>
			</li>
		</ul>	
			<div class="sch_cont">
				<p><span class="bold">입양을 원하시나요?</span> 보호중인 동물을 찾고 입양문의를 해보세요.</p>
				<div class="search_form">
					<form action="" method="">
						<fieldset>
							<legend>보호중인 동물 찾기</legend>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="지역"  class="select" readonly />
								<button type="button">지역을 선택하세요</button>
								<ul class="option_li">
									<li>경기도</li>
									<li>강원도</li>
									<li>경상남도</li>
									<li>경상북도</li>
									<li>광주광역시</li>
									<li>대구광역시</li>
									<li>대전광역시</li>
									<li>부산광역시</li>
									<li>서울특별시</li>
									<li>세종특별자치시</li>
									<li>울산광역시</li>
									<li>인천광역시</li>
									<li>전라남도</li>
									<li>전라북도</li>
									<li>제주특별자치도</li>
									<li>충청남도</li>
									<li>충청북도</li>
								</ul>
							</div>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="구"  class="select" readonly />
								<button type="button">구를 선택하세요</button>
								<ul class="option_li">
									<li>전체</li>
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="동물"  class="select" readonly />
								<button type="button">동물 선택하세요</button>
								<ul class="option_li">
									<li>개</li>
									<li>고양이</li>
									<li>토끼</li>
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="품종"  class="select" readonly />
								<button type="button">품종을 선택하세요</button>
								<ul class="option_li">
									<li>골든 리트리버</li>
									<li>래브라도 리트리버</li>
									<li>도베르만</li>
									<li>말티즈</li>
									<li>미니어처 닥스훈트</li>
									<li>비글</li>
									<li>셰클랜드 십독</li>
									<li>시추</li>
									<li>슈나우져</li>
									<li>아메리칸 코커 스파니엘</li>
									<li>아프간 하운드</li>
									<li>와이어 폭스 테리어</li>
									<li>요크셔테리어</li>
									<li>이탈리안 그레이 하운드</li>
									<li>잉글리시 코커 스파니엘</li>
									<li> 웰시 코기 펨브로크</li>
									<li> 진돗개</li>
									<li> 치와와(롱코트)</li>
									<li>토이푸들</li>
									<li> 파피용</li>
									<li>퍼그</li>
									<li>포메라니안</li>
									<li>프렌치 불독</li>
									<li>직접입력</li>
								</ul>
							</div>	
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="상태"  class="select" readonly />
								<button type="button">보호 상태를 선택하세요</button>
								<ul class="option_li">
									<li>보호소 보호</li>
									<li>개인 보호</li>
								</ul>
							</div>	
							<button type="search" class="btn_sch">찾기</button>						
						</fieldset>
					</form>
				</div>
				<div class="list_area"><!--목록공통클래스 center_list-->
					<ul class="sort">
						<li class="on">전체</li>
						<li>최근등록순</li>
						<li>추천순</li>
					</ul>
					<span>등록된 동물 <span>366 마리</span></span>
					<div class="animalList">
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
 							<span class="temp">임시<br />보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span class="myFav"><span>나를 포함 이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="shel">보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="comp">입양<br />완료</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="temp">임시<br />보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="shel">보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)<<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>							
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="comp">입양<br />완료</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="temp">임시<br />보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span><div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>							
						</section>
						<section>
							<h1>말라뮤트</h1>
							<span><span>이 동물을 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="동물사진" />
							<span class="shel">보호중</span>
							<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
							<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
							<div class="more_info">
								<a href='./ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
								<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
							</div>
						</section>
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
				</div><!--center list END-->
				
			</div>
			
		
	</div>
	<!-- sub-content // E -->

<%@ include file="../inc/footer.jsp" %>
