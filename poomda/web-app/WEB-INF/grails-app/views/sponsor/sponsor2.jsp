<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/sponsor.css">
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
					<div class="input-img">
						<img src="../img/common/no-image-big3.gif">
						<a href="#;"></a>
						<input type="file">
					</div>
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
										<input type="text" value="반달이네 보호소" readonly>
										<a href="#;">
											변경
										</a>
									</td>
								</tr>
								<tr>
									<th>
										제목<span>*</span>
									</th>
									<td class="subject-td">
										<input type="text" placeholder="제목을 입력해 주세요.">
									</td>
								</tr>
								<tr>
									<th>
										모집기간<span>*</span>
									</th>
									<td class="calendar-td">
										<input type="text" value="2015-02-05" readonly>
										<a href="#;"></a>
									</td>
								</tr>
								<tr>
									<th>
										장소<span>*</span>
									</th>
									<td class="place-td">
										<label>
											<select>
												<option selected>
													세종특별자치시
												</option>
												<option>
													지역
												</option>
												<option>
													지역
												</option>
											<option>This Is A Longer Option</option>
											</select>
										</label>
										<label>
											<select class="all-select">
												<option selected>
													전체
												</option>
												<option>
													지역
												</option>
												<option>
													지역
												</option>
											<option>This Is A Longer Option</option>
											</select>
										</label>
										<input type="text" placeholder="상세주소(선택입력)">
									</td>
								</tr>
								<tr>
									<th>
										활동성격<span>*</span>
									</th>
									<td class="active-etc">
										<a href="#;">
											청소
										</a>
										<a href="#;">
											미용
										</a>
										<a href="#;">
											의료
										</a>
										<a href="#;">
											보수
										</a>
										<a href="#;">
											기타
										</a>
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
										<textarea>타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드
티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 

지금은 보호소에서 건강히 잘 지내고 있으며 애교가 많습니다.타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드
티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 

지금은 보호소에서 건강히 잘 지내고 있으며 애교가 많습니다.타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드
티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 

지금은 보호소에서 건강히 잘 지내고 있으며 애교가 많습니다.타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드
티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 

지금은 보호소에서 건강히 잘 지내고 있으며 애교가 많습니다.타이어 공장 뒷편 야산 근처에서 발견 되었습니다. 발견될 당시 빨간색 후드
티를 입고 있었고, 상당히 야윈 상태로 발견 되었습니다. 

지금은 보호소에서 건강히 잘 지내고 있으며 애교가 많습니다.</textarea>
										<p>
											107 <span class="gray-text">/ 1000 자</span><br>
											<br>
											<span class="red-text">*<span> 된 표시는 필수입력 입니다.
										</p>
									</td>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- service-input // E -->

			</div>
			<!-- sponsor-condition // E -->

			<div class="sponsor-navbox">
				<a href="/" class="sponsor-cancle">
					취 소
				</a>
				<a href="./sponsor3.jsp" class="sponsor-ok">
					완 료
				</a>
			</div>
		</div>
	</div>
	<!-- sub-content // E -->
	
<%@ include file="../inc/footer.jsp" %>