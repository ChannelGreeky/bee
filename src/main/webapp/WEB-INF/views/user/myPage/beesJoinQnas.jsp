<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입신청 중인 비즈 | bee</title>
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
		/* 내 정보 네비바 */
		
		
		/* 피드 메뉴바 */
		.myhistroy_div{
			width: 100%;
			height: 1020px;
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
		
		.myhistroy_categories_underbar td:nth-child(1){
		 	background-color: #50401B;
		 	height: 2px;
		}
		/* 피드 메뉴바 */
		
		
		/* 피드 내용 */		
		.myhistroy_table{
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
			background-color: white;
		}
		
		.myhistroy_joinQnas_div{
			width: 100%;
			color : #50401B;
			background-color: white;
		}
		
		.myhistroy_joinQnas_div {
			height: 430px;
			border-left: 1px solid #ededed;
			border-right: 1px solid #ededed;
		}
		
		.joinQnas_history_div{
			border-bottom: 1px solid #ededed;
		}
		
		
		.joinQnas_title{
			color : #50401B;
			font-weight: 600;
			padding: 45px 35px 10px 35px;
		}
		
		.myhistroy_joinQnas_table{
			margin: 5px auto;
			width: 90%;
			text-align: center;
			font-size: 0.9rem;
		}
		
		.myhistroy_joinQnas_table th{
			padding: 7px 20px;
			background-color: #f7f7f7;
			color : #50401B;
			border-top: 3px solid gray;
			border-bottom: 1px solid #ededed;
		}
		
		.myhistroy_joinQnas_table td{
			padding: 7px 20px;
			color : #50401B;
			border-bottom: 1px solid #ededed;
			height: 40px;
		}
		
		.myhistroy_joinQnas_table th:first-child{
			text-align: left;
			width: 40%;
		}
		
		.myhistroy_joinQnas_table td:first-child{
			text-align: left;
		}
		
		.bees_joinQnas_btn{
			color: #50401B;
			background-color: white;
			border: 1px solid #50401B;
			border-radius: 8px;
			line-height: 17px;
			width: 65px;
			height: 28px;
		}
		
		.bees_joinQnas_btn:focus{
			outline: none;
		}
		
		.bees_joinQnas_btn:hover{
			background-color: #50401B;
			color: white;
			/*넣을지 말지 */
		}
		

		/* 피드 내용 */	
		
		/* 페이지 넘버 */
		
		.bees_joinQnas_pageNumber{
			text-align: center;
			margin: 35px 30px;
			font-weight: 600;
			color: #6D6042;
		}
		
		/* 페이지 넘버 */
		

		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(3).css('background','#F7D078').css('font-weight','700');
			
			
			//취소 버튼 눌렀을때
			$(".bees_joinQnas_btn").click(function(){
				
				var result = confirm("정말 취소 하시겠습니까?");
				if(result){
					//취소 로직 구현
					
				} 
			});
			
			//가입 현황
			$("#S").css('color','#F7D078');
			
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
					<!-- 테이블 메뉴 -->
					<table class="myhistroy_table">
						<tr>
							<th colspan="2">비즈 가입 확인</th>
						</tr>
					</table>
					
					<!-- 가입 신청중인 비즈 테이블 -->
					<div class="myhistroy_joinQnas_div">
						<div class="joinQnas_title">가입 신청중인 비즈</div>
						<table class="myhistroy_joinQnas_table">
							<tr>
								<th>모임명</th>
								<th>모임장</th>
								<th>신청일</th>
								<th>가입 신청</th>
							</tr>
							<tr>
								<td>월드비건</td>
								<td>딤디디</td>
								<td>21.01.28</td>
								<td><input type="button" class="bees_joinQnas_btn" value="취소"></td>
							</tr>
							<tr>
								<td>커피프린스</td>
								<td>공지철</td>
								<td>21.01.28</td>
								<td><input type="button" class="bees_joinQnas_btn" value="취소"></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						
						
						<!-- 페이지 넘버 -->
						<div class="bees_joinQnas_pageNumber">
							< 1 2 3 4 5 >
						</div>
					</div>
					
					<!-- 비즈 가입 신청 내역 -->
					<div class="myhistroy_joinQnas_div joinQnas_history_div">
						<div class="joinQnas_title">가입 신청 내역</div>
						<table class="myhistroy_joinQnas_table joinQnas_histroy_table">
							<tr>
								<th>모임명</th>
								<th>모임장</th>
								<th>수락일</th>
								<th>현황</th>
							</tr>
							<tr>
								<td>월드비건</td>
								<td>딤디디</td>
								<td>21.01.28</td>
								<td id="S">대기</td>
							</tr>
							<tr>
								<td>월드비건</td>
								<td>딤디디</td>
								<td>21.01.28</td>
								<td>승인</td>
							</tr>
							<tr>
								<td>월드비건</td>
								<td>딤디디</td>
								<td>21.01.28</td>
								<td>거절</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						
						
						<!-- 페이지 넘버 -->
						<div class="bees_joinQnas_pageNumber">
							< 1 2 3 4 5 >
						</div>
						
					</div>
					
					
				</div>
				<!-- mypage 피드(내가 쓴 글) -->
				
				<!-- 여백 -->
				<div class="col-1"></div>
			</div>
		</div>

</body>
</html>