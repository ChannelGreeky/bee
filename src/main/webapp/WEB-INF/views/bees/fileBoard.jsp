<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/include/header_bee.jsp"  %>
       <%@ include file="/common/cdnLib.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* { 
	color: #50401B; 
	text-decoration: none; 
	list-style: none; 
	box-sizing: border-box; 
	} 
	.head{
	font-size:1.3rem;
	height:15%;
	line-height:54px;
	padding-left:15px;
	}

	.main_head{ 
	width:80%;
	position: absolute;
	font-size: 0; 
	z-index: 2; 
	cursor: pointer; 
	height:15%;
	margin-left:15px;
	margin-right:15px;
	} 
	*.file_on{ 

	display: inline-block; 
	width: 50%;
	height: 30px; 
	line-height: 30px; 
	text-align: center; 
	font-size: 1rem; 
	background: white; 
	border: 1px solid gray; 
	border-bottom: none; 
	background: white; 
	z-index: 3; 
	 border-radius: 20px 20px 0px 0px;
	} 
	.main_bodys{ 
	position: absolute; 
	margin-top:91px;
	margin-left:15px;
	margin-right:15px;
	height: 70%; 
	width:80%;
	border-bottom: 1px solid; 

	z-index: 1; 
	}
	*.file_off{ 
	display: inline-block; 
	width: 50%; height: 30px; 
	line-height: 30px; 
	text-align: center; 
	font-size: 1rem; 
	background: #F7D078; 
	border: 1px solid gray;
	 z-index: 3; 
	 border-radius: 20px 20px 0px 0px;
	 
	 } 
	*.vote_off{ 
	display: inline-block; 
	width: 50%;
	height: 30px; 
	line-height: 30px; 
	text-align: center; 
	font-size: 1rem; 
	background: #F7D078; 
	border-top: 1px solid gray; 
	border-right: 1px solid gray; 
	border-bottom: 1px solid gray; 
	 border-radius: 20px 20px 0px 0px;
	} 
	*.vote_on{ 
	display: inline-block; 
	width: 50%; 
	height: 30px; 
	line-height: 30px; 
	text-align: center; 
	font-size: 1rem; 
	background: white; 
	border-top: 1px solid gray; 
	border-right: 1px solid gray; 
	border-bottom: none;
	 border-radius: 20px 20px 0px 0px;
	 } 
	 
	*.file_cont{ 
	display: block; 
	position: fixed; 
	padding: 10px; 
	width: 355px; 

	} 
	*.file_cont>li{ 
	line-height: 27px; 
	font-size: 0.9rem; 
	} 
	*.file_cont>li>a{ 
	float: left; 
	color:#50401B;
	} 
	*.vote_cont{ 
	display: none; /*활성시 flex*/ 
	justify-content: space-between;
	 padding: 10px; 
	 width: 355px; 
	 height: 125px; 
	 font-size: 0;
	  } 
	*.vote_cont>li{ 
	display: inline-block; 
	overflow: hidden;
	 width: 100px; 
	 height: 100px; 
	 }


	.cont_searchBox{
position:absolute;

width:87%;
height:35px;
padding: 0 13px 0 13px;
bottom:15px;
margin-left:40px;
margin-right:30px;
border:1px solid gray;
border-radius:30px;

}
.cont_searchBox form{
height:100%;
}
#search{
border:none;
width:95%;
height:100%;

padding:3px;
padding-left:20px;
}
#search:focus{
outline:none;
}
#search_btn{
width:5%;
height:20px;
border:none;
background-color:white;
}
.cont{
width:100%;
height:100%;
border-right:1px solid black;
border-left:1px solid black;
}


</style>


</head>
<body>



<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!--부트 스트랩-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>



<!-- 외부 css + js-->
<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->


<link rel="stylesheet" type="text/css" href="resources/css/beesForm.css">
<script type="text/javascript" src="resources/js/beesForm.js"></script>


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

<div id="main_content" style="background-color: white; width:100%; min-height:600px;">



<!-- 내 코드 -->

		<div class="head">첨부 모아보기</div>
		<div class="main_head"> 
				<div class="file_on">파일</div> 
				<div class="vote_off">투표</div> 
				
				<div class="cont_searchBox">
				<form action>
               
                    
                      <input type="text" id="search" autocomplete="off">
                      <button type="submit" id="search_btn">
                      <img src="/resources/image/search.png" style="width:20px; height:20px"/>
                      </button>
                   
             
            </form>
             </div>
		</div> <!-- main_head -->
		<div class="main_bodys">
			
             <div class="cont">
					<ul class="file_cont">
						<li><a href="#">파일내용</a></li>
					</ul>
					<ul class="vote_cont">
					    <li><a href="#">투표내용</a></li>			
					</ul>
			 </div>
		</div>   <!-- main_body -->
	
	  </div>	 <!-- main_content -->
	</div>   <!-- bees-contents -->
       




</div> <!-- col-7 -->

<div class="col-1"></div>
</div>   <!-- row -->
</div> <!-- container pt-3 -->



 <script>
     //투표 버튼 클릭
     $('.vote_off').click(function(){
    	 $('.file_cont').hide(); //파일 내용숨기기
     
     $('.vote_cont').css({'display' : 'flex',});   //투표내용 나타내기
     
     
     $(this).attr('class','vote_on');  //투표 버튼 css변경
      
     $('.file_on').attr('class','file_off');  //파일버튼 css변경
   
     }); 
     
     
     //파일 버튼 클릭
     $('.file_on').click(function(){    //파일클릭시
    	 $('.file_cont').show();          //파일내용 보여줘
     
     $('.vote_cont').hide();       //투표내용 숨겨
     
     $(this).attr('class','file_on');     //파일버튼 css변경
      
     $('.vote_on').attr('class','vote_off');   //투표 버튼 변경
    	
     });
       
       
       
       
       </script>

</body>
</html>