<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
   #head_color{
   background-color:#F7D078;
  
   }
    #head_color>.inner{
	position: relative;
            max-width: 1034px;
            min-width:580px;
            height: 50px;
            margin:0 auto;
            background-color:#F7D078;
}
* {
	 
    font-family: 'Noto Sans KR', sans-serif;	
	box-sizing: border-box;
	margin:0;
	padding:0;
	list-style: none; 
	color: #50401B; 
	text-decoration: none; 
}

.beeLogo{
 width: 70px;
 height: 33px;
 overflow: hidden;
 margin-top:10px;
	display : inline-block;
	background-repeat: no-repeat;
	background-position: -246px -285px;
}

.inner>form{
display:inline-block;
}    

.inner img{
width:70px;
height:100%;
object-fit:cover;

}
   
.searchBox{
position:absolute;
left:84px;
top:11px;
width:280px;
height:30px;
padding: 0 13px 0 13px;
border : solid 1px black;
border-radius:30px;
background-color:#FBE6B5;
}
#input_searchBox{

background-image:url('../../../resources/image/search.png');
background-color:#FBE6B5;
background-position:230px 6px;
background-repeat:no-repeat;
background-size:20px 20px;
border:none;
width:100%;
height:100%;
margin:0;
padding:3px 25px 3px 3px;
}
#input_searchBox:focus{
outline:none;
}
ul{

margin:0;
padding:0;
}
li{
list-style-type:none;
}
a{
color:black;
text-decoration:none;
}
.top_right-menu{
right:30px;
position:absolute;
top:14px;
text-align:center;
line-height:1;
width:200px;
display:flex;
}
#header .top_right-menu>li{
position:relative;
line-height:20px;
float:left;
flex:1;
}

.top_right_btn{
width: 28px;
height:28px;
overflow:hidden;
display:inline-block;
padding:0;
background-color:#F7D078;
border:none;
}
.top_right_img:before{
font-size:26px;
margin:0;
padding:0;
color:white;

}

.top_right_btn:focus{
outline:none;
}
.menu-sub{
background-color:#F7D078;
white-space:nowrap;     
position:absolute;
right:0;
top:20px;
transform:translate(10%, 2.2em);
opacity:0;
pointer-events:none;
transition: all .6s;
box-shadow:0.2em 0.2em 10px #111;
}
.menu-sub:before{
content:' ';
position:absolute;
right:0;
top:-20px;
left:0;
height:20px;


}
.menu-sub a{
color:#50401B;
}
.menu-sub:after{
content:' ';
position:absolute;
top:-20px;
left:50%;
transform:translateX(-50%);
height:0;
width:0;
border-width:10px;
border-style:solid;
border-color:transparent transparent #F7D078 transparent;

}
.menu-item{
position:relative;
}
.menu-item a{
padding:0.7em;
display:block;
}
.menu-item:hover .menu-sub{
opacity: 1;
pointer-events:auto;
}
#navi{
position: relative;

width:100%;
max-width:1034px;
height:40px;
text-align:center;
margin:0 auto;
}
.navi_menu{
display:flex;
text-align:center;
height:100%;
align-items:center;
position:relative;
width:50%;
margin:0 auto;
}
.navi_menu_item{
margin-right:45px;

text-align:center;
flex:0 0 auto;
}
.navi_menu_item>a{
text-decoration: none;
line-height:34px;
display:block;
width:100%;
height:100%;
color:black;
} 
.navi_menu_item>a:hover{
text-decoration: none;
color:black;
font-weight: bold;
}
.navi_menu_item>a:active {
text-decoration: underline;
}




#main-content{
min-height:600px;
margin:0px;
padding:0px;
border:1px solid black;
}

.content_body div{
border:1px solid black;
height:70%;
}









