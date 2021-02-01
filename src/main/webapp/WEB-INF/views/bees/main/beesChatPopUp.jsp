<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/cdnLib.jsp"%>
	<link rel="stylesheet" type="text/css" href="/resources/css/beesChat.css">
	<script type="text/javascript" src="/resources/js/beesChat.js"></script>
	<div id="my-chat-wrapper" style="width: 400px; height: 550px">
		<div id="my-chat-window">
			<div id="my-chat-header">
				<span>비즈이름</span><span>(6)</span>
			</div>
			<div id="my-chat-cont">
				<p id="my-chat-info">2021년 1월 12일 화요일</p>
				<p class="other-chat">
					<span class="chat-message">다른 사람이 보낸 채팅</span> <span class="chat-time">오전 1:42:56</span>
				</p>
			</div>
			<hr>
			<input id="input-message" placeholder="보낼 메시지를 입력하세요.">
		</div>
	</div>
</body>
</html>