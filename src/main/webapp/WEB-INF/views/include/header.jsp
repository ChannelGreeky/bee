<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
    #header>.inner{
	position: relative;
            max-width: 1034px;
            min-width:490px;
            height: 50px;
            margin:0 auto;
            background-color:#F7D078;
}
* {
	box-sizing: border-box;
}
.beeLogo{
 width: 70px;
 height: 36px;
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
list-style:none;
margin:0;
padding:0;
}
li{
display:list-item;
}
.top_right-menu{
right:15px;
position:absolute;
top:14px;
}
#header .top_right-menu>li{
position:relative;
line-height:20px;
float:left;
margin-left:30px;
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

	<div id="wrap" style="transform: none;">
   <div id="header" >  
       <div class="inner">
           <span>
            <a href="#" class="beeLogo">
	       		<img src="resources/image/beeLogo.png" alt="로고이미지"/>	
 	  		</a>
            </span>
            <form action>
               <fieldset>
                    <div class="searchBox">
                      <!--   <input type="text" id="input_searchBox" class="" placeholder="&#xf002;" autocomplete="off"> -->
                     
                      <input type="text" id="input_searchBox" autocomplete="off">
                      <!--   <span><i class="fas fa-search"></i></span> -->
                    <!--   <input type="button" class="img-button" placeholder="&#xf002;"> -->
                    </div>
               </fieldset>
            </form>
            
            
            <ul class="top_right-menu">
	  			<li class="chat">
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
            	<li class="setting">
            		<button type="button" class="top_right_btn" >
            			<i class="fas fa-user-circle top_right_img"></i>
            		</button>
            	</li>
            
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

 
               <li class="setting">
                   <button type="button" class="" >
                      <span class="uProfile">
                          <span class="profileInner">
                                 <img src="" width="30" height="30" alt class="">
                           </span>
                       </span>
                    </button>
                <article class="" id="">
                   <div class="">
                       <ul>
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
                             <div class="sub">
                                <ul>
                                   <li>
                                      <a href="#">비즈가입 초대 확인</a>
                                   </li>
			<li>
                                      <a href="#">문의사항</a>
                                   </li>
			<li>
                                      <a href="#">공지사항</a>
                                   </li>
                                 </ul>
                               </div>
                            </li>
                            <li>
                                <a href="#">로그아웃</a>
                            </li>
                         </ul>
                      </div>
                  </article>
               </li> <!-- setting>-->
             </ul>  
          </div>  <!-- inner -->
      
 

       <div id="navi" style="display: block;">		
	<ul class="navi_menu">
	    <li class="navi_menu_item">
     	       <a href="#" >
		<span>
			전체글
		</span>
	       </a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >
		<span>
			사진첩
		</span>
	       </a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >
		<span>
			일정
		</span>
	       </a>
	    </li>	
                <li class="navi_menu_item">
     	       <a href="#" >
		<span>
			첨부
		</span>
	       </a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#" >
		<span>
			멤버
		</span>
	       </a>
	    </li>	
	</ul>
         </div>  <!-- navi -->





</div> <!-- header -->








</div>  <!-- wrap -->




</body>
</html>