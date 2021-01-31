<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 쓴 글 | bee</title>
</head>
<body>
	<!-- 반응형 웹에 필요한 소스 -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<!-- 폰트어썸 CDN -->
	<!-- reference your copy Font Awesome here (from our CDN or by hosting yourself) -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<!-- 노토산스 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<style>

/*커서 없애버려...*/
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f9f9f9;
}

div {
	/* border: 1px black solid; */
	
}

.container {
	width: 100%;
	height: 100%;
}

/* 내 정보 네비바 */
.mypage_navi_div {
	padding: 0;
}

#mypage_navi_ul {
	width: 75%;
	height: 300px;
	list-style-type: none;
	margin: 20px auto;
	padding: 0px;
}

#mypage_navi_ul a {
	text-decoration: none;
	color: #50401B;
	display: block; /*a태그를 li영역 전체로 잡기 위함*/
	position: relative;
}

#mypage_navi_ul li {
	border: 1px solid #ededed;
	padding: 10px;
	background-color: white;
}

#mypage_navi_ul li i {
	color: #50401B;
	position: absolute;
	left: 95%;
	top: 20%;
}

/* 내가 쓴 글 피드 */
myhistroy_div {
	width: 100%;
	height: auto;
	margin: 20px auto;
}

.myhistroy_table tr th {
	padding: 10px 20px;
	background-color: #dedede;
	position: relative;
}

.myhistroy_table tr th>select {
	color: #50401B;
	position: absolute;
	right: 5%;
	top: 17%;
}

select:focus {
	outline: none;
}

.myhistroy_categories td {
	width: 50%;
	padding: 10px 0px;
	text-align: center;
	position: relative;
}

.myhistroy_categories td a {
	text-decoration: none;
	color: #50401B;
	display: block; /*a태그를 영역 전체로 잡기 위함*/
}

.myhistroy_categories_underbar td:nth-child(1) {
	background-color: #50401B;
	height: 2px;
}

.myhistroy_beesName a {
	text-decoration: none;
	color: #50401B;
	display: block; /*a태그를 영역 전체로 잡기 위함*/
}

.myhistroy_beesName {
	border: 1px solid #ededed;
}

.myhistroy_beesName td {
	padding: 5px 20px;
}

.myhistroy_table, .myhistroy_board_table {
	width: 100%;
	color: #50401B;
	border: 1px solid #ededed;
	background-color: white;
}

.myhistroy_board_table {
	margin: 10px auto;
}

</style>
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(1).css('background','#F7D078').css('font-weight','700');
			
