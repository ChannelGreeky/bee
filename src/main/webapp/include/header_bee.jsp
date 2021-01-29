<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
.header{
   border-bottom: 1px solid #FFF3D8;
background-color:#F7D078;
 
   } 
.inner{
position: relative;
max-width: 1034px;
min-width:500px;
height: 80px;
margin:0;
         
          
}
* {
	box-sizing: border-box;
}
.beeLogo{
 width: 80px;
 height: 80px;
 overflow: hidden;
vertical-align:middle;
display : inline-block;
padding-top:20px;

}

.inner form{
display:inline-block;
}    

.inner img{
width:100%;
height:100%;
object-fit:cover;

}
   
.searchBox{
position:absolute;
left:100px;
top:29px;
width:200px;
height:35px;
padding: 0 13px 0 13px;
margin:0 10px;
border-radius:30px;
background-color:#FBE6B5;
}
#input_searchBox{
background-color:#FBE6B5;
border:none;
width:83%;
height:100%;
margin:0 0 0 5px;
padding:3px;
}
#input_searchBox:focus{
outline:none;
}
#btn_search{
width:20px;
height:20px;
border:none;
background-color:#FBE6B5;
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
top:30px;

}
.header .top_right-menu>li{
position:relative;
line-height:20px;
float:left;
margin-left:30px;
}

.top_right_btn{
width: 30px;
height:30px;
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
z-index : 9;
background-color:#F7D078;
box-shadow:0.2em 0.2em 10px #111;
top:20px;    
position:absolute;
right:0;
white-space:nowrap;
transform:translate(10%, 2.2em);
display:none;
transition: all .8s;
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
text-decoration:none;
width:100%;
}
.menu-sub:after{
content:' ';
position:absolute;
top:-20px;
left:85%;
transform:translateX(-50%);
height:0;
width:0;
border-width:10px;
border-style:solid;
border-color:transparent transparent #F7D078 transparent;

}
.menu-item{
position:relative;
height : 35px;
}
.menu-item a{
padding:0.7em;
display:block;
}
.menu-item:hover .menu-sub{  
opacity: 1;  
display:block;
 transition-duration: 2s;
color:#B9CCA1;
}
.menu-sub:hover{
opacity: 1;  
display:block;
}

.navi{
position: relative;
z-index : 8;
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
color:#50401B;
} 
.navi_menu_item>a:hover{
color:#B9CCA1;
font-weight: bold;
font-size:1rem;
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

		
	<div class="container-fluid">
   <div class="row header" >
   <div class="col-md-3 p-0 .d-sm-none"></div>
   
       <div class="col-6 inner p-0">
       	<div class="row h-100 w-100 p-0" >
           <div class="col-8 col-md-9 p-0">
           <span class="beeLogo">
            <a href="#" >
	       		<img src="resources/image/beeWhiteLogo.png" alt="로고이미지" style="height:40px; width:80px;"/>	
 	  		</a>
            </span>
            <form action>
               <fieldset>
                    <div class="searchBox">
                      <input type="text" id="input_searchBox" autocomplete="off">
                      <button type="submit" id="btn_search">
                      <img src="/resources/image/search.png" style="width:20px; height:20px"/>
                      </button>
                    </div>
               </fieldset>
            </form>
            </div>
         
            <div class="col-4 col-md-3 p-0">
            
            
            
            
            <ul class="top_right-menu">
	  			<li class="menu-item">
	  				 <button type="button" class="top_right_btn">  
	  					<i class="far fa-comment-dots top_right_img"></i>
                    </button>
		            	<ul class="menu-sub">
			                        <li>
			                        	채팅목록
			                        </li>
			             </ul>
		         </li>
		            	
		            	
		            	
		           		 <li class="menu-item">
		            		<button type="button" class="top_right_btn" id="set_btn">
		            			<img src="/resources/image/profile.png" style="border-radius:30px; ">
		            		</button>	
		            		 
			                    <ul class="menu-sub">
			                        <li>
			                        	<a href="/index.jsp">내 정보</a>
			                        </li>
					   				<li>
			                            <a href="/index.jsp">내가 쓴 글</a>
			                        </li>
					  				<li>
			                            <a href="#">좋아요 목록</a>
			                        </li>
			 		  				<li>
			                            <a href="#">내 정보</a>
			                        </li>
			                        <li>
			                            <a href="#">비즈가입ㆍ초대 확인</a>
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
             </ul>  
          </div>  <!-- div col-3 -->
             </div> <!-- div row -->
          </div>  <!-- inner -->
          <div class="col-md-3 p-0 .d-sm-none"></div>
      </div>
 

       <div class="row navi">
  <div class="col-md-3 p-0 h-100 w-100"></div>
   
       <div class="col-md-6  p-0 navi" >   

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

 <div class="col-md-3 p-0 w-100"></div>
</div>




</body>
</html>