<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>좋아요 누른 목록 | bee</title>
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
		
	/* 	div{
		 border: 1px black solid;
		} */
		
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
		
		.myhistroy_table {
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
			background-color: white;
		}
		
		.myhistroy_board_table {
			margin: 10px auto;
		}
		
		.myhistroy_table tr th{
			padding: 10px 20px;
			background-color: #dedede;
		}
		
		input[id*="notice"]{
			display: none;
			/*클릭박스 숨기기*/
		}
		
		input[id*="notice"] + label{
			display: block;
			padding: 12px 20px;
			border: 1px solid #ededed;
			color : #50401B;
			background-color: white;
			/* font-weight: 600; */
			cursor: pointer;
			position: relative;
			margin: 0;
		}
		
		input[id*="notice"] + label i{
			position: absolute;
			top: 35%;
			right: 5%;
			transform: rotate(180deg);
			transition: all .35s;
		}
		
		input[id*="notice"] + label + div{
			max-height: 0;
			transition: all .35s;
			overflow: hidden;
			background-color: white;
		}
		
		input[id*="notice"] + label + div p{
			display: inline-block;
			padding: 30px 20px;
			font-size: 0.9rem; 
		}
		
		input[id*="notice"]:checked + label {
			background-color: #fff3d8;
		}
		
		input[id*="notice"]:checked + label + div{
			max-height: 500px;		
		}
		
		input[id*="notice"]:checked + label i{
			transform: rotate(0deg);
			transition: all .35s;
		}

		

		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(5).css('background','#F7D078').css('font-weight','700');
			
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
							<th>공지사항</th>
						</tr>
					</table>
						
					<div class="notice_div">
					
						<input type="checkbox" id="notice1">
						<label for="notice1">
							<b>다른 사람에게 비즈장을 위임하고 싶어요.</b><i class="fas fa-angle-up"></i><br>
							2021년 1월 25일 오전 2:00
						</label>
						<div>
							<p>
							[리더인 경우] <br>
							 1) 리더 권한을 활동중인 밴드의 멤버에게 위임하려면, <br>
								개별 밴드의 [밴드 설정] > [리더 위임]에서 위임받을 멤버를 선택하세요. <br>
							 2) 공동리더 권한을 지정/회수하려면, <br>
								개별 밴드의 [밴드 설정] > [공동리더 관리]에서 지정/회수할 멤버를 선택하세요. <br>
							[공동리더인 경우] <br>
							공동리더는 다른 멤버에게 권한을 위임할 수없습니다. 밴드 리더에게 말씀하세요<br>
							</p>
						</div>
						
						<input type="checkbox" id="notice2">
						<label for="notice2">
							<b>책 추천 이벤트!</b><i class="fas fa-angle-up"></i><br>
							2021년 1월 25일 오전 2:00
						</label>
					<div>
						<p>이 책을 추천한 정신건강의학과 전문의 하지현 교수는 보통 ‘왜’에 집중하는 심리치유서들과 달리 이 책이
							‘왜’를 과감히 생략하고 바로 ‘어떻게’로 시작한다는 점을 강조한다. 마음이 괴로운 사람에게 고통의 원인을 추궁하지
							않고, 괴로우면 일단 따라 해보라고 손을 내미는 것이다. 하지현 교수의 추천처럼 이 책은 “우리가 살면서 겪는 자잘한
							마음의 생채기에 붙일 각종 연고와 크기별 반창고가 빼곡히 들어 있는 구급상자”다. 저자는 개인적으로 힘든 일을 겪었던
							시기에 자기 자신을 위해 이 책을 쓰기 시작했다. 그리고 실제로 이 책에 담긴 활동들이 자신의 삶을 지탱해주었다고
							말한다. 살아가며 이런저런 괴로움을 겪을 때마다 너무 고민하지 말고 이 책의 활동 중 아무거나 한두 가지라도 해보길
							바란다. 스트레스를 털어버리고 자신의 삶을 지지하고 긍정하며 그럭저럭 살아갈 수 있도록, 이 책이 당신을 도울
							것이다.</p>
					</div>

					<input type="checkbox" id="notice3">
						<label for="notice3">
							<b>로그인 FAQ</b><i class="fas fa-angle-up"></i><br>
							2021년 1월 25일 오전 2:00
						</label>
						<div><p>클릭하면 여기에 내용 나오게!</p></div>
					</div>
					
					
				</div>
				<!-- mypage 피드(내가 쓴 글) -->
				
				<!-- 여백 -->
				<div class="col-lg-3 col-md-0"></div>
			</div>
		</div>

</body>
</html>