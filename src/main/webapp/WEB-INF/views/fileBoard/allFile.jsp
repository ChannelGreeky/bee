<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bee 로그인</title>
<%@ include file="/common/cdnLib.jsp"%>
<style>
	* {
		font-family: 'Noto Sans KR', sans-serif;
		box-sizing:border-box;	
	}
	
	body {
		background-color:#F9F9F9;
	}
	
	div {
		box-sizing: border-box;
	}
	
	#header {
		border-top: 5px solid #FFF3D8;
		background-color : white;
	}
	
	.nav {
        width: 500px;
        height: 30px;
        overflow: hidden;
    }
    
    .nav>ul{
        width: 100%;
        height: 100%;
        margin: 0px;
        padding: 0px;
    }
    
    .nav>ul li {
        float: left;
        list-style-type: none;
        width: 33%;
        height: 100%;
        text-align: center;
        color: #50401B;
    }
    
    #sub-content {
    	background-color: white;
    }
    
    #sub-content-title {
    	color: #50401B;
    	font-size: 1.5rem;
    	font-weight:bold;
    }
    
    hr {
    	border: 0;
    	height: 5px;
    	background: #D6D3CA;
    }
    
    .beesImage {
    	border-radius:50px;
    }
    
    .myBees, .recommend {
		text-decoration: none;
		color: #50401B;
		font-weight:bold;
		vertical-align:middle;
	}
	
	.myBees:hover, .recommend {
		color: #50401B;
		font-weight:bold;
		vertical-align:middle;
	}
	
	.makeBeesBtn {
		font-weight: bold;
		text-decoration: none;
		color: #50401B;
		border-radius: 10px;
		background-color: #F7D078;
	}
	
	.viewMoreBtn {
		font-weight: bold;
		text-decoration: none;
		color: white;
		border-radius: 25px;
		background-color: #50401B;
	}
	
	.viewMoreBtn:hover {
		font-weight: bold;
		text-decoration: none;
		color: white;
		border-radius: 25px;
		background-color: #50401B;
	}
    #main-content-title {
    	color: #50401B;
    	font-size: 1.7rem;
    	font-weight:bold;
    }
	
	.categoryImg {
		border-radius:5px;
	}
	
	.beesInfo {
		color: #50401B;
		font-size: 0.8rem;
	}
	
	.recommendCategory {
		color: #50401B;
		font-size: 0.5rem;
		background-color:white;
		border : 1px solid #50401B;
		border-radius:8px;
		padding:2px;
	}
	
	
	
	
	
	
	
	
	
	
.main_content{
width:540px;
border:1px solid black;
padding: 15px 15px 15px 15px;
margin:0;
}
.main_head{
border-bottom:1px solid gray;
margin-bottom:15px;
}


H3{
margin-top:0;
margin-bottom:15px;
}
#upImgFiles{
display:none;
}
#btn-upload{
float:right;
margin-right:10px;
background-color:white;
border:none;
}
#btn-upload:focus{
outline:none;
}
#spaceImage{
margin-top:15px;

}
#imageviews{
margin:3px;
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


	<div id="header">
		<div class="nav m-auto">
	        <ul>
	        	<!-- 서브헤더 공간 -->
	        	<!-- 
	            <a href="#"><li id="rad1">내 비즈 소식</li></a>
	            <a href="#"><li>인기글</li></a>
	            <a href="#"><li>추천비즈</li></a>
	            -->
	        </ul>
	    </div>
    </div>
    
	<div class="container pt-3">
		<div class="row">
			<div class="col-1">
			</div>
			<div class="col-3 p-0">
				<div id="sub-content" class="container m-0 p-2">
					<!-- 좌측 서브 Content 공간 -->
					<!-- 아래 코드는 비즈검색결과 예시 (지우고 작업) 
					<div class="row m-0">
						<div class="col-12">
							<span id="sub-content-title">My Bees</span>
						</div>
					</div>
					
					<div class="row m-0">
						<div class="col-12">
							<hr class="my-1">
						</div>
					</div>
	
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="#">
								<div class="m-auto beesImage" style="width:40px; height:40px;
								background: url('/resources/image/test.jpg') no-repeat;
								background-size: cover;">
								</div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="#" class="myBees">여행에 미치다</a>
						</div>
					</div>
					
					<div class="row m-0">
						<div class="col-12 py-2">
							<a class="makeBeesBtn btn w-100 py-2" href="#">+ 비즈 만들기</a>
						</div>
					</div>
					
					-->
				</div>
			</div>
			<div class="col-7 p-0">
				<div id="main-content" class="container m-0 p-2">
				
					<!-- 우측 메인 Content 공간 -->
					<div class="main_content">
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

				<!-- 여기까지 내코드	-->
					
					
				</div>
			</div>
			<div class="col-1">
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
	<script type="text/javascript" src="/resources/js/index.js"></script>
		
</body>
</html>