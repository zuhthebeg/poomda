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
		<div id="sub_content" class="reg_animal_2"><!--보호소,동물 등록 공통클래스 regost-->
			<div>
				<h1>동물 등록하기</h1>
				<p>보호중인 동물을 등록해 주세요</p>
			</div>	
			<ul class="step">
				<li>보호장소 선택</li>
				<li><h2>정보입력</h2></li>
				<li>완료</li>
			</ul>	
			<g:form url="[controller: 'Animal', action:'regAnimalOk']" method="post" enctype="multipart/form-data"  class="clearFix">
				<input type="hidden" name="prevUrl" value="${request.forwardURI - request.contextPath +'?'+request.queryString}" />
				<input type="hidden" value="${params.shelterId}" name="shelterId" />
				<input type="hidden" value="${params.tempShelter}" name="tempShelter" />
				<fieldset class="img_up">
					<legend>등록동물 사진 업로드</legend>
					<ul>
						<li>
							<span class="img_preview">
								<button type="button"  onclick="$(this).next().click()">보호중인 동물사진을 등록해주세요</button>
								<input name="imgAnimal1" type="file" onchange="uploadImgSetting(this)">
							</span>
						</li>
						<li>
							<span class="img_preview">
								<button type="button" onclick="$(this).next().click()">보호중인 동물사진을 등록해주세요</button>
								<input name="imgAnimal2" type="file" onchange="uploadImgSetting(this)">
							</span>
						</li>
						<li>
							<span class="img_preview">
								<button type="button" onclick="$(this).next().click()">보호중인 동물사진을 등록해주세요</button>
								<input name="imgAnimal3" type="file" onchange="uploadImgSetting(this)">
							</span>
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
								<input type="text" value="${Shelter.get(params.shelterId)}" />
								<a href="javascript:history.back();" title="보호중 보호소찾기로 돌아가기">변경</a>
							</fieldset>
						</td>
					</tr>
					<tr>
						<th scope="row">동물<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" value="동물을 선택하세요" name="animalType" class="select" readonly />
								<button type="button">동물을 선택하세요</button>
								<ul class="option_li">
									<g:each in="${AnimalType.list() }" var="type">
										<li onclick="getAnimalBreedList(${type.id})">${type.nameKor}</li>
									</g:each>
								</ul>
							</div>
						</td>
						<th scope="row">품종<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" id="animalBreed" name="breedName" value="${params.breedName}" placeholder="품종을 선택하세요"  class="select" readonly />
								<button type="button">품종을 선택하세요</button>
								<ul class="option_li" id="breedList">
									<g:each in="${AnimalBreed.list() }" var="breed">
										<li>${breed.nameKor}</li>
									</g:each>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">성별<span>*</span></th>
						<td>
							<div class="custom_input">
								<input type="text" value="수컷" name="gender" value="${params.gender}" class="select" readonly />
								<button type="button">성별을 선택하세요</button>
								<ul class="option_li">
									<g:each in="${Animal.constraints.gender.inList}" var="gender">
										<li>${gender}</li>
									</g:each>
								</ul>
							</div>
						</td>
						<th scope="row">나이<span>*</span></th>
						<td>
							<input type="text" name="age" value="${params.age}"/>
						</td>
					</tr>
					<tr>
						<th scope="row">몸무게<span>*</span></th>
						<td>
							<input type="text" name="weight" value="${params.weight}" value="kg" />
						</td>
						<th scope="row">털색<span>*</span></th>
						<td>
							<input type="text" name="furColor" value="${params.furColor}" />
						</td>
					</tr>
					<tr>
						<th scope="row">상태<span>*</span></th>
						<td colspan="3">
							<div class="custom_input">
								<input type="text" value="${params.shelterId ? '센터보호중' : '개인보호중'}"  name="status" class="select" readonly />
								<button type="button">보호상태를 선택하세요</button>
								<g:set var="statusList" value="${Animal.constraints.status.inList}" />
								<ul class="option_li">
									<g:each in="${params.shelterId ? ['센터보호중'] :  statusList - '센터보호중'}" var="status">
										<li>${status}</li>
									</g:each>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">소개<span>*</span></th>
						<td colspan="3">
							<fieldset class="txtareaWrap">
								<textarea name="introduction" maxlength="1000" >${params.introduction}예) 타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 지금은 보호소에서 건강히 지내고 있으며 애교가 많습니다.</textarea>
								<span class="textLength"></span>
							</fieldset>
						
						</td>
					</tr>
					<tr>
						<th scope="row">입양문의<span>*</span></th>
						<td colspan="3">
							<fieldset class="txtareaWrap">
								<textarea name="adoptionInquiry" maxlength="1000">${params.adoptionInquiry}예) 개인 보호중 입니다. 010-000-0000 연락 바랍니다.	오전10시~오후8시 연락가능.
								</textarea>
								<span class="textLength"></span>
							</fieldset>
						</td>
					</tr>
				</table>
				<p><span>*</span>된 표시는 필수입력 입니다.
				<fieldset>
					<button type="reset" class="btn_gray_light">취소</button>
					<button type="submit" class="btn_blue">완료</button>
				</fieldset>
			</g:form>
		</div>
		<!-- sub-content // E -->

<script>
console.log($("li >div").height());
</script>
</body>
</html>