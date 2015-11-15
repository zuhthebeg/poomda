<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="animal.css"/>
		
		
	</head>
	<body>
	
		<div class="layer_pop visible"><!--레이어팝업 공통클래스 layer_pop-->
				<span>추가정보입력</span>
				<p>추가정보를 입력한 사용자만 등록할 수 있습니다.<br />
				입력하러 가시겠습니까?
				</p>
				<div>
					<a class="gray" href="http://poomda.dothome.co.kr/index.html" title="메인으로 이동합니다">나중에</a>
					<a class="blue" href="" title="추가정보입력 바로가기" >입력하러가기</a>
				</div>
		</div>
		<!-- sub-content // S -->
		<div id="sub_content" class="regist">
			<div>
				<h1>보호소 등록하기</h1>
				<p>동물 보호소를 등록할 수 있습니다</p>
			</div>
			<div>
				<p>보호소 운영진의 동의 하에 사설보호소를 등록해주세요</p>
				<form action="" method="" class="clearFix">
					<fieldset>
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
									<button type="전체">세부 지역을 선택하세요</button>
									<ul>
										<li>전체</li>
									</ul>
								</div>								
							</td>
						</tr>
						<tr>
							<th><h2>소개</h2><span>*</span></th>
							<td>
								<div>
									<textarea maxlength="1000">보호소에 대한 소개를 적어주세요</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</div>	
							</td>
						</tr>
						<tr>
							<th><h2>입양문의</h2></span>*</span></th>
							<td>
								<div>
									<textarea maxlength="1000" >보호중인 동물을 입양할 수 있는 방법을 상세히 적어주세요.</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</div>
							</td>
						</tr>
						<tr>
							<th><h2>봉사문의</h2></span>*</span></th>
							<td>
								<div>
									<textarea maxlength="1000">보호소 봉사활동에 참여할 수 있는 방법을 상세히 적어주세요.</textarea>
									<span class="textLength"><span></span>/1000자</span>
								</div>
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
						<button type="reset" class="btn_gray">취소</button>
						<button type="submit" class="btn_blue">완료</button>
					</fieldset>
				</form>
			</div>
		</div>	
		<!-- main-content // E -->
		<div class="back">
		</div>

</body>
</html>