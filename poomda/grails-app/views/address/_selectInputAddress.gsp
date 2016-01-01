<label>
	<g:select onchange="getCityListByStateInSelect(this.value)" 
	from="${org.poomda.locale.Address.list().state.unique()}" 
	name="addressId" id="city" noSelection="${['':'지역'] }" value="${params.addressId}" />
</label>
<label>
	<select id="cityList">
		<option selected>
			시/군/구
		</option>
	</select>
</label>