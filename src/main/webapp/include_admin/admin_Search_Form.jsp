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
.admin_header{
width:100%;

}

</style>



</head>
<body>
<div class="container pt-3">
		<div class="row">
			<div class="col-1 p-0"></div>
			
				
			<div class="col-10 p-0">
					<div id="main-content" class="container m-0 p-2">
						<div class="row w-100">
							<div class="col-md-12 admin_header">
								<span id="search_title">공지사항</span>
								
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