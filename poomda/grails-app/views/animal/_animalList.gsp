<%@ page import="org.poomda.member.*" %>
<%@ page import="org.poomda.animal.*" %>
<g:each in="${animalList}" var="animal">
	<section>
		<h1>${animal }</h1>
		<span><span>이 동물을 관심등록한 수</span>${UserLikeAnimal.countByAnimal(animal) }</span>
		<g:set var="imgAnimal" value="${org.poomda.file.ImgAnimal.findByAnimalAndFilenameIsNotNull(animal)}" />
		<img src="${imgAnimal ? imgAnimal?.filepath + '/' + imgAnimal?.filename : ''}" alt="동물 사진" width="100%" />
			<span class="temp">임시<br />보호중</span>
		<p>${animal.gender } / ${animal.age } / ${animal.breed}-${animal.feature}</p>
		<span style="overflow: hidden;"><span class="bold">${animal?.shelter }</span>(${animal.shelter?.address})</span>
		<div class="more_info">
			<g:link controller='animal' action="animalInfo" params="[animalId:animal?.id]" title='보호동물 정보 바로가기'>보호동물 정보</g:link>
			<g:link controller='shelter' action="centerInfo" params="[shelterId:animal.shelter?.id]" title='보호소정보 바로가기'>보호소 정보</g:link>
		</div>
	</section>
</g:each>