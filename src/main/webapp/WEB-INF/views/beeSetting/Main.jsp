<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--제이쿼리 CDN-->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!--부트 스트랩-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<!--폰트어썸 CDN-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

<!-- 외부 css + js-->
<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->



<style>

    /*비즈 검색창*/
#bees-search-bar {
  background-color: white;
  width: 100%;
  margin-left: 30px;
  height: 37px;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
}

#bees-search-bar > input {
  width: 89%;
  height: 35px;
  border: 1px solid white;
  font-size: 1rem;
  padding-left: 20px;
}

input:focus::placeholder {
  color: transparent;
}

#bees-search-bar > button {
  width: 10%;
  height: 35px;
  background-color: white;
  border: 0px solid white;
  float: right;
  padding-right: 20px;
}

/*비즈 글 작성 박스*/
#bees-write-box {
  background-color: white;
  width: 100%;
  margin-left: 30px;
  height: 140px;
  margin-top: 10px;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
}

#bees-typing-box {
  padding-top: 20px;
  padding-left: 15px;
  font-weight: 200;
  height: 60%;
}

#bees-typing-box span {
  color: #6d6042;
}

.bees-function-box {
  display: inline-block;
  width: 30px;
  height: 60px;
}

.bees-function-icon {
  margin-left: 10px;
}

.bees-function-icon > svg {
  cursor: pointer;
}

.bees-function-tag {
  visibility: hidden;
  border-radius: 999px;
  margin: 0;
  width: 40px;
  height: 18px;
  font-size: 0.6rem;
  font-weight: 100;
  background-color: #f7d078;
  text-align: center;
}

.bees-feed {
  margin-left: 30px;
  background-color: white;
  width: 100%;
  height: auto;
  margin-top: 0px;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
}

.bees-feed table {
  width: 100%;
}

.feed-writer-info {
  width: 12%;
  padding-left: 10px;
}

.feed-writer-profile {
  margin: auto;
  width: 40px;
  height: 40px;
  background-color: #f7d078;
  background-image: url();
  background-size: cover;
  border-radius: 999px;
}

.feed-writer-name {
  text-align: left;
  width: 75%;
  font-weight: 400;
  font-size: 1rem;
  color: #6d6042;
}

.feed-setting {
  text-align: center;
  cursor: pointer;
}

.feed-timestamp {
  font-size: 0.6rem;
  color: #6d6042;
}

.feed-navi {
  font-size: 0.9rem;
  font-weight: 200;
  padding-left: 85%;
}

.feed-modify {
  width: 100%;
  height: 30px;
  line-height: 30px;
}
.feed-delete {
  width: 100%;
  height: 30px;
  line-height: 30px;
}

.feed-navi-block {
  display: inline-block;
  width: 70px;
  height: 62px;
  background-color: white;
  border: 1px solid lightgray;
  text-align: center;
  position: absolute;
}

.feed-cont {
  font-weight: 300;
  color: #6d6042;
  padding: 30px 45px 50px 45px;
}

.sche-box {
  width: 100%;
  height: 60px;
  border: 1px solid lightgray;
  background-color: rgb(247, 247, 247);
}

.sche-icon-box {
  width: 15%;
  height: 60px;
  float: left;
}

.sche-icon {
  margin: 10px auto auto auto;
  border-radius: 999px;
  height: 40px;
  width: 40px;
  border: 1px solid lightgray;
  background-image: url("/src/main/webapp/resources/bees-icon/sche-icon.jpg");
  background-size: contain;
  cursor: pointer;
}

.sche-cont-box {
  width: 85%;
  height: 60px;
  float: left;
}

.sche-title {
  font-size: 1rem;
  margin: 0;
  padding: 0;
  padding-top: 7px;
}

.sche-date {
  font-size: 0.7rem;
  margin: 0;
  padding: 0;
  padding-bottom: auto;
  color: green;
}

.file-box {
  width: 100%;
  height: 60px;
  border: 1px solid lightgray;
  background-color: rgb(247, 247, 247);
}

.file-icon-box {
  width: 15%;
  height: 60px;
  float: left;
}
.file-icon {
  margin: 10px auto auto auto;
  border-radius: 999px;
  height: 40px;
  width: 40px;
  border: 1px solid lightgray;
  background-image: url("/src/main/webapp/resources/bees-icon/file-icon.jpg");
  background-size: contain;
}

