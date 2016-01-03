<div class="custom_input"><!--커스텀 셀렉박스 공통-->
	<input type="text" id="state" name="address" value="지역"  class="select" readonly />
	<button type="button">지역을 선택하세요</button>
	<ul class="option_li">
		<g:each in="${org.poomda.locale.Address.list().state.unique()}" var="state">
			<li>${state}</li>
		</g:each>
	</ul>
</div>
<div class="custom_input"><!--커스텀 셀렉박스 공통-->
	<input type="text" id="city" name="addressDetails" value="시/군/구"  class="select" readonly />
	<button type="button" onclick="getCityListByState(this)">세부 지역을 선택하세요</button>
	<ul class="option_li" id="cityList">
		<li>전체</li>
	</ul>
</div>