/* 			//사이드 네비 hover css변경
			$(".navi_li").hover(function(){
				$(this).css('background','#fff3d8');
				$(this).eq(0).css('font-weight','700');
				$(this).siblings().css('background','white'); //siblings() 나를 제외한 형제 요소들 모두 선택
				$(this).siblings().css('font-weight','400');
			},function(){
				$(".navi_li").eq(1).css('background','#F7D078').css('font-weight','700');
				$(".navi_li").eq(1).siblings().css('background','white').css('font-weight','400');
			}); */
			

			
			
		});
	
	</script>
	<!-- 피드부분 외부 js / css -->
	<!--비즈 피드 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesFeed.css">
	<script type="text/javascript" src="/resources/js/beesFeed.js"></script>
	<!--비즈 글 내용 수정 모달-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesModifyModal.css">
	<script type="text/javascript" src="/resources/js/beesModifyModal.js"></script>
	
	<div class="container pt-3">
		<div class="row">
			<!-- 여백 -->
			<div class="col-1"></div>
			<!-- mypage 사이드 네비 -->
			<div class="col-3 p-0 mypage_navi_div">
				<ul id="mypage_navi_ul">
					<li class="navi_li"><a href="/myinfo.do" id="myInfo">내 정보<i class="fas fa-angle-right"></i></a></li>
					<li class="navi_li"><a href="/myboard.do" id="myHistory">내가 쓴 글<i class="fas fa-angle-right"></i></a></li>
					<li class="navi_li"><a href='/myheart.do' id="myHeart">좋아요 누른 목록<i class="fas fa-angle-right"></i></a></li>
					<li class="navi_li"><a href='/mybeesJoinQnas.do' id="myApprove">비즈 가입 확인<i class="fas fa-angle-right"></i></a></li>
					<li class="navi_li"><a href='/myQnaHistory.do' id="myQuestion">문의사항<i class="fas fa-angle-right"></i></a></li>
					<li class="navi_li"><a href='/mynotice.do' id="myNotice">공지사항<i class="fas fa-angle-right"></i></a></li>
				</ul>
			</div>
			<!-- mypage 사이드 네비 -->
			<!-- mypage 피드(내가 쓴 글_게시글) -->
			<div class="col-7 p-0 myhistroy_div">
				<table class="myhistroy_table">
					<tr>
						<th>내가 쓴 글</th>
						<th><select>
								<option>비즈별 모아보기</option>
								<option>초보 개발자 모임</option>
								<!-- 가입한 비즈 목록 불러오기 -->
							</select></th>
					</tr>
					<tr class="myhistroy_categories">
						<td>
							<a href="/myboard.do">게시글</a>
						</td>
						<td>
							<a href="/mycomment.do">댓글</a>
						</td>
					</tr>
					<tr class="myhistroy_categories_underbar">
						<td></td>
						<td></td>
					</tr>
				</table>
				<table class="myhistroy_board_table">
					<!-- 클릭하면 비즈로 이동 -->
					<!-- <tr class="myhistroy_beesName">
							<td colspan="2"><a href="#">초보 개발자 모임</a></td>
						</tr> -->
					
					<!-- 클릭하면 비즈로 이동 -->
					<!-- 클릭하면 모달로 게시글 보여줌 -->
					<!-- 클릭하면 모달로 게시글 보여줌 -->
				</table>
			
			<!-- mypage 피드(내가 쓴 글) -->
			<%for (int i=0;i<10;i++){
				//i<내가 쓴 게시글.length
				%>
			<div class="bees-name-tag"> 초보 개발자 모임 </div>
			<div class="bees-feed" style="margin-top:2px !important;">
				<table class="feed-table">
					<tr>
						<td class="feed-writer-info" rowspan="2">
							<div class="feed-writer-profile"></div>
						</td>
						<td class="feed-writer-name">홍길동</td>
						<td class="feed-setting" rowspan="2">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16"> <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" /> </svg>
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
												<label for="spaghetti"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" /> </svg>
												</label>
											</div>
											<div class="item-info">
												<div class="item-name">스파게티</div>
												<div class="item-vote-num">
													<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16"> <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" /> </svg>
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
												<label for="dduck"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" /> </svg>
												</label>
											</div>
											<div class="item-info">
												<div class="item-name">떡볶이</div>
												<div class="item-vote-num">
													<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16"> <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" /> </svg>
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
												<label for="chicken"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" /> </svg>
												</label>
											</div>
											<div class="item-info">
												<div class="item-name">치킨</div>
												<div class="item-vote-num">
													<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="lightgray" class="bi bi-person-fill" viewBox="0 0 16 16"> <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" /> </svg>
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
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" class="feed-like-btn bi bi-heart-fill" viewBox="0 0 16 16"> <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" /> </svg>
							<span class="feed-like-count"> 3 </span> &nbsp;&nbsp; 댓글 <span class="comment-count">2</span>
						</td>
						<td class="comment-box-btn" style="font-size: 0.9rem; font-weight: 300; padding-top: 30px;">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="comment-close bi bi-chevron-up" viewBox="0 0 15 15"> <path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" /> </svg>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="comment-open bi bi-chevron-down" viewBox="0 0 15 15"> <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" /> </svg>
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
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6D6042" class="bi bi-plus-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> </svg>
							<input class="recomment-input-text" type="text" placeholder="답글을 남겨주세요">
							<input class="recomment-submit-btn" type="submit" value="보내기">
							<button class="recomment-reset-btn" type="button">취소</button>
						</td>
					</tr>
					<tr>
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
							2021년 1월 24일 <span class="recomment-btn">답글쓰기</span> <span class="comment-modify-btn">수정하기</span> <span class="comment-del-btn">삭제하기</span>
						</td>
					</tr>
					<tr class="recomment-write-box">
						<!--attr로 display 속성 없애기-->
						<td>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6D6042" class="bi bi-plus-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> </svg>
							<input class="recomment-input-text" type="text" placeholder="답글을 남겨주세요">
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
						</td>
					</tr>
					<!--수정하기-->
					<tr>
						<td colspan="3" style="padding: 10px 40px 20px 45px;">
							<input class="comment-input-box" type="text" placeholder="댓글을 남겨주세요">
							<input class="comment-submit-btn" type="submit" value="보내기">
						</td>
					</tr>
				</table>
			</div>
			<%} %>
			<!-- 여백 -->
			</div>
			<div class="col-1"></div>
	</div>
	</div>
	<!--글 수정 모달 -->
					<form>
						<div id="modify-modal-bg"></div>
						<div id="modify-modal">
							<div id="modify-modal-header">
								<span style="margin-left: 30px;">글 수정하기</span>
								<button id="modify-modal-close">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16"> <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" /> </svg>
								</button>
							</div>
							<div id="modify-modal-cont">
								<div id="modify-modal-cont-div" contentEditable="true"></div>
								<textarea style="display: none"></textarea>
							</div>
							<div id="modify-modal-footer">
								<div class="modify-function-box">
									<p class="modify-function-tag">사진</p>
									<span class="modify-function-icon"> <input type="file" style="display: none;" id="modify-input-image" multiple> <label for="modify-input-image"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-image-fill" viewBox="0 0 16 16"> <path d="M.002 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-12a2 2 0 0 1-2-2V3zm1 9v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V9.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12zm5-6.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" /> </svg> </label>
									</span>
								</div>
								<div class="modify-function-box">
									<p class="modify-function-tag">투표</p>
									<span class="modify-function-icon"> <svg id="modify-vote-modal-btn" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-bar-chart-line-fill" viewBox="0 0 16 16"> <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z" /> </svg>
									</span>
								</div>
								<div class="modify-function-box">
									<p class="modify-function-tag">파일</p>
									<span class="modify-function-icon"> <input type="file" style="display: none" id="modify-input-file"> <label for="modify-input-file"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="gray" class="bi bi-paperclip" viewBox="0 0 16 16"> <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z" /> </svg> </label>
									</span>
								</div>
								<div class="modify-function-box">
									<p class="modify-function-tag">일정</p>
									<span class="modify-function-icon"> <svg id="modify-sche-modal-btn" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="gray" class="bi bi-calendar-week" viewBox="0 0 16 16"> <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" /> <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" /> </svg></span>
								</div>
								<button id="modify-modal-submit" type="submit">게시</button>
							</div>
						</div>
						<div id="modify-vote-modal">
							<div id="modify-vote-modal-header">
								<span style="margin-left: 50px;">투표</span>
								<button id="modify-vote-modal-close" type="button">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16"> <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" /> </svg>
								</button>
							</div>
							<div id="modify-vote-modal-cont" style="text-align: center;">
								<input type="text" class="modify-vote-modal-title" placeholder="투표 제목">
								<br>
								<input type="text" class="modify-vote-modal-items" placeholder="항목 입력">
								<input type="button" class="item-del-btn" value=" " disabled="true">
								<br>
								<input type="text" class="modify-vote-modal-items" placeholder="항목 입력">
								<input type="button" class="item-del-btn" value=" " disabled="true">
								<br> <span id="modify-vote-modal-items-message" style="display: none; font-size: 0.7rem; color: rgb(247, 64, 64); position: absolute; left: 50%;">투표 항목은 2개 이상이어야 합니다.</span>
								<button id="modify-item-add-btn" type="button" style="padding: 20px 0px 10px 0; margin-right: 240px; background-color: transparent; border: 0px solid white; font-size: 0.9rem; font-weight: 200;">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#6D6042" class="bi bi-plus" viewBox="0 0 16 16"> <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> </svg>
									항목 추가
								</button>
								<div id="modify-vote-setting" style="width: 100%; height: 40px; text-align: left; margin-bottom: 10px;">
									<input type="checkbox" name="modify-anonymous-selection" style="display: none;">
									<label for="modify-anonymous-selection" style="padding-left: 22px;"> <svg class="modify-anonymous-btn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="item-select-btn bi bi-check-circle" viewBox="0 0 16 16"> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" /> <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" /> </svg> <span style="font-size: 0.9rem; font-weight: 300;">무기명 투표</span><br>
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
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16"> <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" /> </svg>
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
										<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x" viewBox="0 0 16 16"> <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" /> </svg>
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
<%@include file="/common/footer.jsp"%>
</body>
</html>