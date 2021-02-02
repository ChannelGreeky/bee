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
		/*  border: 1px black solid; */
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
		
		/* 테이블 메뉴 */
		.myhistroy_div{
			width: 100%;
			margin: 20px auto;
		}
		
		.myhistroy_table tr th{
			padding: 10px 20px;
			background-color: #dedede;
			position: relative;
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

		.myhistroy_table{
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
			background-color: white;
		}
		
		
		/* 나의 문의 내역 */
		.myhistroy_qnas_div{
			width: 100%;
			color : #50401B;
			background-color: white;
			padding: 30px 20px;
		}
		
		.myhistroy_qnas_div hr{
			margin: 70px 0 0 0;
		}
		
		.myhistroy_qnas_div table{
			width: 100%;
		}
		
		.myhistroy_qnas_answer_div{
			border: 1px solid #ededed;
			margin: 5px auto;
		}
		
		.qnas_profile{
			border-radius: 70%;
			background-color: #F7D078;
			width: 40px;
			height: 40px;
		}
		
		.admin_profile{
			border-radius: 70%;
			background-color: white;
			border: 3px solid #F7D078;
			width: 50px;
			height: 50px;
		}
		
		.myhistroy_q_table tr td, .myhistroy_a_table tr td {
		}
		
		.myhistroy_qnas_answer_div{
			border-radius: 30px 30px 30px 0px;
			width: 100%;
			height: auto;
			background-color: #FFF3D8;
			padding: 20px;
			margin-top: 20px;
			border: 0;
			/* box-shadow : 1px 1px 1px 1px #ededed; */
		}
		
		.qnas_writer_name{
			font-size: 0.9rem;
			font-weight: 500;
		}
		
		.admin_name{
			font-weight: 500;
			padding: 0;
			padding-left: 5px;
			font-size: 1.1rem;
		}
		
		.qnas_q_timestamp{
			font-size: 0.7rem;
			color : gray;
			padding: 0;
			
		}
		
		.qnas_a_timestamp{
			font-size: 0.8rem;
			color : gray;
			padding-left: 5px;
			transform: translate(0, -3px);
		}
		
		.qnas_q{
			padding: 25px 20px;
		}
		
		.qnas_a{
			padding: 20px 55px;
		}
		
		.myhistroy_qnas_div:last-child{
			margin-bottom: 150px;
		}
		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(4).css('background','#F7D078').css('font-weight','700');
			
			$(".qnas_profile").parent().css('width','45px').css('padding-left','10px').css('padding-right','5px');
			$(".admin_profile").parent().css('width','45px');
			
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
					
					<!-- 내용 div -->
					<div class="myhistroy_qnas_div">
						<!-- 질문칸 -->
						<table class="myhistroy_q_table">
							<tr>
								<td rowspan="2"><div class="qnas_profile"></div></td>
								<td class="qnas_writer_name">홍길동</td>
								<td rowspan="2">:</td>
							</tr>
							<tr>
								<td class="qnas_q_timestamp">2021년 01월 29일 오전 3:33</td>
							</tr>
							<tr>
								<td colspan="3" class="qnas_q">
									여기에 상담 내용이 들어가야 하는데
									다음칸으로 이케이케 넘어가는건 어케 해야할까
								</td>
							</tr>
						</table>
						<!-- 답변칸 -->
						<div class="myhistroy_qnas_answer_div">
							<table class="myhistroy_a_table">
								<tr>
									<td rowspan="2"><div class="admin_profile"></div></td>
									<td class="admin_name">관리자</td>
								</tr>
								<tr>
									<td class="qnas_a_timestamp">2021년 01월 29일 오전 3:33</td>
								</tr>
								<tr>
									<td colspan="3" class="qnas_a">
										여기에 상담 내용이 들어가야 하는데
										다음칸으로 이케이케 넘어가는건 어케 해야할까
									</td>
								</tr>
							</table>
						</div>
						<hr>
					</div>
					
					<!-- 내용 div -->
					<div class="myhistroy_qnas_div">
						<!-- 질문칸 -->
						<table class="myhistroy_q_table">
							<tr>
								<td rowspan="2"><div class="qnas_profile"></div></td>
								<td class="qnas_writer_name">홍길동</td>
								<td rowspan="2">:</td>
							</tr>
							<tr>
								<td class="qnas_q_timestamp">2021년 01월 29일 오전 3:33</td>
							</tr>
							<tr>
								<td colspan="3" class="qnas_q">
									여기에 상담 내용이 들어가야 하는데
									다음칸으로 이케이케 넘어가는건 어케 해야할까
								</td>
							</tr>
						</table>
						<!-- 답변칸 -->
						<div class="myhistroy_qnas_answer_div">
							<table class="myhistroy_a_table">
								<tr>
									<td rowspan="2"><div class="admin_profile"></div></td>
									<td class="admin_name">관리자</td>
								</tr>
								<tr>
									<td class="qnas_a_timestamp">2021년 01월 29일 오전 3:33</td>
								</tr>
								<tr>
									<td colspan="3" class="qnas_a">
										여기에 상담 내용이 들어가야 하는데
										다음칸으로 이케이케 넘어가는건 어케 해야할까
									</td>
								</tr>
							</table>
						</div>
						<hr>
					</div>
					
					
				</div>
				<!-- mypage 피드(내가 쓴 글) -->
				
				<!-- 여백 -->
				<div class="col-1"></div>
			</div>
		</div>

</body>
</html>