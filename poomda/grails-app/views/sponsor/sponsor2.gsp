<%@ page import="org.poomda.service.*" %>
<%@ page import="org.poomda.animal.*" %>
<%@ page import="org.poomda.activity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Poomda</title>
		<asset:stylesheet src="sponsor.css"/>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<script>
		  $(function() {
		    $( "#datepicker" ).datepicker({
		        dateFormat: 'yy-mm-dd',
		        prevText: '이전 달',
		        nextText: '다음 달',
		        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		        dayNames: ['일','월','화','수','목','금','토'],
		        dayNamesShort: ['일','월','화','수','목','금','토'],
		        dayNamesMin: ['일','월','화','수','목','금','토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년',
		      });
		  });
		  </script>
		
	</head>
	<body>
	<!-- sub-content // S -->
	<div id="sub-content" class="sponsor">
		<div>
			<div>
				<h1>봉사/후원등록</h1>
				<p>봉사/후원을 동록해 활동해 보세요</p>
			</div>
		</div>
		<div class="sub-body">

			<!-- sponsor-condition // S -->
			<div class="sponsor-condition">
				
				<!-- sponsor-progress // S -->
				<div class="sponsor-progress">
					<ul>
						<li>
							활동 및 대상 선택
						</li>
						<li class="on">
							정보입력
						</li>
						<li>
							완료
						</li>
					</ul>
				</div>
				<!-- sponsor-progress // E -->

				
				
				<!-- service-input // S -->
				<div class="service-input">
					<form action="sponsor3" id="activityForm" method="post" enctype="multipart/form-data">
						<input type="hidden" value="${prevUrl }" name="prevUrl"/>
						<div class="input-form">
							
							<table>
								<colgroup>
									<col width="100">
									<col width="502">
								</colgroup>
								<tbody>
									<tr>
										<th>
											대상<span>*</span>
										</th>
										<td class="target-td">
											<input type="text" value="${sponsorTarget ?: Activity.get(params.id)}" readonly>
											<a href="#;" onclick="history.back();">
												변경
											</a>
										</td>
									</tr>
									<tr>
										<th>
											제목<span>*</span>
										</th>
										<td class="subject-td">
											<input type="text" name="title" placeholder="제목을 입력해 주세요.">
										</td>
									</tr>
									<tr>
										<th>
											모집기간<span>*</span>
										</th>
										<td class="calendar-td">
											<input type="text" placeholder="${new Date().format('yyyy-MM-dd') }" name="period" id="datepicker">
											<a href="#none" onclick="$(this).prev().click()"></a>
										</td>
									</tr>
									<tr>
										<th>
											장소<span>*</span>
										</th>
										<td class="place-td">
											<g:render template="../address/selectInputAddress"></g:render>
											<input type="text" name="areaDetails" placeholder="상세주소" style="width:124px;">
										</td>
									</tr>
									<tr>
										<th>
											활동성격<span>*</span>
										</th>
										<td class="active-etc">
										<input type="hidden" name="activityInfo" value="test" />
											<g:each in="${typeList}" var="type">
												<a href="#;">
													${type}
												</a>
											</g:each>
											<p>
												다중선택 가능
											</p>
										</td>
									</tr>
									<tr>
										<th>
											소개글<span>*</span>
										</th>
										<td class="active-introduce">
											<textarea name="introduction" maxlength="1000" placeholder="소개글을 입력해주세요."></textarea>
											<span class="textLength" style="float:right;"></span><br/><br/>
											<p>
												<span class="red-text">*</span> 된 표시는 필수입력 입니다.
											</p>
										</td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" value="${activityType}" name="activityType" />
							<input type="hidden" value="${target}" name="target" />
							<input type="hidden" value="${sponsorTarget?.id}" name="sponsorTarget" />
							
						</div>
						<div class="input-img">
							<button type="button" onclick="$(this).next().click()">보호중인 동물사진을 등록해주세요</button>
							<input name="imgActivity1" id="imgActivity1" type="file" onchange="uploadImgSetting(this)">
						</div>
					</form>
				</div>
				<!-- service-input // E -->

			</div>
			<!-- sponsor-condition // E -->

			<div class="sponsor-navbox">
				<a href="/" class="sponsor-cancle">
					취 소
				</a>
				<a href="#none" onclick="$('#activityForm').submit()" class="sponsor-ok">
					완 료
				</a>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
	
</body>
</html>