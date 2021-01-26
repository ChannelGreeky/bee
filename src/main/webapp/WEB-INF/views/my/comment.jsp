<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 쓴 댓글 | bee</title>
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
		}
		
		div{
		 border: 1px black solid;
		}
		
		.container-fluid{
			width: 100%;
			height: 100%;
			background-color: #f9f9f9;
		}
		
		/* 내 정보 네비바 */
		.mypage_navi_div{
			padding: 0;
		}
		
		#mypage_navi_ul{
			width: 60%;
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
		
		select:focus{
			outline: none;
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
		
		.myhistroy_categories_underbar td:nth-child(2){ /*댓글 아래 언더바*/
		 	background-color: #50401B;
		 	height: 2px;
		}
		
		.myhistroy_beesName a{
			text-decoration: none;
			color : #50401B;
			display: block; /*a태그를 영역 전체로 잡기 위함*/
		}
		
		.myhistroy_beesName{
			border: 1px solid #ededed;
		}
		
		.myhistroy_beesName td{
			padding: 5px 20px;
		}
		
				
		.myhistroy_table, .myhistroy_comment_table{
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
			background-color: white;
		}
		
		.myhistroy_comment_table{
			margin: 10px auto;
		}
		
		tr[class^= "mycomments"] td{
			/*mycomments로 시작하는 class모두 선택*/
		}
		
		.mycomments1 td{
			padding: 20px 20px 5px 20px;
			font-weight: 500;
		}
		.mycomments1 td span{
			color: gray;
		}
		
		.mycomments2 td{
			padding: 5px 20px;
		}
		
		.mycomments3 td{
			padding: 5px 20px;
			color: gray;
		}
		
		.mycomments4 td{
			padding: 5px 20px 20px 20px;
			color: gray;
		}
		
		

		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(1).css('background','#F7D078').css('font-weight','700');
			
			$(".mycomments").click(function(){
				alert("모달...떠라...");
			});
			
		});
	
	</script>
	
		
		<div class="container-fluid">
			<div class="row">
				
				<!-- 여백 -->
				<div class="col-lg-3 col-md-0"></div>
				
				<!-- mypage 사이드 네비 -->				
				<div class="col-2 mypage_navi_div">
					<ul id="mypage_navi_ul">
						<li class="navi_li"><a href="/myinfo.do" id="myInfo">내 정보<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href="/myboard.do" id="myHistory">내가 쓴 글<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/myheart.do' id="myHeart">좋아요 누른 목록<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/mybeesJoinQnas.do' id="myApprove">비즈 가입ㆍ초대 확인<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/myQnaHistory.do' id="myQuestion">문의사항<i class="fas fa-angle-right"></i></a></li>
						<li class="navi_li"><a href='/mynotice.do' id="myNotice">공지사항<i class="fas fa-angle-right"></i></a></li>
					</ul>
				</div>
				<!-- mypage 사이드 네비 -->
				
				<!-- mypage 피드(내가 쓴 글_게시글) -->
				<div class="col-4 myhistroy_div">
					<table class="myhistroy_table">
						<tr>
							<th>내가 쓴 글</th>
							<th>
								<select>
									<option>비즈별 모아보기</option>
									<option>초보 개발자 모임</option>
									<!-- 가입한 비즈 목록 불러오기 -->
								</select>
							</th>
						</tr>
						<tr class="myhistroy_categories">
							<td><a href="/myboard.do">게시글</a></td>
							<td><a href="/mycomment.do">댓글</a></td>
						</tr>
						<tr class="myhistroy_categories_underbar">
							<td></td>
							<td></td>
						</tr>
					</table>
					
					<table class="myhistroy_comment_table">
						<!-- 클릭하면 비즈로 이동 -->
						<tr class="myhistroy_beesName">
							<td colspan="2"><a href="#">초보 개발자 모임</a></td>
						</tr>
						<!-- 클릭하면 비즈로 이동 -->
						
						<!-- 클릭하면 모달로 게시글 보여줌 -->
						<tr class="mycomments mycomments1">
							<td colspan="2">김철수 <span>댓글</span></td>
						</tr>
						<tr class="mycomments mycomments2">
							<td colspan="2">(내가 쓴 댓글)알려주신 주소 보고 설치했어요 감사합니다!</td>
						</tr>
						<tr class="mycomments mycomments3">
							<td colspan="2">(게시글 내용)내용 보여주기 너무 긴 글은...</td>
						</tr>
						<tr class="mycomments mycomments4">
							<td colspan="2">2021년 01월 5일</td>
						</tr>
						<!-- 클릭하면 모달로 게시글 보여줌 -->
					</table>
					
					
					
					<table class="myhistroy_comment_table">
						<!-- 클릭하면 비즈로 이동 -->
						<tr class="myhistroy_beesName">
							<td colspan="2"><a href="/myboard.do">초보 개발자 모임</a></td>
						</tr>
						<!-- 클릭하면 비즈로 이동 -->
						
						<!-- 클릭하면 모달로 게시글 보여줌 -->
						<tr class="mycomments mycomments1">
							<td colspan="2">김철수 <span>댓글</span></td>
						</tr>
						<tr class="mycomments mycomments2">
							<td colspan="2">(내가 쓴 댓글)알려주신 주소 보고 설치했어요 감사합니다!</td>
						</tr>
						<tr class="mycomments mycomments3">
							<td colspan="2">(게시글 내용)내용 보여주기 너무 긴 글은...</td>
						</tr>
						<tr class="mycomments mycomments4">
							<td colspan="2">2021년 01월 5일</td>
						</tr>
						<!-- 클릭하면 모달로 게시글 보여줌 -->
					</table>
					
					
				</div>
				<!-- mypage 피드(내가 쓴 글_게시글) -->
				
				<!-- 여백 -->
				<div class="col-lg-3 col-md-0"></div>
			</div>
		</div>

</body>
</html>