.file-cont-box {
  width: 85%;
  height: 60px;
  float: left;
}

.file-info {
  padding-top: 7px;
  font-size: 0.7rem;
  margin: 0;
  color: green;
}

.file-title {
  font-size: 1rem;
  margin: 0;
  padding: 0;
}

.vote-box {
  width: 100%;
  height: auto;
  border: 1px solid lightgray;
}
.vote-title-box {
  width: 100%;
  height: 55px;
  background-color: rgb(247, 247, 247);
}

.vote-icon-box {
  width: 15%;
  height: 55px;
  float: left;
}

.vote-icon {
  margin: 7px auto auto auto;
  border-radius: 999px;
  height: 40px;
  width: 40px;
  border: 1px solid lightgray;
  background-image: url("/src/main/webapp/resources/bees-icon/vote-icon.jpg");
  background-size: contain;
}

.vote-info-box {
  width: 85%;
  height: 55px;
  float: left;
}

.vote-state {
  padding-top: 4px;
  font-size: 0.7rem;
  margin: 0;
  color: green;
}

.vote-title {
  font-size: 1rem;
  margin: 0;
  padding: 0;
}

.vote-items-box {
  width: 100%;
  height: auto;
  padding: 20px 30px 20px 30px;
}

.item-section {
  width: 100%;
  height: 50px;
}
.item-select {
  width: 10%;
  height: 50px;
  float: left;
  padding-left: 5px;
}

.item-info {
  width: 90%;
  height: 50px;
  float: left;
}

.item-name {
  width: 85%;
  height: 30px;
  display: inline-block;
  font-size: 0.9rem;
}

.item-vote-num {
  width: 14%;
  height: 30px;
  display: inline-block;
  text-align: right;
  padding-right: 5px;
}

.vote-num {
  font-size: 0.7rem;
}

.item-vote-bar {
  width: 100%;
  height: 20px;
}

.color-bar {
  width: 0%;
  height: 10px;
  background-color: #f7d078;
  position: relative;
  z-index: 1;
}

.default-bar {
  width: 100%;
  height: 10px;
  background-color: lightgray;
  position: relative;
  top: -26px;
}

.vote-footer {
  width: 90%;
  margin: auto;
  padding-bottom: 20px;
}
.vote-submit {
  border-radius: 5px;
  padding: 5px 15px 5px 15px;
  font-size: 0.8rem;
  border: 1px solid #f7d078;
  background-color: #f7d078;
  font-weight: 100;
}
.vote-reset {
  border-radius: 5px;
  padding: 5px 15px 5px 15px;
  font-size: 0.8rem;
  border: 1px solid #f7d078;
  background-color: white;
  font-weight: 100;
}
.comment-box-btn {
  text-align: center;
}

.comment-table {
  display: none;
  margin-bottom: 20px;
}

.comment-close {
  display: none;
}
.comment-open {
  display: block;
}

.comment-writer {
  padding-left: 50px;
  vertical-align: top;
  padding-right: 10px;
}

.comment-writer-profile {
  border-radius: 999px;
  height: 35px;
  width: 35px;
  background-image: url("/src/main/webapp/resources/bees-profile/p1.jpg");
  background-size: cover;
}

.comment-writer-name {
  text-align: left;
  vertical-align: top;
  color: #6d6042;
  font-weight: 300;
  font-size: 0.8rem;
  width: 100%;
}

.comment-cont {
  text-align: left;
  color: #6d6042;
  font-weight: 300;
  font-size: 0.8rem;
  padding-right: 50px;
}

.comment-date {
  text-align: left;
  color: #6d6042;
  font-weight: 300;
  font-size: 0.6rem;
  padding-bottom: 10px;
}

.recomment-btn {
  padding-left: 10px;
  cursor: pointer;
}

.recomment-write-box {
  display: none;
}

.recomment-write-box > td {
  padding: 10px 20px 20px 0px;
}

.recomment-input-text {
  border-radius: 999px;
  width: 60%;
  border: 1px solid #6d6042;
  height: 25px;
  font-size: 0.8rem;
  padding: 0 20px 0 20px;
}
.recomment-submit-btn {
  border-radius: 999px;
  width: 12%;
  border: 0px solid white;
  background-color: #6d6042;
  font-size: 0.8rem;
  color: white;
  font-weight: 300;
  height: 25px;
}
.recomment-reset-btn {
  border-radius: 999px;
  width: 12%;
  border: 1px solid #6d6042;
  background-color: white;
  font-size: 0.8rem;
  color: #6d6042;
  font-weight: 300;
  height: 25px;
}

