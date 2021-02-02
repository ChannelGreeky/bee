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
	


<script>

$(function(){

//인풋태그 자동완성 X
$('input').attr('autocomplete','off');

$('.chat-open-btn').click(function(){    
window.open("chatting-page.html", '비즈 채팅', 'width=400px, height=600px, resizable=no');
return false;

});

});
</script>

<style>

* {
		font-family: 'Noto Sans KR', sans-serif;	
	}
	
	body {
		background-color : #F9F9F9;
		
	}
	
	div {
		box-sizing: border-box;
	}
	
	#header {
		border-top: 5px solid #FFF3D8;
		background-color : white;
	}
	
	.nav {
        width: 500px;
        height: 30px;
        overflow: hidden;
    }
    
    .nav>ul{
        width: 100%;
        height: 100%;
        margin: 0px;
        padding: 0px;
    }
    
    .nav>ul li {
        float: left;
        list-style-type: none;
        width: 20%;
        height: 100%;
        text-align: center;
        color: #50401B;
    }
    
    #sub-content {
    	width : 95%;
    	padding-top: 20%;
    	background-color: white;
    }
    
    #sub-content-title {
    	color: #50401B;
    	font-size: 1.5rem;
    	font-weight:bold;
    }
    
* {
	box-sizing: border-box;
}


#nav {
	padding-left: 35%;
	padding-right: 35%;
	padding-top : 0.5%;
	padding-bottom : 0.5%;
	
}

#nav>div {
	
	text-align: center;
	font-size : 1rem;
}

#nav>div>a {
	color : black;
}


#bees_main_massege {
	padding-top: 20px;
	font-size: 3rem;
}



#sub-pack-cont>div>span{
	color : #50401B;
}

#sub-pack-cont>div>b{
	color : #50401B;
}

#cont-message{
	font-size : 0.7rem;
}

#line1{
margin-top : 13px;
margin-bottom : 5px;
border-top : 1px solid #E6E6E6;
}

#line2{
padding-left : 5%;
padding-right : 5%;
border-top : 2px solid #E6E6E6;
}



#profile{
width : 100%;
height : 100%;
border : 1px solid #E6E6E6;
}


#sub-pack-cont{
background-color : white;
padding : 8px;
padding-bottom : 8px;
margin : 1%;

}

#sub-pack-chat{
margin : 0px;
padding : 5%;
width : 100%;
heigth : 150%;
}

.chatImg{
width : 35px;
height : 30px;

}

#sub-pack-chat{
background-color : white;
}

.chatList{
	padding-left : 0px;
	padding-top : 20px;
}

#feed{
	
	margin-left : 1px;
	background-color : white;
	padding : 15px;
}

#profile-outline{
	height : 150px;
}


#beesName{
	color : #50401B;
	font-size : 1.5rem;
	
}

#beesName-outline{
	margin-top : 5px;
}

#btn{
background-color : white;
font-size : 1rem;
padding-top : 3px;
padding-bottom : 5px;
color : #F7D078;
}

#member{
margin-top : 4px;
margin-bottom : 5px;
padding-bottom : 13px;
};


#set{
font-size : 0.9rem;

}

#set >a {
color : #50401B;
}


#chatAdd>a{
	color : #F7D078;
}

.chatList>a {
	color :  #50401B;
	font-size : 0.8rem;
	
}

#feed-top{
	
	padding-bottom : 10px;
	color :  #50401B;
	font-size : 1.6rem;
	font-weight: 300;
}

#feed-top >b{
	color : #F7D078;
}

#search{
width : 90%;
border : none;
margin-top : 2px;
}

#search-outLine{
width : 100%;
height : 32px;
border : 1px solid #707070;
border-radius : 25px;

}

#searchBtn{
background-color : white;
border : none;

}

#searchBtn >svg{
margin-bottom : 5px;

}

#line3{

margin-top : 15px;
margin-bottom : 15px;
border-top : 1px solid #E6E6E6;
}

#search-select{
border : none;
text-align : right;
}

#search-select > select{
border : none;
font-size : 0.7rem;
color : #50401B;
}


.memberList{
	height : 15%;
	width : 100%;
	padding-bottom : 3%;

}

.memberList >a{
color : black;
}

.memberList >span{
color : #707070;
}

.memberListImg{
margin-right : 10px;
width : 45px;
height : 40px;

}

#memberInvite{
color : #50401B;
padding-left : 10px;
text-decoration: none;
}



#memberInviteBtn{
padding-top: 2%;
padding-bottom: 2%;
padding-left : 30px;
}

.chatHover{
	width : 105px;
	height : 30px;
	padding-left : 2%;
	visibility : hidden;
	cursor : pointer;
}

#myModalLabel{
font-size : 1.2rem;
color :#6D6042;
padding-left : 43%;
font-weight:normal;
}

