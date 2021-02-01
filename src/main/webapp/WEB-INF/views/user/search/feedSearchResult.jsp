<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/cdnLib.jsp"%>
	<link rel="stylesheet" type="text/css" href="/resources/css/feedSearchResult.css">
	<script type="text/javascript" src="/resources/js/feedSearchResult.js"></script>
	<div>
		<%@include file="/include/header_user.jsp" %>
	</div>
	<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="sub-content" class="container p-2 w-75 m-auto">
					<div class="row m-0">
						<div class="col-12">
							<span id="sub-content-title">My Bees</span>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-12">
							<hr class="my-1">
						</div>
					</div>
					<!-- 반복 -->
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="#">
								<div class="m-auto beesImage" style="width: 30px; height: 30px; background: url('/resources/image/test.jpg') no-repeat; background-size: cover;"></div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="#" class="myBees">여행에 미치다</a>
						</div>
					</div>
					<!-- 반복 -->
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="#">
								<div class="m-auto beesImage" style="width: 30px; height: 30px; background: url('/resources/image/test.jpg') no-repeat; background-size: cover;"></div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="#" class="myBees">여행에 미치다</a>
						</div>
					</div>
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="#">
								<div class="m-auto beesImage" style="width: 30px; height: 30px; background: url('/resources/image/test.jpg') no-repeat; background-size: cover;"></div>
							</a>
						</div>
						<div id="myBees-nameBox" class="col-12 col-md-9 py-2 px-0">
							<a href="#" class="myBees">여행에 미치다</a>
						</div>
					</div>
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="#">
								<div class="m-auto beesImage" style="width: 30px; height: 30px; background: url('/resources/image/test.jpg') no-repeat; background-size: cover;"></div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="#" class="myBees">여행에 미치다</a>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-12 py-2">
							<a class="makeBeesBtn btn w-100 py-2" href="#">+ 비즈 만들기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-7 p-0">
				<div id="main-content" class="container m-0 p-2">
					<div class="col-12">
						<span id="main-content-title">게시글 검색 결과</span>
					</div>
					<% for (int i=0; i<10; i++) {%>
					<div class="search-feed">
						<div class="search-feed-cont">
							<div class="search-feed-title">
								<span class="search-feed-bees-name"></span> <i class="fas fa-angle-left"></i> <span class="search-feed-writer">쿼카러버</span> <span class="search-feed-date">2021.01.27</span>
							</div>
							<div class="search-feed-main">
								<p class="search-feed-maintext"></p>
							</div>
							<div class="search-feed-footer">
								<span style="line-height: 20px; font-weight: 600; padding-left: 20px;"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="search-feed-like-btn bi bi-heart-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
                            </svg>
								</span> <span class="search-feed-like-count">3</span> &nbsp;&nbsp; 댓글 <span class="search-feed-comment-count">0</span>
							</div>
						</div>
						<div class="search-feed-image" class="col-4">
							<center>
								<img src="/resources/image/bees/feedImage/p3.jpg">
							</center>
						</div>
					</div>
					<%} %>
				</div>
				<div style="height: 45px;">
					<button id="feed-add-btn">+ 더보기</button>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<%@include file="/common/footer.jsp"%>
</body>
</html>