.comment-table * {
  margin: 0;
}
.comment-textarea {
  display: none;
}
.comment-textarea > td {
  padding: 5px 50px 0px 0px;
  text-align: left;
  color: #6d6042;
  font-weight: 300;
  font-size: 0.8rem;
}
.comment-cont-modify {
  padding-left: 10px;
  border-radius: 15px;
  border: 1px solid lightgray;
  width: 100%;
  resize: none;
  font-weight: 300;
  font-size: 0.8rem;
}

.comment-textarea-btn {
  display: none;
}

.comment-textarea-btn > td {
  font-weight: 300;
  font-size: 0.8rem;
}

.comment-modify-reset-btn {
  font-weight: 200;
  border: 0px solid white;
  background-color: white;
}

.comment-modify-submit-btn {
  color: #f7d078;
  font-weight: 400;
  border: 0px solid white;
  background-color: white;
}

.comment-input-box {
  padding: 0 20px 0 20px;
  border-radius: 999px;
  width: 84%;
  height: 35px;
  border: 0.5px solid lightgray;
  color: #6d6042;
  font-weight: 200;
  font-size: 0.9rem;
}

.comment-submit-btn {
  width: 15%;
  height: 35px;
  border-radius: 999px;
  background-color: #6d6042;
  border: 0px solid white;
  color: white;
  font-weight: 300;
  font-size: 0.9rem;
}

.write-function-box {
  display: inline-block;
  width: 30px;
  height: 60px;
}

.write-function-icon {
  margin-left: 10px;
}

.write-function-icon * {
  cursor: pointer;
}

.write-function-tag {
  visibility: hidden;
  border-radius: 999px;
  margin: 0;
  width: 40px;
  height: 18px;
  font-size: 0.6rem;
  font-weight: 100;
  background-color: #f7d078;
  text-align: center;
  cursor: pointer;
}

* {
  font-family: "Noto Sans KR", sans-serif;
}

body {
  background-color: rgb(240, 240, 240);
}

input:focus {
  outline: none;
}
button:focus {
  outline: none;
}
textarea:focus {
  outline: none;
}

#bees-contents {
  width: 86%;
}

#bees-side-profile {
  background-color: white;
  width: 75%;
  height: auto;
  margin-left: auto;
  padding-top: 10px;
  padding-bottom: 10px;
}

#bees-side-chatting {
  background-color: white;
  width: 75%;
  height: auto;
  margin-left: auto;
  margin-top: 10px;
  padding-top: 10px;
  padding-bottom: 10px;
}

#bees-side-profile > table {
  margin: auto;
  width: 95%;
  height: 100%;
}

#bees-side a {
  text-decoration: none;
  color: #f7d078;
}

#bees-cover {
  height: 130px;
  border: 0.5px solid light-gray;
  background-image: url("/src/main/webapp/resources/bees_cover/bees_cover_1.png");
  background-size: cover;
}

#bees-name {
  padding-left: 5px;
  font-size: 1.5rem;
  font-weight: 300;
}

#bees-member-count {
  width: 30%;
  padding-left: 5px;
  font-size: 0.9rem;
  font-weight: 200;
}

#bees-invite {
  font-size: 0.8rem;
  font-weight: 200;
}

#bees-note {
  padding-left: 5px;
  font-size: 0.8rem;
  font-weight: 100;
}

#bees-public {
  padding: 0 5px 5px 5px;
  font-size: 0.7rem;
  font-weight: 100;
}

#bees-setting {
  padding-left: 5px;
  padding-bottom: 15px;
  font-size: 0.8rem;
  font-weight: 200;
}

#join-btn {
  width: 95%;
  height: 40px;
  background-color: #f7d078;
  border: 0px solid white;
  color: white;
}
#join-box {
  font-size: 0.8rem;
  font-weight: 200;
  padding-left: 5px;
}

.innerline {
  padding-left: 5px;
  padding-right: 5px;
}

#bees-side-chatting > table {
  margin: auto;
  width: 95%;
  height: 100%;
}

