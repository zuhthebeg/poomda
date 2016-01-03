<div class="question_layer">
	<h2>
		참여신청서
	</h2>
	<div>
		<h3>
			자기소개
		</h3>
		<p>
			${joiner.user.introduction}
		<p>
	</div>
	<div>
		<h3>
			참여동기 및 경험
		</h3>
		<p>
			${joiner.user.activityHistory}
		<p>
	</div>
	<div>
		<h3>
			신청서
		</h3>
		<p>
			${joiner.application}
		<p>
	</div>
	<div>
		<h3>
			연락처
		</h3>
		<p>
			${joiner.user.phone}
		<p>
	</div>
	<div>
	<!-- 
		<button type="button" class="apploval_msg" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','APPROVAL')">승인</button>
		<button type="button" class="reject_msg" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','REJECT')">거절</button>
	
	 	<button type="button" class="send_msg" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','APPROVAL')">승인</button>
	 	<button type="button" class="send_msg" style="background-color: #F67E62;" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','REGIST')">승인 취소</button>
	  -->	
		<button type="button" class="apploval_msg" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','APPROVAL')">승인</button>
		<button type="button" class="reject_msg" onclick="requestChangeStatus(${joiner.activity.id},'${joiner.user.username }','REGIST')">승인 취소</button>
	 	
	</div>
	<button type="button" class="close_lyr">닫기</button>
</div>