.head{
font-size:1.5rem;
height:10%;
line-height:54px;
}
#main_content { 
width:540px;
height:540px;
border:1px solid black;
padding: 20px 20px 20px 20px;
margin:0;
min-width:540px;
} 
.main_head{ 
position: absolute;
font-size: 0; 
z-index: 2; 
cursor: pointer; 
height:10%;
margin:0 auto;
} 
*.file_on{ 

display: inline-block; 
width: 250px;
height: 30px; 
line-height: 30px; 
text-align: center; 
font-size: 1rem; 
background: white; 
border: 1px solid gray; 
border-bottom: none; 
background: white; 
z-index: 3; 
} 
.main_body{ 
position: absolute; 
margin-top: 29px; 
height: 50%; 
width:500px;
border: 1px solid; 
z-index: 1; 
}
*.file_off{ 
display: inline-block; 
width: 250px; height: 30px; 
line-height: 30px; 
text-align: center; 
font-size: 1rem; 
background: #F7D078; 
border: 1px solid gray;
 z-index: 3; 
 } 
*.vote_off{ 
display: inline-block; 
width: 250px; 
height: 30px; 
line-height: 30px; 
text-align: center; 
font-size: 1rem; 
background: #F7D078; 
border-top: 1px solid gray; 
border-right: 1px solid gray; 
border-bottom: 1px solid gray; 
} 
*.vote_on{ 
display: inline-block; 
width: 250px; 
height: 30px; 
line-height: 30px; 
text-align: center; 
font-size: 1rem; 
background: white; 
border-top: 1px solid gray; 
border-right: 1px solid gray; 
border-bottom: none;
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


#input_search{

background-image:url('../../../resources/image/search.png');
background-position:400px 6px;
background-repeat:no-repeat;
background-size:17px 17px;
border:1px solid black;
width:90%;
height:8%;
margin: 20px 25px 20px 25px;
padding:3px 25px 3px 15px;
border-radius:30px;
}
#input_searchBox:focus{
outline:none;
}


div{
border:1px solid black;}

#sub-content div{
margin:0;
padding:0;

}
.bees_profil{
width:90%;
height:50%;
margin:0 auto;
}
.bees_profil img{


max-width:100%;
height:auto;
}





    </style>
</head>
<body>
<!-- 반응형 웹에 필요한 소스 -->
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
		
	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
		
	<!-- 폰트어썸 CDN -->	
	<!-- reference your copy Font Awesome here (from our CDN or by hosting yourself) -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

	<!-- 글씨체 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

	
   <div id="header" >
   	<header id="head_color">  
       <div class="inner">
           <span>
            <a href="#" class="beeLogo">
	       		<img src="resources/image/beeWhiteLogo.png" alt="로고이미지" />	
 	  		</a>
            </span>
            <form action>
               <fieldset>
                    <div class="searchBox">
                      <!--   <input type="text" id="input_searchBox" class="" placeholder="&#xf002;" autocomplete="off"> -->
                     
                      <input type="text" id="input_searchBox" autocomplete="off">
                      <!--   <span><i class="fas fa-search"></i></span> -->
                   <!--   <input type="submit" class="img-button" value="&#xf002;"> --> 
                    </div>
               </fieldset>
            </form>
            
            
            <ul class="top_right-menu">
	  			<li class="menu-item">
	  				 <button type="button" class="top_right_btn">  
	  					<i class="far fa-comment-dots top_right_img"></i>
                    </button>
                    
                 <!--    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" 
                    data-content="Vivamus
					sagittis lacus vel augue laoreet rutrum faucibus.">
					<i class="far fa-comment-dots top_right_img"></i>
   						 Popover on bottom
 					 </button>-->
            	</li>
            	
            	
            	
           		 <li class="menu-item">
            		<button type="button" class="top_right_btn" id="set_btn">
            			<i class="fas fa-user-circle top_right_img"></i>
            		</button>	
            		 
	                    <ul class="menu-sub">
	                        <li>
	                        	<a href="#">내 정보</a>
	                        </li>
			   				<li>
	                            <a href="#">내가 쓴 글</a>
	                        </li>
			  				<li>
	                            <a href="#">좋아요 목록</a>
	                        </li>
	 		  				<li>
	                            <a href="#">내 정보</a>
	                        </li>
	                        <li>
	                            <a href="#">비즈가입 초대 확인</a>
	                        </li>
							<li>
	                            <a href="#">문의사항</a>
	                        </li>
							<li>
	                            <a href="#">공지사항</a>
	                        </li>
	                        <li>
	                        	<a href="#">로그아웃</a>
	                        </li>
	                     </ul>
                      
            	</li>
            	
            	
     
            	
            	
            	
            	
            	
            	
      <!--      	
            	<li class="setting">
            		<button type="button" class="top_right_btn" >
            			<i class="fas fa-user-circle top_right_img"></i>
            		</button>
            	</li>
       -->       
       <!--   
            <ul class="top_right-menu">
	  			<li class="chat">
	      			<button type="button" class="chat_btn">  
                    </button>
                    <article >
						<header>
                           <h1>채팅</h1>
                        </header>
                        <div>
		     				<ul>
								<li> <a href="#">채팅목록</a></li>
		     				</ul>
						</div>
                    </article>
	   			</li>

 
              -->
             </ul>  
          </div>  <!-- inner -->
      </header>
 

       <div id="navi" style="display: block;">		
	<ul class="navi_menu">
	    <li class="navi_menu_item">
     	       <a href="#" >전체글</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >사진첩</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >일정</a>
	    </li>	
        <li class="navi_menu_item">
     	       <a href="#" >첨부</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#" >멤버</a>
	    </li>	
	</ul>
         </div>  <!-- navi -->






