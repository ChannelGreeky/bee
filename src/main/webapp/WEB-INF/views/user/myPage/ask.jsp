<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비즈 초대 | bee</title>
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

	<!-- 노토산스 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
	
	
	<style>
		
		
		/*커서 없애버려...*/
		
		body{
			font-family: 'Noto Sans KR', sans-serif;
			background-color: #f9f9f9;
		}
		
		div{
		 /* border: 1px black solid; */
		}
		
		.container{
			width: 100%;
			height: 100%;
		}
		
		/* 내 정보 네비바 */
		.mypage_navi_div{
			padding: 0;
		}
		
		#mypage_navi_ul{
			width: 75%;
			height: 300px;
			list-style-type: none;
			margin: 20px auto;
			padding: 0px;
		}
		
		#mypage_navi_ul a{
 			text-decoration: none;
			color : #50401B;
			display: block; /*a태그를 li영역 전체로 잡기 위함*/
			position: relative;
		}
		
		#mypage_navi_ul li{
		 	border: 1px solid #ededed;
		 	padding: 10px;
		 	background-color: white;
		}
		
		#mypage_navi_ul li i{
			color : #50401B;
			position: absolute;
			left: 95%;
			top: 20%;
		}
		
		
		/* 내가 쓴 글 피드 */
		.myhistroy_div{
			width: 100%;
			height: 800px;
			margin: 20px auto;
		}
		
		.myhistroy_table tr th{
			padding: 10px 20px;
			background-color: #dedede;
			position: relative;
		}
		
		.myhistroy_table tr th > select{
			color : #50401B;
			position: absolute;
			right: 5%;
			top: 17%;
		}
			
		.myhistroy_categories td{
			width: 50%;
			padding: 10px 0px;
			text-align: center;
			position: relative;
		}
		
		.myhistroy_categories td a{
			text-decoration: none;
			color : #50401B;
			display: block; /*a태그를 영역 전체로 잡기 위함*/
		}
		
		.myhistroy_categories_underbar td:nth-child(2){
		 	background-color: #50401B;
		 	height: 2px;
		}
		
		.myhistroy_table {
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
			background-color: white;
		}
		
		.ask_select{
			color: gray;
		}

		.myhistroy_div form{
			padding: 20px 20px;
			border: 1px solid #ededed;
			background-color: white;
			color : #50401B;
		}
		
		.myhistroy_div  form p {
			font-weight: 500;
		}
		
		.myhistroy_div hr {
			margin: 30px auto;
		}
		
		.myhistroy_div textarea {
			width: 100%;
			height: 300px;
			overflow: auto;
			resize: none;
			padding: 15px 15px;
			color: #50401B;
			font-size: 0.9rem;
		}
		
		textarea, select, input[type='submit'], input[type='reset']:focus{/*클릭시 아웃라인 없애기*/
			outline: none;
		}
		
		.myhistroy_div input[type='submit'] {
			color: white;
			background-color: #50401B;
			border-radius: 25px;
			width: 85px;
			height: 35px;
			margin-left: 10px;
			border: 0;
		}
		
		.myhistroy_div input[type='reset'] {
			color: #50401B;
			background-color: white;
			border-radius: 25px;
			width: 85px;
			height: 35px;
			font-weight: 500;
			border: 1px solid #50401B;
		}


  
    </style>

		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(4).css('background','#F7D078').css('font-weight','700');
			
			$(".ask_select").click(function(){
				$(this).eq(0).css('color','#50401B');
			});
			
			
		});
	
	</script>
	
			
		<div class="container pt-3">
			<div class="row">
				
				<!-- 여백 -->
				<div class="col-1"></div>
				
				<!-- mypage 사이드 네비 -->				
				<div class="col-3 p-0 mypage_navi_div">
					<ul id="mypage_navi_ul">
						<li class="navi_li"><a href="/myinfo.do" id="myInfo">내 정보<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href="/myboard.do" id="myHistory">내가 쓴 글<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/myheart.do' id="myHeart">좋아요 누른 목록<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/mybeesJoinQnas.do' id="myApprove">비즈 가입 확인<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/myQnaHistory.do' id="myQuestion">문의사항<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/mynotice.do' id="myNotice">공지사항<i class="fas fa-angle-right"></i></a></li>
					</ul>
				</div>
				<!-- mypage 사이드 네비 -->
				
				<!-- mypage 피드(내가 쓴 글_게시글) -->
				<div class="col-7 p-0 myhistroy_div">
					<table class="myhistroy_table">
						<tr>
							<th colspan="2">문의사항</th>
						</tr>
						<tr class="myhistroy_categories">
							<td><a href="/myQnaHistory.do">나의 문의 내역</a></td>
							<td><a href="/myask.do">1:1 문의하기</a></td>
						</tr>
						<tr class="myhistroy_categories_underbar">
							<td></td>
							<td></td>
						</tr>
					</table>
						
					<form action="#" method="post">
						<p>분류<p>
						<select class="ask_select">
							<option value="" disabled selected hidden>문의하고자 하는 분류를 선택해주세요</option>
							<option value="1">비즈 건의사항</option>
							<option value="2">비즈 오류</option>
							<option value="3">기타</option>
						</select>
						<br><hr>
						
						<p>문의 내용<p>
						<textarea name="myquestion"></textarea>
						
						<br><br>
						<center>
						<input type="reset" value="취소"/> <input type="submit" value="작성완료"/>
						</center>
						<br>
					</form>
					
					
				</div>
				<!-- mypage 피드(내가 쓴 글) -->
				
				<!-- 여백 -->
				<div class="col-1"></div>
			</div>
		</div>

</body>
</html>