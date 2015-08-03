<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="search.css"/>
		<script src="../js/sub.js"></script>
		
	</head>
	<body>

<!-- sub-content // S -->
	<div id="sub_content" class="search">
		<div>
			<h1>동물/보호소 찾기</h1>
			<p>보호중인 동물과 보호소를 찾을 수 있습니다.</p>
		</div>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li class="on"> 
				<h3><button type=button>보호 동물 찾기</button></h3>
				<div>
					<p><span class="bold">입양을 원하시나요?</span> 보호중인 동물을 찾고 입양문의를 해보세요.</p>
					<div>
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
										<li>진돗개</li>
										<li>삽살개</li>
										<li>도베르만</li>
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
					<div class="center_list li_animal"><!--목록공통클래스 center_list-->
						<span>등록된 동물 <span>366 마리</span></span>
						<ul>
							<li class="on">전체</li>
							<li>최근등록순</li>
							<li>추천순</li>
						</ul>
						<div>
							<section>
								<h1>말라뮤트</h1>
								<span class="temp">임시<br />보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="shel">보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="comp">입양<br />완료</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="temp">임시<br />보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="shel">보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)<<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>							
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="comp">입양<br />완료</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="temp">임시<br />보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span><div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
								</div>							
							</section>
							<section>
								<h1>말라뮤트</h1>
								<span class="shel">보호중</span>
								<p>수컷 / 3살 / 실버그레이-꼬리에 까만 무늬 있음</p>
								<span><span class="bold">남양주 보호소</span>(경기-남양주)</span>
								<div class="more_info">
									<a href='ani_info.jsp'  title='동물정보 바로가기'>보호동물 정보</a>
									<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 정보</a>
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
			</li>
			<li>
				<h3><button type="button">보호소 찾기</button></h3>
				<div>
					<p>주변의 보호소를 찾아서 <span class="bold">보호중인 동물들도 확인하고, 봉사, 후원방법</span>을 알아보세요.</p>
					<div>
						<form action="" method="">
							<fieldset>
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
									<button type="button">세부 지역을 선택하세요</button>
									<ul class="option_li">
										<li>전체</li>
									</ul>
								</div>
								<input type="text" class="center_name" value="보호소 명을 입력해주세요">
								<button type="search" class="btn_sch">찾기</button>						
							</fieldset>
						</form>
					</div>
					<div class="center_list li_center">
							<span>검색결과 <span>6개</span></span>
							<ul>
								<li class="on">전체</li>
								<li>최근등록순</li>
								<li>추천순</li>
							</ul>
							<div>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span><div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
									
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
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
					</div><!--center list END-->
					
					
				</div>
			</li>
		</ul>
		
	</div>
	<!-- sub-content // E -->


<script>
$(function(){
$(".more_info").hide();
$(".center_list section").on("mouseover",function(){
		$(this).find(".more_info").show();
		$(this).mouseout(function(){$(".more_info").hide()});
	
	});


});//END
</script>
</body>
</html>