</div> <!-- header -->
<div class="container pt-3">
		<div class="row">
			<div class="col-md-1 d-md-block d-none">
			</div>
			<div class="col-3 p-0">
				<div id="sub-content" class="container m-0 p-2">
					<!-- 좌측 서브 Content 공간 -->
					
					<div class="row m-0">
						<div class="bees_profil col-12">
							<img src="/resources/image/building.jpg"></a>
						</div>
					
						<div class="col-12">
							<span>비즈이름</span>
						</div>
					
						<div class="col-12">
							멤버<span>6</span><span>초대</span>
						</div>
	
						<div class="col-12">
							<span>비즈와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</span>
						</div>
					
						<div class="col-12">
							<hr class="my-1">
						</div>
					
						<div class="col-1">
							톱니바퀴
						</div>
						<div class="col-11">
							비즈설정
						</div>
					</div>
					
					
						
						
					
					
					<div class="row m-0">
						<div class="col-3 py-2">
							채팅 
						</div>	
						<div class="col-auto py-2">
							
						</div>	
						<div class="col-4 py-2">
							새채팅
						</div>	
					
						<div class="col-12">	
							<hr class="my-1">
						</div>
					
						<div class="col-2 py-2">
						<a class="makeBeesBtn btn w-10 py-2" href="#"></a>
							
						</div>
						<div class="col-10">
						홍길동
						</div>
					</div>
					
					
				</div>
			</div>
			<div class="col-7 p-0">
				<div id="main-content" class="container m-0 p-2">
				
					<!-- 우측 메인 Content 공간 -->
					
						<div class="head">첨부 모아보기</div>
			<div class="main_head"> 
				<div class="file_on">파일</div> 
				<div class="vote_off">투표</div> 
			</div> 
			<div class="main_body">
				<input type="text" id="input_search" autocomplete="off">
					<ul class="file_cont">
						<li><a href="#">파일내용</a></li>
					</ul>
					<ul class="vote_cont">
					    <li><a href="#">투표내용</a></li>			
					</ul>
			</div>
		
	</div>
					
				</div>
			</div>
			<div class="col-md-1 d-md-block d-none">
			</div>
		</div>
	</div>





</div>  <!-- wrap -->

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