#chatting-header {
  width: 70%;
  padding-left: 5px;
  font-size: 0.9rem;
  font-weight: 300;
}

#new-chat {
  padding-right: 5px;
  text-align: right;
  font-size: 0.8rem;
  font-weight: 300;
}

.chat-list {
  padding: 10px 5px 0 5px;
  line-height: 10px;
}

.chat-profile {
  display: inline-block;
  width: 25px;
  height: 25px;
  border-radius: 999px;
  background: url("/src/main/webapp/resources/bees-profile/p3.jpg");
  background-size: cover;
}

.chat-title {
  padding-left: 10px;
  height: 100%;
  display: inline-block;
  font-size: 0.8rem;
  font-weight: 300;
  vertical-align: middle;
  cursor: pointer;
}

.chat-open-btn {
  padding-left: 10px;
  height: 100%;
  display: inline-block;
  font-size: 0.8rem;
  font-weight: 300;
  vertical-align: middle;
}



#write-modal {
  display: none;
  position: absolute;
  background-color: white;
  margin: auto;
  width: 500px;
  height: 410px;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
  border-radius: 25px;
  z-index: 30;
  top: 15%;
}

#write-modal-bg {
  display: none;
  position: absolute;
  width: 100%;
  height: 100%;
  scroll-behavior: auto;
  background-color: rgba(0, 0, 0, 0.2);
  top: 0;
  left: 0;
  z-index: 2;
}

#write-modal-header {
  width: 100%;
  height: 50px;
  text-align: center;
  line-height: 50px;
}

#write-modal-close {
  height: 50px;
  float: right;
  margin-right: 15px;
  background-color: transparent;
  border: 0px solid white;
  line-height: 10px;
}

#write-modal-cont {
  width: 90%;
  height: 300px;
  margin: auto;
  border-top: 1px solid lightgray;
  border-bottom: 1px solid lightgray;
}

#write-modal-cont > div {
  width: 100%;
  height: 100%;
  border: 0px solid white;
  padding: 20px 0 20px 0;
  font-size: 1rem;
  font-weight: 200;
  outline: none;
  overflow: scroll;
}

#write-modal-cont > div > img {
  max-height: 100%;
}

#write-modal-cont > div > div {
  max-width: 100%;
  position: relative;
}

#write-modal-footer {
  width: 90%;
  height: 60px;
  margin: auto;
}

#write-modal-submit {
  margin-top: 15px;
  padding: 5px 30px 5px 30px;
  border-radius: 999px;
  float: right;
  border: 0px solid white;
  background-color: #6d6042;
  color: white;
  font-size: 0.8rem;
  font-weight: 300;
}

#dual-modal-bg {
  display: none;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.2);
  top: 0;
  left: 0;
  z-index: 40;
  position: absolute;
}

#vote-modal {
  display: none;
  position: absolute;
  background-color: white;
  width: 400px;
  height: auto;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
  border-radius: 25px;
  margin: auto;
  top: 15%;
  z-index: 50;
}

#vote-modal-header {
  width: 100%;
  height: 50px;
  text-align: center;
  line-height: 50px;
}

#vote-modal-close {
  height: 50px;
  float: right;
  margin-right: 15px;
  background-color: transparent;
  border: 0px solid white;
  line-height: 10px;
}
#vote-modal-cont {
  width: 90%;
  height: auto;
  margin: auto;
  border-top: 1px solid lightgray;
  border-bottom: 1px solid lightgray;
}
#vote-modal-footer {
  width: 90%;
  height: 60px;
  text-align: center;
}
#vote-modal-submit {
  padding: 5px 30px 5px 30px;
  margin-top: 10px;
  border-radius: 999px;
  border: 0px solid white;
  background-color: #6d6042;
  color: white;
  font-size: 0.9rem;
  font-weight: 300;
  margin-left: 20px;
}
.vote-modal-title {
  color: #6d6042;
  font-size: 1rem;
  font-weight: 300;
  width: 90%;
  margin-top: 30px;
  padding: 10px 0px 10px 0px;
  border: 0px solid white;
  border-bottom: 1px solid lightgray;
}

.vote-modal-items {
  color: #6d6042;
  font-size: 0.9rem;
  font-weight: 300;
  width: 85%;
  padding: 15px 0px 2px 10px;
  border: 0px solid white;
  border-bottom: 1px solid lightgray;
  margin-top: 5px;
}

