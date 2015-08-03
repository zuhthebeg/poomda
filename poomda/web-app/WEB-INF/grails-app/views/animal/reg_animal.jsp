<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/animal.css">
<script src="../js/sub.js"></script>

<!-- sub-content // S -->
	<div id="sub_content" class="reg_animal">
		<div>
			<h1>동물 등록하기</h1>
			<p>보호중인 동물을 등록해 주세요</p>
		</div>	
		<ul class="step">
			<li><h2>보호장소 선택</h2></li>
			<li>정보입력</li>
			<li>완료</li>
		</ul>	
		<p>동물이 보호되고 있는 장소를 선택하세요</p>
		<ul class="sch_ul"><!--보호소,동물찾기 탭 공통클래스 sch_ul-->
			<li class="on"> 
				<h3><button type=button>1. 보호소 보호</button></h3>
				<div>
					<div>
						<form action="" method="">
							<fieldset>
								<legend>보호중인 보호소 찾기</legend>
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
								<input type="search" placeholder="보호소 명을 입력해주세요">
								<button type="search" class="btn_sch">찾기</button>						
							</fieldset>
							<a href="./reg_center.jsp" title="보호소등록 바로가기">보호소 신규등록</a>
						</form>
						<p>등록되지 않은 보호소는 신규등록해주세요!</p>
					</div>
					<div class="center_list">
					<input type="hidden" name="ct_choice" value="" />
						<section>
							<h1>보호소1</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소2</h1>
							<span class="myFav"><span>나를 포함 이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소3</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소4</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소5</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소6</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소7</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
						<section>
							<h1>보호소8</h1>
							<span><span>이 보호소를 관심등록한 수</span>+999</span>
							<img src="../img/main/shaterlisttast.jpg" alt="보호소모습" />
							<p>100여마리의 동물들과 소장님이 함께 생활하고 있는 보호소</p>
							<span>경기도 남양주시</span>
							
						</section>
					</div><!--center list END-->
					<a class="btn_blue" href="./reg_animal_2.jsp" title="동물 정보입력 바로가기">다음</a>
				</div>
			</li>
			<li>
				<h3><button type="button">2. 개인 보호</button></h3>
				<div>
					<form action="" method="">
						<fieldset>
							<span>지역</span>
							<div class="custom_input"><!--커스텀 셀렉박스 공통-->
								<input type="text" value="경기도"  class="select" readonly />
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
								<input type="text" value="전체"  class="select" readonly />
								<button type="button">세부 지역을 선택하세요</button>
								<ul class="option_li">
									<li>전체</li>
								</ul>
							</div>
							<span>상세지역</span>
							<input type="text" value="상세주소(선택입력)" />
						</fieldset>
						<button type="button" onclick="location.href='./reg_animal_2.jsp'">다음</button>
					</form>
				</div>
			</li>
		</ul>

	</div>
	<!-- sub-content // E -->

<%@ include file="../inc/footer.jsp" %>
<script>
console.log($("li >div").height());
</script>
</body>
</html>