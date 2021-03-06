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

		<!-- sub-content // S -->
		<div id="sub_content" class="regist">
			<div>
				<h1>보호소 등록하기</h1>
				<p>동물 보호소를 등록할 수 있습니다</p>
			</div>
			<div>
				<p>보호소 운영진의 동의 하에 사설보호소를 등록해주세요</p>
				<form action="regCenterOk" method="post" enctype="multipart/form-data" class="clearFix">
					<fieldset class="img_up">
						<legend>등록보호소 사진 업로드</legend>
						<ul>
							<li>
								<span class="img_preview">
									<button type="button" onclick="$(this).next().click()">보호소 이미지를 등록해주세요</button>
									<input name="imgCenter1" type="file" onchange="uploadImgSetting(this)">
								</span>
							</li>
							<li>
								<span class="img_preview">
									<button type="button" onclick="$(this).next().click()">보호소 이미지를 등록해주세요</button>
									<input name="imgCenter2" type="file" onchange="uploadImgSetting(this)">
								</span>									
							</li>
							<li>
								<span class="img_preview">
									<button type="button" onclick="$(this).next().click()">보호소 이미지를 등록해주세요</button>
									<input name="imgCenter3" type="file" onchange="uploadImgSetting(this)">
								</span>
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
								<input type="hidden" id="dupCheck" value="false" />
								<input name="name" type="text" value="" placeholder="마석보호소" />
								<button type="button" onclick="duplicateCheck($(this).prev().val())">중복확인</button>
								<script>
									function duplicateCheck(name){
										$.ajax({
											url : './duplicateCheck',
											data : {name:name},
											method : 'post',
											success : function (data){
												$('#dupCheck').val(data);
												if(data == 'true') alert('등록 가능합니다.')
												else alert('이미 등록된 보호소입니다.');
											}
										});
									}
								</script>
							</td>
						</tr>
						<tr>
							<th scope="row"><h2>지역</h2><span>*</span></th>
							<td>
								<g:render template="../address/customInputAddress"></g:render>								
							</td>
						</tr>
						<tr>
							<th><h2>소개</h2><span>*</span></th>
							<td>
								<fieldset class="txtareaWrap">
									<textarea name="introduction" maxlength="1000" placeholder="보호소에 대한 소개를 적어주세요"></textarea>
									<span class="textLength"></span>
								</fieldset>	
							</td>
						</tr>
						<tr>
							<th><h2>입양문의</h2></span>*</span></th>
							<td>
								<fieldset class="txtareaWrap">
									<textarea name="adoptionInquiry" maxlength="1000" placeholder="보호중인 동물을 입양할 수 있는 방법을 상세히 적어주세요."></textarea>
									<span class="textLength"></span>
								</fieldset>
							</td>
						</tr>
						<tr>
							<th><h2>봉사문의</h2></span>*</span></th>
							<td>
								<fieldset class="txtareaWrap">
									<textarea name="serviceInquiry" maxlength="1000" placeholder="보호소 봉사활동에 참여할 수 있는 방법을 상세히 적어주세요."></textarea>
									<span class="textLength"></span>
								</fieldset>
							</td>
						</tr>
						<tr>
							<th><h2>사이트</h2><span>*</span></th>
							<td>
								<input name="siteName" type="text" value="" placeholder="http://www.naver.com"/>
							</td>
						</tr>
					</table>
					<p><span>*</span>된 표시는 필수입력 입니다.
					<fieldset>
						<button type="reset" class="btn_gray">취소</button>
						<!-- <button type="button" class="btn_blue" onclick="location.href='./reg_center_ok.jsp'">완료</button> -->
						<button type="submit" class="btn_blue">완료</button>
					</fieldset>
				</form>
			</div>
		</div>	
		<!-- sub-content // E -->
</body>
</html>