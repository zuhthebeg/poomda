<%@ page import="org.poomda.member.*" %>
<sec:ifLoggedIn>
	<div id="msgModal" class="message_layer">
		<span>쪽지확인</span>
		<form action="#">
			<g:set var="msg" value="${UserMessage.findByUserAndIsRead(User.get(sec.loggedInUserInfo(field: 'id')),false,[order:'dateCreated',max:1])}"/>
				<span><em>${msg?.sendUser}</em>님으로 부터</span> <span>${msg?.dateCreated }</span>
				<textarea name="content" readonly="readonly">${msg?.content}</textarea>
				<span class="txt_count"><span>33</span>/1000자</span>
				<button type="submit" onclick="">답장 하기</button>
		</form>
		<button type="button" class="close_lyr">닫기</button>
	</div>
</sec:ifLoggedIn>

<div class="message_layer" id="msgSendModal">
	<span>쪽지보내기</span>
	<g:formRemote name="myForm" update="Update" url="[controller: 'UserMessage', action: 'sendMessage', params: [sort: 'title', order: 'desc']]"  >
		<input type="hidden" name="sendUser.id" value="${sec.loggedInUserInfo(field: 'id')}" />
		<input type="hidden" name="user.id" value="${animal?.user?.id}" />
		<span><em>${animal?.user?.nickname}</em>에게</span> 
		<textarea name="content"></textarea>
		<span class="txt_count"><span>33</span>/1000자</span>
		<!-- <button type="submit">쪽지 발송</button> -->
		<g:actionSubmit value="쪽지 발송" />
	</g:formRemote>
	<button type="button" class="close_lyr">닫기</button>
</div>

<script>
	function Update(data){
		console.log(data);
		$('.close_lyr').click();
	}
</script>