.item-del-btn {
  font-size: 0.9rem;
  font-weight: 300;
  width: 5%;
  padding: 0px 0px 2px 0px;
  border: 0px solid white;
  border-bottom: 1px solid lightgray;
  margin-top: 5px;
  text-align: center;
  background-color: white;
  color: gray;
}

.hidden-item-del-btn {
  font-size: 0.9rem;
  font-weight: 300;
  width: 5%;
  padding: 0px 0px 2px 0px;
  border: 0px solid white;
  border-bottom: 1px solid lightgray;
  margin-top: 5px;
  text-align: center;
  background-color: white;
  color: gray;
}

.anonymous-btn {
  cursor: pointer;
}

#sche-modal {
  display: none;
  position: absolute;
  background-color: white;
  width: 500px;
  height: 350px;
  box-shadow: 1px 1px 2px rgb(230, 230, 230);
  border-radius: 25px;
  z-index: 50;
  margin: auto;
  top: 15%;
}

#sche-modal-header {
  width: 100%;
  height: 50px;
  text-align: center;
  line-height: 50px;
}

#sche-modal-close {
  height: 50px;
  float: right;
  margin-right: 15px;
  background-color: transparent;
  border: 0px solid white;
  line-height: 10px;
}
#sche-modal-cont {
  width: 90%;
  height: 230px;
  border-top: 1px solid lightgray;
  margin: auto;
}

#sche-modal-cont table {
  width: 90%;
  height: 95%;
  margin: auto;
  margin-top: 10px;
}
#sche-modal-footer {
  width: 90%;
  height: 70px;
  text-align: center;
}
#sche-modal-submit {
  padding: 5px 40px 5px 40px;
  margin-top: 20px;
  border-radius: 999px;
  border: 0px solid white;
  background-color: #6d6042;
  color: white;
  font-size: 0.9rem;
  font-weight: 300;
  margin-left: 20px;
}
#sche-modal-title {
  font-size: 0.9rem;
  font-weight: 400;
  width: 100%;
  margin-top: 15px;
  height: 35px;
  padding: 0px 0px 0px 10px;
  border: 0.5px solid lightgray;
  background-color: rgb(245, 245, 245);
}

#sche-modal-note {
  font-size: 0.9rem;
  font-weight: 400;
  width: 100%;
  resize: none;
  text-overflow: auto;
  padding: 0px 0px 0px 10px;
  background-color: rgb(245, 245, 245);
  border: 0.5px solid lightgray;
}

#sche-modal-cont input[type="date"] {
  font-size: 0.9rem;
  width: 100%;
  height: 35px;
  font-weight: 300;
  background-color: rgb(245, 245, 245);
  border: 0.5px solid lightgray;
  padding-left: 10px;
}



</style>


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
            <tr><td id="bees-member-count">멤버<b> 6 </b></td>
                <td id="bees-invite">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 19">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
              </svg>초대</a>
            </td>
        </tr>
            <tr><td id="bees-note" colspan="2"><a href="">비즈 소개 설정 </a></td></tr>
            <tr><td id="bees-public" colspan="2">비즈와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</td></tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td id="bees-setting" colspan="2">
                <a href="">
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>&nbsp;비즈설정</a></td></tr>
            <tr><td id="join-box" colspan="2">
                <button id="join-btn">비즈 가입하기</button>
            </td>
        </tr>
        </table>
    </div>
    <div id="bees-side-chatting">
        <table>
            <tr><td id="chatting-header">채팅</td>
                <td id="new-chat"><a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()">새 채팅</a></td></tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td class="chat-list" colspan="2">
                <div class="chat-profile"></div>
                <a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color:dimgray" >사용자 이름</a></td></tr>
                <tr><td colspan="2" style="padding: 10px 5px 0 5px; line-height: 10px;">
                    <div class="chat-profile"></div>
                <a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color:dimgray">'비즈' 전체 채팅</a></td></tr>
        </table>
    </div>
</div>
</div>
<div class="col-7 p-0">
<div id="bees-contents" class="container m-0 p-2">
<div class="bees-feed">

<jsp:include page="beeSettingMain.jsp"/>

</div>
</div>
</div>
<div class="col-1"></div>
</div>
</div>
</body>
</html>