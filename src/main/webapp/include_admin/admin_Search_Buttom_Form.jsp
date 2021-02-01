<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/include/header_admin.jsp"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

.search_bar{
background-color:#F7D078;
margin-top:15px;
height:60px;

}
#search_title{
font-size: 1.5rem;
color:#50401B;
font-weight:bold;
}
#main-content div{
box-sizing: border-box;
border:0;
padding:0;
display:inline-block;
float:left;

}
#main-content form{
width:100%;

}
.search_bar input{
display:inline-block;
border-radius:30px;
height:38px;
margin:11px 10px;
padding-left:5px;
width:90%;
border:none;
}
.search_bar input:focus{
outline:none;
}

#search_btn{
width:45px;
height:35px;
background-color:white;
border:none;
border-radius:100px;
float:right;
margin:11px 10px 11px 0;
}
#search_btn img{
width:80%;
height:80%;
}
#search_btn:focus{
outline:none;
}
.search_bar select{
border-radius:30px;
height:38px;
display:inline-block;
margin:11px 10px;
width:90%;
border:none;
}
.search_bar select:focus{
outline:none;
}
#main-content div{
display:inline-block;

}
.btn-primary{
float:right;
width:100px;
margin-right:15px;
border:none;
color:#50401B;
font-size:1rem;
}
#write_btn{
float:right;
width:100px;
margin-right:15px;
border:none;
color:#50401B;
font-size:1rem;
}
#write_btn:focus{
outline:none;
}
.admin_header{
width:100%;

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


<div class="container pt-3">
		<div class="row">
			<div class="col-1 p-0"></div>
			
				
			<div class="col-10 p-0">
					<div id="main-content" class="container m-0 p-2">
						<div class="row w-100">
							<div class="col-md-12 admin_header">
								<span id="search_title">공지사항</span>
								<!-- Button trigger modal -->
								<button type="button" style="background-color:#F7D078; border-radius:30px;" id="write_btn" >글작성</button>			
							</div>
						</div>
						<div class="row w-100">
						<form method="" >
							<div class="col-md-2 w-100 search_bar">
								<input type="date" >
								</div>
								<div class="col-md-2 w-100 search_bar">
								 <input type="date"> 
								 </div>
								<div class="col-md-2 w-100 search_bar"> 
								<select>
									<option>닉네임</option>
									<option>카테고리</option>
									<option>글제목</option>
									
								</select>
							</div>	
					
							<div class="col-md-6 w-100 search_bar">
								<input type="text" style="width:77%; right:10px;">
								<button type="submit" id="search_btn" ><img src="resources/image/search.png"/></button>
							</div>
						</form>
						
					</div>
				</div>
			</div>
			<div class="col-1 p-0"></div>
		</div>




</div> <!-- container -->





</body>
</html>