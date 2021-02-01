<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ include file="/include/header_bee.jsp"  %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<style>

* { 
color: #50401B; 
text-decoration: none; 
list-style: none; 
box-sizing: border-box; 
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


#input_searchBox{

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

</style>	

</head>
<body>


	<div id="main_content"> 
		<div class="head">첨부 모아보기</div>
			<div class="main_head"> 
				<div class="file_on">파일</div> 
				<div class="vote_off">투표</div> 
			</div> 
			<div class="main_body">
				<input type="text" id="input_searchBox" autocomplete="off">
					<ul class="file_cont">
						<li><a href="#">파일내용</a></li>
					</ul>
					<ul class="vote_cont">
					    <li><a href="#">투표내용</a></li>			
					</ul>
			</div>
		</div>
	</div>
       
 
 

		

		
 
       
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

