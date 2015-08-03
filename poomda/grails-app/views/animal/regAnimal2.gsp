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
		<div id="sub_content" class="reg_animal_2"><!--보호소,동물 등록 공통클래스 regost-->
			<div>
				<h1>동물 등록하기</h1>
				<p>보호중인 동물을 등록해 주세요</p>
			</div>	
			<ul class="step">
				<li>보호장소 선택</li>
				<li><h2>정보입력<h2></li>
				<li>완료</li>
			</ul>	
			<form action="" method="" class="clearFix">
				<fieldset class="img_up">
					<legend>등록동물 사진 업로드</legend>
					<ul>
						<li>
							<button type="button">보호중인 동물사진을 등록해주세요</button>
							<input type="file">
						</li>
						<li>
							<button type="button">보호중인 동물사진을 등록해주세요</button>
							<input type="file">
						</li>
						<li>
							<button type="button">보호중인 동물사진을 등록해주세요</button>
							<input type="file">
						</li>
					</ul>	
				</fieldset>
				<table>
					<caption>동물 등록을 위한 정보입력폼</caption>
					<colgroup>
						<col width="20%">
						<col width="37%">
						<col width="13%">
						<col width="30%">
					</colgroup>
					<tr>
						<th scope="row">보호장소<span>*</span></th>
						<td colspan="3">
							<fieldset>
								<input type="text" value="경기도 남양주시 마석보호소" />
								<a href="./reg_animal.jsp" title="보호중 보호소찾기로 돌아가기">변경</a>
							</fieldset>
						</td>
					</tr>
					<tr>
						<th scope="row">동물<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" value="개"  class="select" readonly />
								<button type="button">동물을 선택하세요</button>
								<ul class="option_li">
									<li>개</li>
									<li>고양이</li>
									<li>토끼</li>
									<li>닭</li>
									<li>직접입력</li>
								</ul>
							</div>
						</td>
						<th scope="row">품종<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" value="골든리트리버"  class="select" readonly />
								<button type="button">품종을 선택하세요</button>
								<ul class="option_li">
									<li>골든 리트리버</li>
									<li>래브라도 리트리버</li>
									<li>도베르만</li>
									<li> 말티즈</li>
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
						</td>
					</tr>
					<tr>
						<th scope="row">성별<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" value="수컷"  class="select" readonly />
								<button type="button">성별을 선택하세요</button>
								<ul class="option_li">
									<li>수컷</li>
									<li>암컷</li>
								</ul>
							</div>
						</td>
						<th scope="row">나이<span>*</span></th>
						<td>
							<input type="text" />
						</td>
					</tr>
					<tr>
						<th scope="row">몸무게<span>*</span></th>
						<td>
							<input type="text" value="kg" />
						</td>
						<th scope="row">털색<span>*</span></th>
						<td>
							<input type="text" />
						</td>
					</tr>
					<tr>
						<th scope="row">상태<span>*</span></th>
						<td colspan="3">
							<div class="custom_input">
								<input type="text" value="개인보호중"  class="select" readonly />
								<button type="button">보호상태를 선택하세요</button>
								<ul class="option_li">
									<li>개인보호중</li>
									<li>센터보호중</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">소개<span>*</span></th>
						<td colspan="3">
							<fieldset class="txtareaWrap">
								<textarea maxlength="1000">예) 타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 지금은 보호소에서 건강히 지내고 있으며 애교가 많습니다.</textarea>
								<span class="textLength"><span></span>/1000자</span>
							</fieldset>
						
						</td>
					</tr>
					<tr>
						<th scope="row">입양문의<span>*</span></th>
						<td colspan="3">
							<fieldset class="txtareaWrap">
								<textarea maxlength="1000">예) 개인 보호중 입니다. 010-000-0000 연락 바랍니다.	오전10시~오후8시 연락가능.
								</textarea>
								<span class="textLength"><span></span>/1000자</span>
							</fieldset>
						</td>
					</tr>
				</table>
				<p><span>*</span>된 표시는 필수입력 입니다.
				<fieldset>
					<button type="reset" class="btn_gray_light">취소</button>
					<button type="button" class="btn_blue" onclick="location.href='./regAnimalOk';">완료</button>
				</fieldset>
			</form>
		</div>
		<!-- sub-content // E -->

<script>
console.log($("li >div").height());
</script>
</body>
</html>