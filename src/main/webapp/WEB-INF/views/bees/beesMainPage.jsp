<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/cdnLib.jsp"%>
	<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesForm.css">
	<script type="text/javascript" src="/resources/js/beesForm.js"></script>
	<!--비즈 컨텐츠 + 글쓰기 / 검색 버튼-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesContents.css">
	<script type="text/javascript" src="/resources/js/beesContents.js"></script>
	<!--비즈 피드 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesFeed.css">
	<script type="text/javascript" src="/resources/js/beesFeed.js"></script>
	<!--비즈 글쓰기 모달-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesWriteModal.css">
	<script type="text/javascript" src="/resources/js/beesWriteModal.js"></script>
	<!--비즈 피드 수정 모달-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesModifyModal.css">
	<script type="text/javascript" src="/resources/js/beesModifyModal.js"></script>
	<link rel="stylesheet" type="text/css" href="/common/common.css">
	
	
	<div id="header">
		<%@include file="/include/header_bee.jsp" %>
	</div>	
	<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="bees-side" class="container m-0 p-2">
					<div id="bees-side-profile">
						<table>
							<tr>
								<td id="bees-cover" colspan="2"></td>
							</tr>
							<tr>
								<td id="bees-name" colspan="2">비즈이름</td>
							</tr>
							<tr>
								<td id="bees-member-count">
									멤버<b> 6 </b>
								</td>
								<td id="bees-invite">
									<a href=""><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 19">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
              </svg>초대</a>
								</td>
							</tr>
							<tr>
								<td id="bees-note" colspan="2">
									<a href="">비즈 소개 설정 </a>
								</td>
							</tr>
							<tr>
								<td id="bees-public" colspan="2">비즈와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</td>
							</tr>
							<tr>
								<td class="innerline" colspan="2">
									<hr>
								</td>
							</tr>
							<tr>
								<td id="bees-setting" colspan="2">
									<a href=""> <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z" />
                <path
												d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"
											/>
              </svg>&nbsp;비즈설정
									</a>
								</td>
							</tr>
							<tr>
								<td id="join-box" colspan="2">
									<button id="join-btn">비즈 가입하기</button>
								</td>
							</tr>
						</table>
					</div>
					<div id="bees-side-chatting">
						<table>
							<tr>
								<td id="chatting-header">채팅</td>
								<td id="new-chat">
									<a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()">새 채팅</a>
								</td>
							</tr>
							<tr>
								<td class="innerline" colspan="2">
									<hr>
								</td>
							</tr>
							<tr>
								<td class="chat-list" colspan="2">
									<div class="chat-profile"></div>
									<a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color: dimgray">사용자 이름</a>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="padding: 10px 5px 0 5px; line-height: 10px;">
									<div class="chat-profile"></div>
									<a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color: dimgray">'비즈' 전체 채팅</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-7 p-0">
				<div id="bees-contents" class="container m-0 p-2">
					<div id="bees-search-bar">
						<input type="text" placeholder="글 내용, @작성자 검색">
						<button type="submit">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="dimgray" class="bi bi-search" viewBox="0 0 16 18">
        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
    </svg>
						</button>
					</div>
					<div id="bees-write-box">
						<div id="bees-typing-box">
							<span class="write-modal-btn">새로운 소식을 남겨보세요</span>
						</div>
						<div class="bees-function-box" style="margin-left: 10px;">
							<p class="bees-function-tag">사진</p>
							<span class="bees-function-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="lightgray" class="write-modal-btn bi bi-image-fill" viewBox="0 0 16 16">
            <path d="M.002 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-12a2 2 0 0 1-2-2V3zm1 9v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V9.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12zm5-6.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" />
          </svg>
							</span>
						</div>
						<div class="bees-function-box">
							<p class="bees-function-tag">투표</p>
							<span class="bees-function-icon" style="margin-left: 10px"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="lightgray" class="write-modal-btn bi bi-bar-chart-line-fill" viewBox="0 0 16 16">
            <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z" />
          </svg>
							</span>
						</div>
						<div class="bees-function-box">
							<p class="bees-function-tag">파일</p>
							<span class="bees-function-icon"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="lightgray" class="write-modal-btn bi bi-paperclip" viewBox="0 0 16 16">
            <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z" />
          </svg> </span>
						</div>
						<div class="bees-function-box">
							<p class="bees-function-tag">일정</p>
							<span class="bees-function-icon"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="lightgray" class="write-modal-btn bi bi-calendar-week" viewBox="0 0 16 16">
            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
          </svg></span>
						</div>
					</div>
					<%
						for (int i = 0; i < 10; i++) {
					%>
					<div class="bees-feed">
						<table class="feed-table">
							<tr>
								<td class="feed-writer-info" rowspan="2">
									<div class="feed-writer-profile"></div>
								</td>
								<td class="feed-writer-name">홍길동</td>
								<td class="feed-setting" rowspan="2">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
        <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
    </svg>
								</td>
							</tr>
							<tr>
								<td class="feed-timestamp">2021년 01월 23일 오후 1:04</td>
							</tr>
							<tr style="visibility: hidden;">
								<td class="feed-navi" colspan="3">
									<div class="feed-navi-block">
										<div class="feed-modify">수정하기</div>
										<div class="feed-delete">삭제하기</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="feed-cont" colspan="3">
									<p class="board-cont">
										동해물과 백두산이 마르고 닳도록 <br> 하느님이 보우하사 우리 나라 만세<br>
									<p>
										<!--일정-->
									<div class="sche-box">
										<div class="sche-icon-box">
											<div class="sche-icon"></div>
										</div>
										<div class="sche-cont-box">
											<p class="sche-title">기획안 발표</p>
											<p class="sche-date">2021년 1월 25일 월요일</p>
										</div>
									</div>
									<!--파일-->
									<br>
									<div class="file-box">
										<div class="file-icon-box">
											<div class="file-icon"></div>
										</div>
										<div class="file-cont-box">
											<p class="file-info">파일</p>
											<p class="file-title">한소희짱.png</p>
										</div>
									</div>
									<!--투표-->
									<br>
									<form action="" method="get">
										<div class="vote-box">
											<div class="vote-title-box">
												<div class="vote-icon-box">
													<div class="vote-icon"></div>
												</div>
												<div class="vote-info-box">
													<p class="vote-state">투표 미완료</p>
													<p class="vote-title">저녁 뭐 먹을래?</p>
												</div>
											</div>
											<!--투표 선택 바-->
											<div class="vote-items-box">
												<div class="item-section">
													<div class="item-select">
														<!-- check box-->
														<input type="checkbox" name="spaghetti" style="display: none;">
														<label for="spaghetti"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
            </svg>
														</label>
													</div>
													<div class="item-info">
														<div class="item-name">스파게티</div>
														<div class="item-vote-num">
															<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16">
                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
            </svg>
															<span class="vote-num">3</span>
														</div>
														<div class="item-vote-bar">
															<!-- width: 투표 결과에 따라-->
															<p class="color-bar" style="width: 30%"></p>
															<p class="default-bar"></p>
														</div>
													</div>
												</div>
											</div>
											<!--투표 바 2-->
											<div class="vote-items-box">
												<div class="item-section">
													<div class="item-select">
														<input type="checkbox" name="dduck" style="display: none;">
														<label for="dduck"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                </svg>
														</label>
													</div>
													<div class="item-info">
														<div class="item-name">떡볶이</div>
														<div class="item-vote-num">
															<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16">
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                </svg>
															<span class="vote-num">1</span>
														</div>
														<div class="item-vote-bar">
															<!-- width: 투표 결과에 따라-->
															<p class="color-bar" style="width: 10%"></p>
															<p class="default-bar"></p>
														</div>
													</div>
												</div>
											</div>
											<!--투표 바 3-->
											<div class="vote-items-box">
												<div class="item-section">
													<div class="item-select">
														<input type="checkbox" name="chicken" style="display: none;">
														<label for="chicken"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                </svg>
														</label>
													</div>
													<div class="item-info">
														<div class="item-name">치킨</div>
														<div class="item-vote-num">
															<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16">
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                </svg>
															<span class="vote-num">0</span>
														</div>
														<div class="item-vote-bar">
															<!-- width: 투표 결과에 따라-->
															<p class="color-bar"></p>
															<p class="default-bar"></p>
														</div>
													</div>
												</div>
											</div>
											<div class="vote-footer">
												<hr>
												<center>
													<button class="vote-reset" type="reset">취소하기</button>
													<button class="vote-submit" type="submit">투표하기</button>
												</center>
											</div>
										</div>
									</form>
									<!--투표 끝-->
								</td>
							</tr>
							<tr>
								<td colspan="2" style="padding-left: 50px; font-size: 0.9rem; font-weight: 300; padding-top: 30px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" class="feed-like-btn bi bi-heart-fill" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
    </svg>
									<span class="feed-like-count"> 3 </span> &nbsp;&nbsp; 댓글 <span class="comment-count">2</span>
								</td>
								<td class="comment-box-btn" style="font-size: 0.9rem; font-weight: 300; padding-top: 30px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="comment-close bi bi-chevron-up" viewBox="0 0 15 15">
            <path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" />
        </svg>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="comment-open bi bi-chevron-down" viewBox="0 0 15 15">
            <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
        </svg>
								</td>
							</tr>
							<tr>
								<td colspan="3" style="padding-left: 35px; padding-right: 35px;">
									<hr>
								</td>
							</tr>
						</table>
						<table class="comment-table">
							<tr>
								<td class="comment-writer" rowspan="3">
									<div class="comment-writer-profile"></div>
								</td>
								<td class="comment-writer-name">장발장</td>
							</tr>
							<tr>
								<td class="comment-cont">무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세</td>
							</tr>
							<tr>
								<td class="comment-date">
									2021년 1월 24일 <span class="recomment-btn">답글쓰기</span>
								</td>
							</tr>
							<tr class="recomment-write-box">
								<!--attr로 display 속성 없애기-->
								<td>
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6D6042" class="bi bi-plus-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
        </svg>						<div class="recomment-input-box">
									<input class="recomment-input-text" type="text" placeholder="답글을 남겨주세요">
									<span>1/200</span>
									</div>
									<input class="recomment-submit-btn" type="submit" value="보내기">
									<button class="recomment-reset-btn" type="button">취소</button>
								</td>
							</tr>
							<tr>
								<td rowspan="2"></td>
								<td class="recomment-cont">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-arrow-return-right" viewBox="0 0 16 16">
  									<path fill-rule="evenodd" d="M1.5 1.5A.5.5 0 0 0 1 2v4.8a2.5 2.5 0 0 0 2.5 2.5h9.793l-3.347 3.346a.5.5 0 0 0 .708.708l4.2-4.2a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8.3H3.5A1.5 1.5 0 0 1 2 6.8V2a.5.5 0 0 0-.5-.5z" />
									</svg>
									<span class="recomment-writer-name" style="margin-right:10px;">장발장</span><span class="recomment-text" style="margin-right:40px;">무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세
									무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세
									무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세
									무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세
									무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세
									</span>
								</td>
							</tr>
							<tr>
								<td class="recomment-date">
									2021년 1월 24일 <span class="recomment-btn">답글쓰기</span> <span class="recomment-modify-btn">수정하기</span> <span class="recomment-del-btn">삭제하기</span>
								</td>
							</tr>
							<tr class="recomment-write-box">
								<!--attr로 display 속성 없애기-->
								<td>
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6D6042" class="bi bi-plus-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
        </svg>						<div class="recomment-input-box">
									<input class="recomment-input-text" type="text" placeholder="답글을 남겨주세요">
									<span>1/200</span>
									</div>
									<input class="recomment-submit-btn" type="submit" value="보내기">
									<button class="recomment-reset-btn" type="button">취소</button>
								</td>
							</tr>
							<!-- 대댓글 수정하기 -->
							<tr class="recomment-textarea">
							<td></td>
								<td>
									<textarea class="recomment-cont-modify">무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세</textarea>
								</td>
							</tr>
							<tr class="recomment-textarea-btn">
							<td></td>
								<td>
									<input class="recomment-modify-reset-btn" type="reset" value="취소">
									<input class="recomment-modify-submit-btn" type="submit" value="저장">
									<p class="recomment-modify-count">1/200</p>
								</td>
							</tr>
							<tr>
							<!--  -->
								<td rowspan="3" class="comment-writer">
									<div class="comment-writer-profile"></div>
								</td>
								<td class="comment-writer-name">홍길동</td>
							</tr>
							<tr>
								<td class="comment-cont">무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세</td>
							</tr>
							<tr>
								<td class="comment-date">
									2021년 1월 24일 <span class="recomment-btn">답글쓰기</span><span class="comment-modify-btn">수정하기</span> <span class="comment-del-btn">삭제하기</span>
								</td>
							</tr>
							<tr class="recomment-write-box">
								<!--attr로 display 속성 없애기-->
								<td>
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6D6042" class="bi bi-plus-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
        </svg>						<div class="recomment-input-box">
									<input class="recomment-input-text" type="text" placeholder="답글을 남겨주세요">
									<span>1/200</span>
									</div>
									<input class="recomment-submit-btn" type="submit" value="보내기">
									<button class="recomment-reset-btn" type="button">취소</button>
								</td>
							</tr>
							<!--수정하기-->
							<tr class="comment-textarea">
								<td>
									<textarea class="comment-cont-modify">무궁화 삼천리 화려강산 대한사람 대한으로 길이 보존하세</textarea>
								</td>
							</tr>
							<tr class="comment-textarea-btn">
								<td>
									<input class="comment-modify-reset-btn" type="reset" value="취소">
									<input class="comment-modify-submit-btn" type="submit" value="저장">
									<p class="comment-modify-count">1/200</p>
								</td>
							</tr>
							<!--수정하기-->
							<tr>
								<td class="comment-write-box" colspan="3">
									<div>
									<input class="comment-input-box" type="text" placeholder="댓글을 남겨주세요">
									<span>1/200</span>
									</div>
									<input class="comment-submit-btn" type="submit" value="보내기">
								</td>
							</tr>
						</table>
					</div>
					<%
						}
					%>
					<div style="height: 45px;">
						<button id="feed-add-btn">+ 더보기</button>
					</div>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<!--글쓰기 모달-->
	<!--form태그로 묶임. -->
	<!--모달 부분 -->
	<form>
		<div id="write-modal-bg"></div>
		<div id="write-modal">
			<div id="write-modal-header">
				<span style="margin-left: 30px;">글쓰기</span>
				<button id="write-modal-close">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
            </svg>
				</button>
			</div>
			<div id="write-modal-cont">
				<div id="write-modal-cont-div" contentEditable="true"></div>
				<textarea style="display: none"></textarea>
			</div>
			<div id="write-modal-footer">
				<div class="write-function-box">
					<p class="write-function-tag">사진</p>
					<span class="write-function-icon"> <input type="file" style="display: none;" id="input-image" multiple> <label for="input-image"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-image-fill" viewBox="0 0 16 16">
                    <path d="M.002 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-12a2 2 0 0 1-2-2V3zm1 9v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V9.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12zm5-6.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" />
                </svg> </label>
					</span>
				</div>
				<div class="write-function-box">
					<p class="write-function-tag">투표</p>
					<span class="write-function-icon"> <svg id="vote-modal-btn" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-bar-chart-line-fill" viewBox="0 0 16 16">
                    <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z" />
                </svg>
					</span>
				</div>
				<div class="write-function-box">
					<p class="write-function-tag">파일</p>
					<span class="write-function-icon"> <input type="file" style="display: none" id="input-file"> <label for="input-file"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-paperclip" viewBox="0 0 16 16">
                    <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z" />
                </svg> </label>
					</span>
				</div>
				<div class="write-function-box">
					<p class="write-function-tag">일정</p>
					<span class="write-function-icon"> <svg id="sche-modal-btn" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-calendar-week" viewBox="0 0 16 16">
                    <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                    <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                </svg></span>
				</div>
				<button id="write-modal-submit" type="submit">게시</button>
			</div>
		</div>
		<div id="dual-modal-bg"></div>
		<div id="vote-modal">
			<div id="vote-modal-header">
				<span style="margin-left: 50px;">투표</span>
				<button id="vote-modal-close" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
            </svg>
				</button>
			</div>
			<div id="vote-modal-cont" style="text-align: center;">
				<input type="text" class="vote-modal-title" placeholder="투표 제목">
				<br>
				<input type="text" class="vote-modal-items" placeholder="항목 입력">
				<input type="button" class="item-del-btn" value=" " disabled="true">
				<br>
				<input type="text" class="vote-modal-items" placeholder="항목 입력">
				<input type="button" class="item-del-btn" value=" " disabled="true">
				<br> <span id="vote-modal-items-message" style="display: none; font-size: 0.7rem; color: rgb(247, 64, 64); position: absolute; left: 50%;">투표 항목은 2개 이상이어야 합니다.</span>
				<button id="item-add-btn" type="button" style="padding: 20px 0px 10px 0; margin-right: 240px; background-color: transparent; border: 0px solid white; font-size: 0.9rem; font-weight: 200;">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#6D6042" class="bi bi-plus" viewBox="0 0 16 16">
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
            </svg>
					항목 추가
				</button>
				<div id="vote-setting" style="width: 100%; height: 40px; text-align: left; margin-bottom: 10px;">
					<input type="checkbox" name="anonymous-selection" style="display: none;">
					<label for="anonymous-selection" style="padding-left: 22px;"> <svg class="anonymous-btn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
            </svg> <span style="font-size: 0.9rem; font-weight: 300;">무기명 투표</span><br>
					</label>
				</div>
			</div>
			<div id="vote-modal-footer">
				<button id="vote-modal-submit" type="button">게시</button>
			</div>
		</div>
		<div id="sche-modal">
			<div id="sche-modal-header">
				<span style="margin-left: 50px;">일정 등록하기</span>
				<button id="sche-modal-close" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
            </svg>
				</button>
			</div>
			<div id="sche-modal-cont" style="text-align: center;">
				<table>
					<tr>
						<td colspan="2">
							<input id="sche-modal-title" type="text" placeholder="일정 제목">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea id="sche-modal-note" placeholder="일정 설명"></textarea>
						</td>
					</tr>
					<tr style="height: 15px; font-size: 0.9rem;">
						<td>시작</td>
						<td>종료</td>
					</tr>
					<tr>
						<td style="text-align: right; padding-right: 5px;">
							<input id="sche-start-date" type="date">
						</td>
						<td style="text-align: left; padding-left: 5px;">
							<input id="sche-end-date" type="date">
						</td>
					</tr>
				</table>
			</div>
			<div id="sche-modal-footer">
				<button id="sche-modal-submit" type="button">완료</button>
			</div>
		</div>
	</form>
	<!--일정 모달 끝-->
	<!--전체 모달 거대한 form태그로 묶기-->
	<!--글 수정 모달 -->
	<form>
		<div id="modify-modal-bg"></div>
		<div id="modify-modal">
			<div id="modify-modal-header">
				<span style="margin-left: 30px;">글 수정하기</span>
				<button id="modify-modal-close">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
				</button>
			</div>
			<div id="modify-modal-cont">
				<div id="modify-modal-cont-div" contentEditable="true"></div>
				<textarea style="display: none"></textarea>
			</div>
			<div id="modify-modal-footer">
				<div class="modify-function-box">
					<p class="modify-function-tag">사진</p>
					<span class="modify-function-icon"> <input type="file" style="display: none;" id="modify-input-image" multiple> <label for="modify-input-image"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-image-fill" viewBox="0 0 16 16">
                            <path d="M.002 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-12a2 2 0 0 1-2-2V3zm1 9v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V9.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12zm5-6.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" />
                        </svg> </label>
					</span>
				</div>
				<div class="modify-function-box">
					<p class="modify-function-tag">투표</p>
					<span class="modify-function-icon"> <svg id="modify-vote-modal-btn" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-bar-chart-line-fill" viewBox="0 0 16 16">
                            <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z" />
                        </svg>
					</span>
				</div>
				<div class="modify-function-box">
					<p class="modify-function-tag">파일</p>
					<span class="modify-function-icon"> <input type="file" style="display: none" id="modify-input-file"> <label for="modify-input-file"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-paperclip" viewBox="0 0 16 16">
                            <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z" />
                        </svg> </label>
					</span>
				</div>
				<div class="modify-function-box">
					<p class="modify-function-tag">일정</p>
					<span class="modify-function-icon"> <svg id="modify-sche-modal-btn" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-calendar-week" viewBox="0 0 16 16">
                            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                        </svg></span>
				</div>
				<button id="modify-modal-submit" type="submit">게시</button>
			</div>
		</div>
		<div id="modify-vote-modal">
			<div id="modify-vote-modal-header">
				<span style="margin-left: 50px;">투표</span>
				<button id="modify-vote-modal-close" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
				</button>
			</div>
			<div id="modify-vote-modal-cont" style="text-align: center;">
				<input type="text" class="modify-vote-modal-title" placeholder="투표 제목">
				<br>
				<input type="text" class="modify-vote-modal-items" placeholder="항목 입력">
				<input type="button" class="modify-item-del-btn" value=" " disabled="true">
				<br>
				<input type="text" class="modify-vote-modal-items" placeholder="항목 입력">
				<input type="button" class="modify-item-del-btn" value=" " disabled="true">
				<br> <span id="modify-vote-modal-items-message" style="display: none; font-size: 0.7rem; color: rgb(247, 64, 64); position: absolute; left: 50%;">투표 항목은 2개 이상이어야 합니다.</span>
				<button id="modify-item-add-btn" type="button" style="padding: 20px 0px 10px 0; margin-right: 240px; background-color: transparent; border: 0px solid white; font-size: 0.9rem; font-weight: 200;">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#6D6042" class="bi bi-plus" viewBox="0 0 16 16">
                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                    </svg>
					항목 추가
				</button>
				<div id="modify-vote-setting" style="width: 100%; height: 40px; text-align: left; margin-bottom: 10px;">
					<input type="checkbox" name="modify-anonymous-selection" style="display: none;">
					<label for="modify-anonymous-selection" style="padding-left: 22px;"> <svg class="modify-anonymous-btn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                        <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                    </svg> <span style="font-size: 0.9rem; font-weight: 300;">무기명 투표</span><br>
					</label>
				</div>
			</div>
			<div id="modify-vote-modal-footer">
				<button id="modify-vote-modal-submit" type="button">게시</button>
			</div>
		</div>
		<div id="modify-sche-modal">
			<div id="modify-sche-modal-header">
				<span style="margin-left: 50px;">일정 등록하기</span>
				<button id="modify-sche-modal-close" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
				</button>
			</div>
			<div id="modify-sche-modal-cont" style="text-align: center;">
				<table>
					<tr>
						<td colspan="2">
							<input id="modify-sche-modal-title" type="text" placeholder="일정 제목">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea id="modify-sche-modal-note" placeholder="일정 설명"></textarea>
						</td>
					</tr>
					<tr style="height: 15px; font-size: 0.9rem;">
						<td>시작</td>
						<td>종료</td>
					</tr>
					<tr>
						<td style="text-align: right; padding-right: 5px;">
							<input id="modify-sche-start-date" type="date">
						</td>
						<td style="text-align: left; padding-left: 5px;">
							<input id="modify-sche-end-date" type="date">
						</td>
					</tr>
				</table>
			</div>
			<div id="modify-sche-modal-footer">
				<button id="modify-sche-modal-submit" type="button">완료</button>
			</div>
		</div>
	</form>
	<!--수정 모달 -->
	<!--상세일정모달 부분 -->
	<div id="feed-modal-bg"></div>
	<div id="sche-detail-modal">
		<div id="sche-detail-modal-header">
			<button id="sche-detail-modal-close">
				<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16">
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
			</button>
		</div>
		<form>
			<div id="sche-detail-modal-cont">
				<div id="sche-detail-title">기획안 발표</div>
				<div id="sche-detail-date">2021.01.29 (월) - 2021.01.30 (금)</div>
				<div id="sche-detail-writer-info">
					<div id="sche-detail-writer-profile"></div>
					<span>홍길동</span>
				</div>
				<div id="sche-detail-note">4모임 개인 블로그 + SNS 사이트 웹 사이트 기획안 발표하는 날</div>
			</div>
			<div id="sche-detail-modal-footer"></div>
		</form>
	</div>
	<!--상세일정 모달부분-->
	<div id="footer">
	<%@include file="/common/footer.jsp"%>
	</div>
</body>
</html>