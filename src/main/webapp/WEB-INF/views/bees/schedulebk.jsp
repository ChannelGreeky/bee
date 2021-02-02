<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- fullcalendar -->
	<link href='/resources/fullcalendar/main.css' rel='stylesheet'/>
	<link href='/resources/fullcalendar/main.js'/>
    <script src='/resources/fullcalendar/main.js'></script>
    <script>

    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });
    </script>
<script src='/resources/fullcalendar/locales/ko.js'></script>
<script src='/resources/fullcalendar/main.js'></script>
<script src='/resources/fullcalendar/locales/es.js'></script>
<script src='/resources/fullcalendar/main.js'></script>
<script src='/resources/fullcalendar/locales-all.js'></script>
</head>
<body>
	<%@ include file="/common/cdnLib.jsp"%>
	<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesForm.css">
	<script type="text/javascript" src="/resources/js/beesForm.js"></script>
	
<!-- datepicker -->

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>

<!-- 외부 css + js-->
<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->


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
<!-- background-event.html 파일 default 설정 -->
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
    	headerToolbar: {
        left: 'prev',
        center: 'title',
        right: 'next todayday'
      },
      
      locale : "ko",
      <%-- 
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      selectable: true,--%>
      events: [
        {
          title: 'Business Lunch',
          start: '2021-02-12T13:00:00',
          constraint: 'businessHours'
        },
        {
          title: 'Meeting',
          start: '2020-09-13T11:00:00',
          constraint: 'availableForMeeting', // defined below
          color: '#257e4a'
        },
        {
          title: 'Conference',
          start: '2020-09-18',
          end: '2020-09-20'
        },
        {
          title: 'Party',
          start: '2020-09-29T20:00:00'
        },

        // areas where "Meeting" must be dropped
        {
          groupId: 'availableForMeeting',
          start: '2020-09-11T10:00:00',
          end: '2020-09-11T16:00:00',
          display: 'background'
        },
        {
          groupId: 'availableForMeeting',
          start: '2020-09-13T10:00:00',
          end: '2020-09-13T16:00:00',
          display: 'background'
        },

        // red areas where no events can be dropped
        {
          start: '2020-09-24',
          end: '2020-09-28',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2020-09-06',
          end: '2020-09-08',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        }
      ]
    });

    calendar.render();
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

#main {
	padding-top: 20px;
	padding-bottom : 200px;
}

#bees_main_massege {
	padding-top: 20px;
	font-size: 3rem;
}

<%-- 
#sub-pack-cont{
	border : 1px solid red;
}--%>

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

#footer{
background-color : #50401B;
}

#chatAdd>a{
	color : #F7D078;
}

.chatList>a {
	color :  #50401B;
	font-size : 0.8rem;
	
}



   #sub-cont-test{
   margin-top : 0.7%;
   }

#memberList-outLine{
height: 100%;
}

#calendar {
    max-width: 1100px;
    margin: 0 auto;
    background-color : white;
  }


<%-- fullclendar css --%>

.fc-daygrid-day-number{
color : black;
text-decoration : none;
font-size : 0.8rem;
}

.fc-col-header-cell-cushion {
color : #999999;
text-decoration : none;
}

.fc-toolbar-title{
color : #50401B;
font-size : 1.3rem !important;
font-weight: 400;
margin-right :50px;
}

.fc-todayday-button.fc-button.fc-button-primary{
display : none;

}

.fc-prev-button.fc-button.fc-button-primary{
border-radius : 50%;
background-color : #E4E4E4;
color : #50401B;
border : none;
padding : 2%;
margin-left : 80%;

}

.fc-next-button.fc-button.fc-button-primary{
border-radius : 50%;
background-color : #E4E4E4;
color : #50401B;
border : none;
padding : 1.8%;
margin-right : 20px;

}

.fc-header-toolbar.fc-toolbar.fc-toolbar-ltr{
margin-bottom : 2%;
margin-top : 2%;

}

<%-- 모달 --%>
.sche-modal-bg2 {
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

#sche-detail-modal2 {
	display: none;
	position: absolute;
	background-color: white;
	width: 500px;
	height: 460px;
	box-shadow: 1px 1px 2px rgb(230, 230, 230);
	border-radius: 25px;
	z-index: 50;
	margin: auto;
	top: 15%;
}

#sche-detail-modal-header2 {
	width: 100%;
	height: 50px;
	text-align: center;
	line-height: 50px;
}

#sche-detail-modal-close2 {
	height: 50px;
	float: right;
	margin-right: 15px;
	background-color: transparent;
	border: 0px solid white;
	line-height: 10px;
}

#sche-detail-modal-cont2 {
	width: 90%;
	height: 230px;
	margin: auto;
	text-align: left;
	color: #6d6042;
}

#sche-detail-modal-footer2 {
	width: 90%;
	height: 70px;
	text-align: center;
}

#sche-detail-writer-info2 a {
	font-size: 0.8rem;
	text-decoration: none;
	color: #6d6042;
}

