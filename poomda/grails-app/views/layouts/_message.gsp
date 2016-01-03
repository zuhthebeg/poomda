<%@ page import="org.poomda.member.*" %>
<div class="message_layer" id="msgSendModal">
	<span>쪽지보내기</span>
	<g:formRemote name="myForm" update="Update" url="[controller: 'UserMessage', action: 'sendMessage', params: [sort: 'title', order: 'desc']]"  >
		<input type="hidden" name="sendUser.id" value="${sec.loggedInUserInfo(field: 'id')}" />
		<input type="hidden" name="user.id" value="${user?.id}" />
		<span><em>${user?.nickname}</em>에게</span> 
		<textarea name="content" maxlength="1000"></textarea>
		<span class="txt_count"></span>
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
