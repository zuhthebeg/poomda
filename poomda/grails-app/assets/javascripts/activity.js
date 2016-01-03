function requestChangeStatus(activityId, email, status){
	if(!confirm('변경 하시겠습니까?')) return false;
	if(email == '') {alert('로그인 해주세요.');return false;}

	$.ajax({
		url : '../requestChangeStatus',
		data : {activityId:activityId, email : email, status:status},
		method : 'post',
		success : function (data){
			console.log(data);
			if(data == 'true') location.reload();
			else alert('실패하였습니다.');
		}
	});
}

function requestChangeStatusByActivity(activityId, status){
	if(!confirm('전부 변경 하시겠습니까?')) return false;

	$.ajax({
		url : '../requestChangeStatus',
		data : {activityId:activityId, status:status},
		method : 'post',
		success : function (data){
			console.log(data);
			if(data == 'true') location.reload();
			else alert('실패하였습니다.');
		}
	});
}