#sche-detail-title2 {
	border-bottom : 1px solid lightgray;
	padding-bottom: 16px;
	padding-left: 16px;
	font-size: 1.2rem;
	font-weight: 200;
}

#sche-detail-date2 {
	padding-left: 16px;
	font-size: 0.8rem;
	font-weight: 500;
}

#sche-detail-writer-info2 {
	padding: 10px 0px 0px 10px;
}

#sche-detail-writer-profile2 {
	width: 30px;
	height: 30px;
	background-color: #ffd6e1;
	border-radius: 999px;
	float: left;
}

#sche-detail-writer-info2>span {
	margin-left: 5px;
	line-height: 30px;
	margin-right: 20px;
}

#sche-detail-note2 {
	margin-top: 20px;
	border-top: 1px solid lightgray;
	font-size: 1rem;
	padding: 20px;
}

#sche-detail-title-input2 {
margin-top : 5%;
border : 1px solid #E8E8E8;
background-color : #F9F9F9;
width : 100%;
padding : 1%;
}

#sche-detail-title-input2::placeholder{
color : #6D6042;
font-size : 0.9rem;
font-weight: 200;
}

#sche-detail-title-explanation2{
margin-top : 3%;
width : 100%;
border : 1px solid #E8E8E8;
background-color : #F9F9F9;
height : 50%;
}

#sche-detail-title-explanation2::placeholder{
color : #6D6042;
font-size : 0.9rem;
font-weight: 200;
}

#date-input2{
margin-top : 3%;
width : 100%;
text-align : center;
}

#sche-date-choice-title2 {

font-weight: 200;
font-size : 1.2rem;

}

#sche-date-choice2{

font-weight: 200;
font-size : 1.2rem;

}

#sche-date-choice2 > td{
border : 1px solid #E8E8E8;
}

#sche-date-choice2 > td > input {
color : #6D6042;
font-size : 0.8rem;
border : none;
width : 80%;
}

#shce-dateUpdate-submit2{
background-color : #50401B;
border-radius : 25px;
color : white;
border : none;
padding-left : 8%;
padding-bottom : 1%;
padding-top : 1%;
padding-right : 8%;
margin-top : 7%;
margin-left : 38%;
}

<%-- 일정 확인 모달 --%>
.sche-modal-bg {
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

#sche-detail-modal {
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

#sche-detail-modal-header {
	width: 100%;
	height: 50px;
	text-align: center;
	line-height: 50px;
}

#sche-detail-modal-close {
	height: 50px;
	float: right;
	margin-right: 15px;
	background-color: transparent;
	border: 0px solid white;
	line-height: 10px;
}

#sche-detail-modal-cont {
	width: 90%;
	height: 230px;
	margin: auto;
	text-align: left;
	color: #6d6042;
}

#sche-detail-modal-footer {
	width: 90%;
	height: 70px;
	text-align: center;
}

#sche-detail-writer-info a {
	font-size: 0.8rem;
	text-decoration: none;
	color: #6d6042;
}

#sche-detail-title {
	padding-left: 16px;
	font-size: 1.2rem;
	font-weight: 200;
}

#sche-detail-date {
	padding-left: 16px;
	font-size: 0.8rem;
	font-weight: 500;
}

#sche-detail-writer-info {
	padding: 10px 0px 0px 10px;
}

#sche-detail-writer-profile {
	width: 30px;
	height: 30px;
	background-color: #ffd6e1;
	border-radius: 999px;
	float: left;
}

#sche-detail-writer-info>span {
	margin-left: 5px;
	line-height: 30px;
	margin-right: 20px;
}

#sche-detail-note {
	margin-top: 20px;
	border-top: 1px solid lightgray;
	font-size: 1rem;
	padding: 20px;
}

.fc-daygrid-event.fc-daygrid-dot-event.fc-event.fc-event-start.fc-event-end.fc-event-future{
color : #50401B;
}

