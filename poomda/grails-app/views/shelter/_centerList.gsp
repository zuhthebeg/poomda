<%@ page import="org.poomda.shelter.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.file.*" %>
<div class="center_list" id="centerList">
	<input type="hidden" name="ct_choice" id="shelterId" value="" />
	<g:each in="${shelterList }" var="shelter">
		<section>
			<input type="hidden" class="shelter_id" value="${shelter.id}" />
			<h1>${shelter.name}</h1>
			<span class="myFav"><span>이 보호소를 관심등록한 수</span>+999</span>
			<g:set var="imgShelter" value="${ImgShelter.findByShelter(shelter)}" />
			<div class="img_cover">
				<img src="${imgShelter ? imgShelter?.filepath + '/' + imgShelter?.filename : ''}" alt="보호소모습" width="100%" />
			</div>
			<p>${shelter.introduction }</p>
			<span>${shelter.address}</span>
		</section>
	</g:each>
	
</div><!--center list END-->