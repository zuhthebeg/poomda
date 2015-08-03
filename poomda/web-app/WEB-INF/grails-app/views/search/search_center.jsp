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
				<h2><button type="button" onclick="location.href='./search_animal.jsp'">보호 동물 찾기</button></h2>
			</li>
			<li>
				<h2><button type="button" onclick="location.href='./search_center.jsp'">보호소 찾기</button></h2>
			</li>
		</ul>	
				<div class="sch_cont">
					<p>주변의 보호소를 찾아서 <span class="bold">보호중인 동물들도 확인하고, 봉사, 후원방법</span>을 알아보세요.</p>
					<div class="search_form sch_center">
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
								<input type="text" class="center_name remove_val" value="보호소명을 입력해주세요">
								<button type="search" class="btn_sch">찾기</button>						
							</fieldset>
						</form>
					</div>
					<div class="list_area">
							<ul class="sort">
								<li class="on">전체</li>
								<li>최근등록순</li>
								<li>추천순</li>
							</ul>
							<span>검색결과 <span>6개</span></span>
							<div class="centerList">
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span class="myFav"><span>나를 포함 이 동물을 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span><div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
									
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
										<button type='button'>입양문의</button>
										<button type='button'>봉사문의</button>
									</div>
								</section>
								<section>
									<h1>남양주 보호소</h1>
									<span><span>이 보호소를 관심등록한 수</span>+999</span>
									<img src="../img/main/shaterlisttast.jpg" alt="보호소사진" />
									<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
									<span>경기도 남양주시</span>
									<div class="more_info">
										<a href='./center_info.jsp'  title='보호소정보 바로가기'>보호소 보기</a>
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
					
					
				</div><!--sch_cont END-->
			
		
	</div>
	<!-- sub-content // E -->

<%@ include file="../inc/footer.jsp" %>