.fc-daygrid-event-dot{
border : 5px solid #F7D078;

}
</style>

	<div id="header">
		<div class="nav m-auto">
	        <ul>
	        	<!-- 서브헤더 공간 -->
	        	<a href="#"><li id="rad1">전체글</li></a>
	        	<a href="#"><li>사진첩</li></a>
	        	<a href="/beesSchedule.do"><li>일정</li></a>
	        	<a href="#"><li>첨부</li></a>
	        	<a href="/beesMember.do"><li>멤버</li></a>
	        </ul>
	    </div>
    </div>
	<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="bees-side" class="container m-0 p-2">
					<div id="bees-side-profile">
						<table>
            <tr>
                <td id="bees-cover" colspan="2" style="background:url('/resources/image/image.jpg')"></td>
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
				
				<div id='calendar' style='position : relative;'>
		
		</div>
				
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<!-- 일정 확인 modal -->
    <div class="sche-modal-bg"></div>
    <div id="sche-detail-modal">
        <div id="sche-detail-modal-header">
            <button id="sche-detail-modal-close">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x"
                    viewBox="0 0 16 16">
                    <path
                        d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
        <form>
        <div id="sche-detail-modal-cont">
            <div id="sche-detail-title">기획안 발표</div>
            <div id="sche-detail-date">2021.01.29 (월) - 2021.01.30 (금)</div>
            <div id="sche-detail-writer-info">
                <div id="sche-detail-writer-profile"></div>
                <span>홍길동</span><a href="">수정하기</a> <a href="">삭제하기</a>
            </div>
        <div id="sche-detail-note">
            4모임 개인 블로그 + SNS 사이트 웹 사이트   
            기획안 발표하는 날
        </div>
        </div>
        <div id="sche-detail-modal-footer">
            
        </div>
        </form>
    </div>
    <!-- 일정 삽입 modal -->
    <div class="sche-modal-bg2"></div>
    <div id="sche-detail-modal2">
        <div id="sche-detail-modal-header2">
            <button id="sche-detail-modal-close2">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#F7D078" class="bi bi-x"
                    viewBox="0 0 16 16">
                    <path
                        d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
        <form>
        <div id="sche-detail-modal-cont2">
            <div id="sche-detail-title2">일정 등록하기</div>
           
            <input type="text" placeholder="일정 제목" id="sche-detail-title-input2"/>
            <textarea placeholder="일정 설명" id="sche-detail-title-explanation2"></textarea>
          
         <table id="date-input2">
         	<tr id="sche-date-choice-title2">
         		<td id="sche-date-start2">시작</td>
         		<td id="sche-date-end2">종료</td>
         	</tr>
         	<tr id="sche-date-choice2">
         		<td><input type="text" placeholder="2021.01.11" id="sche-start-datepicker"/><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-plus" viewBox="0 0 16 16">
  <path d="M8 7a.5.5 0 0 1 .5.5V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5A.5.5 0 0 1 8 7z"/>
  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
</svg></td>
         		<td><input type="text" placeholder="2021.01.11" id="sche-end-datepicker"/><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-plus" viewBox="0 0 16 16">
  <path d="M8 7a.5.5 0 0 1 .5.5V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5A.5.5 0 0 1 8 7z"/>
  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
</svg></td>
         	</tr>
         </table>
            <button id="shce-dateUpdate-submit2">완료</button>
        
        </div>
       		
        <div id="sche-detail-modal-footer2">
            
        </div>
        </form>
    </div>
		<script>
			$(function(){
				
				$(function(){
					$('.fc-daygrid-day-events').click(function(){
						
						$('#sche-detail-modal').css(
								'top',
								Math.max(0, (($(window).height() - $(
										'#sche-detail-modal').outerHeight()) / 2)
										+ $(window).scrollTop() - 여기 솔미씨가 원하는 높이 쓰시면 됩니다.)
										+ 'px');
						$('#sche-detail-modal').css(
								'left',
								Math.max(0, (($(window).width() - $(
										'#sche-detail-modal').outerWidth()) / 2)
										+ $(window).scrollLeft())
										+ 'px');
						$('.sche-modal-bg').css('height',
								($(window).height() + $(window).scrollTop()) + 'px');
					    
					    $('.sche-modal-bg').css('display','block');
					    $('#sche-detail-modal').css('display', 'block');
					    
					    })
					    
					    $('#sche-detail-modal-close').click(function () {
					    
					    $('#sche-detail-modal').css('display', 'none');
					    $('.sche-modal-bg').css('display','none');
					    
					    
					    })
						
					});
			
				
				$(function(){


					$('.fc-daygrid-day-number').click(function () {

						
					    //비즈 페이지에서 주석제거. -  자동으로 배경 높이 산정하여 Modal background 까는 설정//
					    $('#sche-detail-modal2').css(
								'top',
								Math.max(0, (($(window).height() - $(
										'#sche-detail-modal2').outerHeight()) / 2)
										+ $(window).scrollTop() - 여기 솔미씨가 원하는 높이 쓰시면 됩니다.)
										+ 'px');
						$('#sche-detail-modal2').css(
								'left',
								Math.max(0, (($(window).width() - $(
										'#sche-detail-modal2').outerWidth()) / 2)
										+ $(window).scrollLeft())
										+ 'px');
						$('.sche-modal-bg2').css('height',
								($(window).height() + $(window).scrollTop()) + 'px');
					    
					    $('.sche-modal-bg2').css('display','block');
					    $('#sche-detail-modal2').css('display', 'block');
					    
					    })
					    
					    $('#sche-detail-modal-close2').click(function () {
					    
					    $('#sche-detail-modal2').css('display', 'none');
					    $('.sche-modal-bg2').css('display','none');
					    
					    
					    })


					})
					
					
					
					$(function(){

  					$("#sche-start-datepicker").datepicker({
  						dateFormat : "yy.mm.dd"
  					});
  					$("#sche-end-datepicker").datepicker({
  						
  						dateFormat : "yy.mm.dd"
  						
  					});
  					
					});

			})
			
	
	</script>
	<div id="footer">
	</div>
</body>
</html>