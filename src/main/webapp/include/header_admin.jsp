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

display : inline-block;
padding-top:15px;

}
  

.inner img{
width:100%;
height:100%;
object-fit:cover;


}
 .admin_menu a{
 color:#50401B;

 }  

.admin_menu>li{

position:relative;
line-height:90px;
float:left;
text-align:center;
width:25%;


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
background-color:white;
border:none;

}
.top_right_img:before{
font-size:26px;
margin:0;
padding:0;
color:#FEE6B1;

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
text-align:center;
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

font-size:1rem;

}
.menu-sub:hover{
opacity: 1;  
display:block;

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
           <div class="col-2 col-md-2 p-0 d-xs-none">
           <span class="beeLogo">
            <a href="#" >
	       		<img src="resources/image/beeLogo.png" alt="로고이미지"/>	
 	  		</a>
            </span>
           
            </div>
         	<div class="col-md-8 p-0">
         		<ul class="admin_menu">
         			<li><a href="#">회원관리</a></li>
         			<li><a href="#">모임관리</a></li>
         			<li><a href="#">공지사항</a></li>
         			<li><a href="#">1:1문의</a></li>
         		</ul>
         	
         	
         	
         	
         	</div>
            <div class="col-2 col-md-2 p-0">
            
            
            
            
            
            <ul class="top_right-menu">
	  			
            	<li class="menu-item">
            	
            		<button type="button" class="top_right_btn" id="set_btn">
            			<img src="/resources/image/profile.png" style="border-radius:30px;">
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
 













</body>
</html>