.modal-body >span{
font-size : 1rem;
color :#6D6042;
font-weight:normal;
text-align : center;
}

#closeBtn{
color : #F7D078;
}

#urlCopy{
background-color : #50401B;
border-radius : 25px;
border : none;
margin-right: 41%;
}

   #sub-cont-test{
   margin-top : 0.7%;
   }

#memberList-outLine {
padding-top : 60%;
height: 100%;
overflow: auto;
width : 100%;
}


* {
  font-family: "Noto Sans KR", sans-serif;
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
  width : 98.5%;
  
  margin: 0;
}

#bees-side-profile {
  background-color: white;
  width: 75%;
  height: auto;
  margin: auto;
  padding-top: 10px;
  padding-bottom: 10px;
}

#bees-side-chatting {
  background-color: white;
  width: 75%;
  height: auto;
  margin: auto;
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

#bees-cover >img{
width : 100%;
height : 100%;
border : 1px solid #E6E6E6;
}
#bees-name {
  padding-left: 5px;
  font-size: 1.5rem;
  font-weight: 300;
  color : #50401B;
}

#bees-member-count {
  width: 30%;
  padding-left: 5px;
  font-size: 0.9rem;
  font-weight: 200;
  color : #50401B;
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
  color : #50401B;
}

#bees-setting {
  padding-left: 5px;
  padding-bottom: 15px;
  font-size: 0.8rem;
  font-weight: 200;
  
}

#bees-setting > a {
color : #50401B;
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
  width: 30px;
  height: 30px;
  border-radius: 999px;
  background: url("/resources/image/p6.png");
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

#bees-public{
padding-top: 10px;
}

#memberList-outline{
margin-top :15%;

}

#applicant{

margin-top : 3%;
border : 1px solid #707070;
width : 19%;
padding-bottom: 0.5%;
padding-right : 1%;

}

#applicant > a{
margin-left : 13%;
font-size : 0.8rem;
text-align : center;
color : #707070;
text-decoration : none;
}

#applicant > a >span{
color : red;
}

</style>

	<div id="header">
		<%@include file="/include/headerUser.jsp" %>
	</div>	
	<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="bees-side" class="container m-0 p-2">
					<div id="bees-side-profile">
						<table>
            <tr>
                <td id="bees-cover" colspan="2" style="background:url('/resources/image/bees/cover/bees_cover_2.jpg')"></td>
            </tr>
            <tr>
                <td id="bees-name" colspan="2">비즈이름</td>
            </tr>
            <tr id="bees-mid"><td id="bees-member-count">멤버<b> 6 </b></td>
                <td id="bees-invite">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 19">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
              </svg>초대</a>
            </td>
        </tr>
          <!--   <tr><td id="bees-note" colspan="2"><a href="">비즈 소개 설정 </a></td> --></tr>
            <tr><td id="bees-public" colspan="2">비즈와 게시글이 공개되지 않습니다. <br>초대를 통해서만 가입할 수 있습니다.</td></tr>
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
				<div class="row"  id="feed">
						<div class="col-md-12" id="feed-top">멤버 <b>6</b></div>
						<from action="#" method="post" id="search-outLine">
						<div class="col-md-12"  >
						<input type="text" id="search" placeholder="&nbsp;&nbsp;&nbsp;멤버검색"/><button type="submit" id="searchBtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-zoom-in" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
  <path d="M10.344 11.742c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1 6.538 6.538 0 0 1-1.398 1.4z"/>
  <path fill-rule="evenodd" d="M6.5 3a.5.5 0 0 1 .5.5V6h2.5a.5.5 0 0 1 0 1H7v2.5a.5.5 0 0 1-1 0V7H3.5a.5.5 0 0 1 0-1H6V3.5a.5.5 0 0 1 .5-.5z"/>
</svg></button>
						
						<div id="applicant"><a href="/beesApplicant.do">가입 신청자 <span>3</span> ></a> </div>
						<div class="col-md-12" id="line3"></div>
						<div class="col-md-12" id="search-select"><select>
							<option>이름순</option>
							<option>가입일순</option></select></div>
					
						</div>
							</from>
						
						<div class="row" id="memberList-outline">
							<div class="col-md-12 p-0, memberList" ><img src="/resources/image/p6.png" class="memberListImg"/>본인 <span>user1</span></div>  
							
						</div>
						
						<div class="col-md-12" id="line3"></div>
						<div class="col-md-12" id="memberInviteBtn"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg><a href="/inviteMember.do" id="memberInvite">멤버 초대하기</a></div>
					</div>
    
				
				</div>
			</div>	
		</div>		
	</div>	

	<div id="footer">
	<%@include file="/common/footer.jsp"%>
	</div>
</body>
</html>