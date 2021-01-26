<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{
box-sizing:border-box;
}
.main_content{
width:540px;
height:540px;
border:1px solid black;
padding: 15px 15px 15px 15px;
margin:0;
}
.main_head{
heigth:30%;
margin-bottom:15px;
}
.main_navi{

margin-top:15px;
margin-bottom:15px;
heigth:20%;

}
.main_body{
border-top:1px solid gray;
padding-top:15px;
heigth:50%;
}


H3{
margin-top:0;
margin-bottom:15px;
}

#input_searchBox{

background-image:url('../../../resources/image/search.png');
background-position:470px 6px;
background-repeat:no-repeat;
background-size:20px 20px;
border:1px solid black;
width:100%;
height:100%;
margin:0;
padding:3px 25px 3px 15px;
border-radius:30px;
}
#input_searchBox:focus{
outline:none;
}
.navi_menu{
list-style:none;

padding:0;
display:flex;
text-align:center;
height:100%;
align-items:center;
position:relative;

margin:0 auto;
}

.navi_menu_item{
margin-right:45px;
display:list-item;
position:relative;
line-height:30px;
float:left;
margin-left:50px;
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



	<div class="main_content">
	<div class="main_head">
		<H3>첨부 모아보기</H3>
		
		
	</div>
	<div class="main_navi">
		<ul class="navi_menu">
			<li class="navi_menu_item"><a href="#"  >파일</li>
			<li class="navi_menu_item"><a href="#"  >투표</li>
			<li class="navi_menu_item"><a href="#"  >To-Do</li>
		</ul>
	
	
	</div>
	<div class="main_body">
		<input type="text" id="input_searchBox" autocomplete="off">
				<div class="row">
		            <div class="col-md-12"> 
						
		            </div>
		        </div>

	</div> <!-- main_body -->



</div> <!-- main_content -->
	






</body>
</html>