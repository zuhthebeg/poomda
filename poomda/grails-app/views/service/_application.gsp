<div class="question_layer">
	<h2>
		참여신청서
	</h2>
	<div>
		<h3>
			신청서
		</h3>
		<textarea name="applicatoin" id="application" maxlength="1000" placeholder="예) 평소에 관심이 있던 활동입니다. 참여하고 싶습니다."></textarea>
		<span class="textLength"></span>
	</div>
	<div>
		<h3>
			연락처(※연락 가능한 연락처로 수정 부탁드립니다.)
		</h3>
		<p>
			${user.phone}
		<p>
	</div>
	<button type="button" class="send_msg" onclick="requestJoinActivity(${activity.id},'<sec:username/>')">신청서 제출</button>
	<button type="button" class="close_lyr">닫기</button>
</div>
<script>
	function requestJoinActivity(activityId, email){
		var application = $('#application').val();
		if(!confirm('참여 신청 하시겠습니까?')) return false;
		if(email == '') {alert('로그인 해주세요.');return false;}

		$.ajax({
			url : '../requestJoinActivity',
			data : {activityId:activityId, email : email, application:application},
			method : 'post',
			success : function (data){
				console.log(data);
				if(data == 'true'){ alert('신청되었습니다');location.reload();
				}else alert('이미 신청하셨거나, 잘못된 요청입니다.');
			}
		});
	}
</script>