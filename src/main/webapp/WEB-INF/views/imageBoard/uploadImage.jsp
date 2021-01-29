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
font-family: 'Noto Sans KR', sans-serif;	
color: #50401B; 
text-decoration: none; 
list-style: none; 
box-sizing: border-box; 
} 
body {
		background-color:#F9F9F9;
	}
.head{
font-size:1.5rem;
height:10%;
line-height:54px;
}
#main_content { 

height:540px;
background-color:white;
border:1px solid black;
padding: 15px 15px 15px 15px;
margin:0;
width: 86%;
  margin: 0;
} 
.main_head{ 
border-bottom:1px solid gray;
margin-bottom :15px;
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
width:100%;
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

H3{
margin-top:0;
margin-bottom:15px;
}
#upImgFiles{
display:none;
}











 #sub-content {
    	
    	min-width:100px;
    }




#beesProfile {
 background-color: white;
  width: 75%;
  min-width:100px;
  height: auto;
  margin: auto;
  padding-top: 10px;
  padding-left:5px;
  padding-right:5px;
  padding-bottom: 10px;
}


#beesProfile > table {
  margin: auto;
  width: 95%;
  height: 100%;
}

#sub-content a {
  text-decoration: none;
  color: #F7D078;
}

#beesProfile_img {
  height: 130px;
  
  
}
#beesProfile_img img{
min-width:80px;
height:auto;
width:100%;

}
#beesName {
  
  font-size: 1.3rem;
  font-weight: bold;
}

#sizeFirst {
 
  
  font-size:1rem;

}

#beesInvite {
  font-size: 0.8rem;
  padding-left:5px;
  text-align:right;
  color:#F7D078;
}



#beesIntroduce {
  padding: 0 5px 5px 5px;
  font-size: 0.7rem;
  font-weight: 100;
}

#beesSetting {
  
  padding-bottom: 15px;
  font-size: 1rem;
	
}
.setting a{
color: #50401B; 
}

#beesChatting {
  
  background-color: white;
  width: 75%;
  height: auto;
  margin: auto;
  margin-top: 10px;
  padding-top: 10px;
  padding-left:5px;
  padding-right:5px;
  padding-bottom: 10px;
}


#join-btn {
  width: 95%;
  height: 40px;
  background-color: #f7d078;
  border: 0px solid white;
  color: white;
}
#join-box {
  font-size: 0.8rem;
  font-weight: 200;
  padding-left: 5px;
}

.innerline {
  padding-left: 5px;
  padding-right: 5px;
}



#bees-side-chatting > table {
  margin: auto;
  width: 95%;
  height: 100%;
}

#chatting-header {
  width: 70%;
  padding-left: 5px;
  font-size: 0.9rem;
  font-weight: 300;
}




#chatProfileImg {
  width: 25px;
height:25px;
overflow:hidden;
display:inline-block;
padding:0;
background-color:white;
border:none;
}

.chat-title {
  padding-left: 10px;
  height: 100%;
  display: inline-block;
  font-size: 0.8rem;
  font-weight: 300;
  vertical-align: middle;
  cursor: pointer;
}

.chat-open-btn {
  padding-left: 10px;
  height: 100%;
  display: inline-block;
  font-size: 0.8rem;
  font-weight: 300;
  vertical-align: middle;
}



</style>	

</head>
<body>


	
       
 
 <div class="container pt-3">
		<div class="row">
			<div class="col-1">
			</div>
			<div class="col-3 p-0">
				<div id="sub-content" class="container m-auto p-2 w-75">
					<!-- 좌측 서브 Content 공간 -->
					<!-- 아래 코드는 비즈검색결과 예시 (지우고 작업) -->
		
	
					
					<div id="beesProfile">
					
					
        <table>
            <tr>
                <td id="beesProfile_img" colspan="2"><img src="resources/image/building.jpg" "/></td>
            </tr>
            <tr>
                <td id="beesName" colspan="2" >비즈이름</td>
            </tr>
            <tr><td id="sizeFirst">멤버<!-- 숫자6 값 받아오기 -->6</td>
                <td id="beesInvite">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 19">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
              </svg>초대</a>
            </td>
        </tr>
           
            <tr><td id="beesIntroduce" colspan="2">비즈와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</td></tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td class="setting" colspan="2">
                <a href="">
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>&nbsp;비즈설정</a></td></tr>
            
        </table>
    </div>
    <div id="beesChatting">
        <table>
            <tr>
            	<td id="sizeFirst">
            		채팅
            	</td>
                <td id="beesInvite">
                	<a href="#" >새 채팅</a>
                </td>
            </tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td class="setting"  colspan="2">
                <div id="chatProfileImg"><img src="resources/image/building.jpg" style="border-radius:30px; width:100%; height:100%"/></div>
                <a href="#" >사용자 이름</a>
                </td>
            </tr>
                <tr><td colspan="2" class="setting" >
                    <div id="chatProfileImg"><img src="resources/image/building.jpg" style="border-radius:30px; width:100%; height:100%"/></div>
                <a href="#" class="setting">'비즈' 전체 채팅</a></td></tr>
        </table>
	</div>
				
				
			</div>
			</div>
			<div class="col-7 p-0">
				<div id="main-content" class="container m-0 p-2">
				
					<!-- 우측 메인 Content 공간 -->
					<!-- 아래 코드는 비즈검색결과 예시 (지우고 작업) -->
				
					
	<div class="main_head">
		<H3>사진첩</H3>
		
		
	</div>
	
	<div class="main_body">
		<span>전체사진</span> 
			<span>                                                                 
		    	<input type="file" id="upImgFiles" onChange="uploadImgs();" name="subImg" accept="image/*" multiple >
		    	<button type="button" id="btn-upload"> <i class="fas fa-plus"></i> </button> 
		    </span>
				<div class="row" id="spaceImage">
		            <div class="col-md-12"> 
						<div id="imageviews"></div>
		            </div>
		        </div>

	</div> <!-- main_body -->



</div> <!-- main_content -->
	
	
					
					
				</div>
			
			<div class="col-1">
			</div>
		</div>
	</div>

</div>		

		
 
       
       <script>
                              
                              $(function(){
                            	  $('#btn-upload').click(function(e){
                            		  e.preventDefault();
                            		  $('#upImgFiles').click();
                            	  });
                            	  
                            	  
                              });
                              
                              function uploadImgs() {
                                  // @breif 업로드 파일 읽기
                                  var fileList = document.getElementById( "upImgFiles" ).files;
                                       
                                 // @breif 업로드 파일 읽기
                                 function readAndPreview( fileList ) {
                                    // @breif 이미지 확장자 검사
                                    if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
                                       var reader = new FileReader();
                                       reader.addEventListener( "load", function() {
                                          var image = new Image();
                                          image.width = "160";
                                          image.height = "160";
                                          image.title = fileList.name;
                                          image.src = this.result;

                                          // @details 이미지 확장자 검사
                                          document.getElementById( "imageviews" ).appendChild( image );
                                       }, false );

                                       // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.

                                       if( fileList ) {
                                          reader.readAsDataURL( fileList );
                                       }
                                    }
                                 }

                               if( fileList ) {
                            // @details readAndPreview() 함수를 forEach문을통한 반복 수행
                                   [].forEach.call( fileList, readAndPreview );
                                }
                               }  
                           
                             
                             </script>
</body>
</html>

