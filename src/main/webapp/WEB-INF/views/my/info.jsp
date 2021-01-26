<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내정보 | bee</title>
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
		
		
		/* 내 정보 피드 */
		.myInfo_div{
			width: 100%;
			height: 800px;
			margin: 20px auto;
		}
		
		.myInfo_table{
			width: 100%;
			color : #50401B;
			border: 1px solid #ededed;
		}
		
		.border_Y{
			border-top: 1px solid #ededed;
		}
		
		.myInfo_table tr th{
			padding: 10px 20px;
			background-color: #dedede;
		}
		
		.myInfo_table tr td{
			padding: 20px 20px;
			background-color: white;
		}
		
		.myInfo_table tr td:last-child{
			text-align: right;
		}
		
				
		input, select:focus{
			outline: none;
		}

		
	</style>
	
	<script>
	
		$(function(){
			
			//사이드 네비 초기값
			$(".navi_li").eq(0).css('background','#F7D078').css('font-weight','700');
			
			//사이드 네비 클릭하면 css변경
			$(".navi_li").click(function(){
				$(this).css('background','#F7D078');
				$(this).eq(0).css('font-weight','700');
				$(this).siblings().css('background','white'); //siblings() 나를 제외한 형제 요소들 모두 선택
				$(this).siblings().css('font-weight','400');
			});
			
			//정보 변경 버튼 누르면 확인/취소 버튼 나오기
			$(".myInfo_modify_btn").click(function(){
				
				if($(this).val()=='변경'){
					
					$(this).val('취소');
					$(this).prev().attr('type','button');
					
					switch($(this).attr('id')){
						case 'memberBirth' : $(this).parent().prev().text('이렇게요?'); break
						case 'memberGender' : $(this).parent().prev().html('<select name="memberGender"><option value="F">여자</option><option value="M">남자</option></select>'); break
						case 'memberPhone' : $(this).parent().prev().html('<input type="text" name="memberPone" placeholder="휴대폰 번호 입력">'); break
						case 'memberEmail' : $(this).parent().prev().html('<input type="text" name="memberEmail" placeholder="이메일 입력">'); break
						case 'memberPw' : $(this).parent().prev().text('이렇게요?'); break
					}
					
				} else if($(this).val()=='취소'){
					
					$(this).val('변경');
					$(this).prev().attr('type','hidden');
					
					if($(this).attr('id')=='birth'){
						$(this).parent().prev().css('color','#50401B');
					}
					
					switch($(this).attr('id')){
						case 'memberBirth' : $(this).parent().prev().text('1992년 05월 20일'); break
						case 'memberGender' : $(this).parent().prev().text('여자'); break
						case 'memberPhone' : $(this).parent().prev().text('+82 10 33** 07**'); break
						case 'memberEmail' : $(this).parent().prev().text('kh****@naver.com'); break
						case 'memberPw' : $(this).parent().prev().text(''); break
					}
					
				}
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
				
				<!-- mypage 피드(내정보) -->
				<div class="col-4 myInfo_div">
					<table class="myInfo_table">
						<tr class="border_Y">
							<th colspan="4">내 정보</th>
						</tr>
						<tr class="border_Y">
							<td><b>사용중인 프로필</b></td>
							<td colspan="2">프로필+김철수</td>
							<td>
								<input type="button" value="관리"  onclick="location.href='#'"/>
							</td>
						</tr>
						<tr class="border_Y">
							<td><b>개인정보</b></td>
							<td>생일</td>
							<td>1992년 05월 20일</td>
							<td>
								<input type="hidden" value="확인" onclick="location.href='#'"/> <!-- ajax로 변경하는 페이지.. 이케이케.. -->
								<input type="button" value="변경" class="myInfo_modify_btn" id="memberBirth"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>성별</td>
							<td>여자</td>
							<!-- <td><select name="memberGender"><option value="F">여자</option><option value="M">남자</option></select></td> -->
							<td>
								<input type="hidden" value="확인" onclick="location.href='#'"/>
								<input type="button" value="변경" class="myInfo_modify_btn"  id="memberGender"/>
							</td>
						</tr>
						<tr class="border_Y">
							<td><b>로그인계정</b></td>
							<td>휴대폰번호</td>
							<td>+82 10 33** 07**</td>
							<td>
								<input type="hidden" value="확인" onclick="location.href='#'"/> <!-- 휴대폰 번호 인증 -->
								<input type="button" value="변경" class="myInfo_modify_btn" id="memberPhone"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>이메일</td>
							<td>kh****@naver.com</td>
							<td>
								<input type="hidden" value="확인" onclick="location.href='#'"/> <!-- 이메일 중복확인 -->
								<input type="button" value="변경" class="myInfo_modify_btn" id="memberEmail"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>비밀번호</td>
							<td></td>
							<td>
								<input type="hidden" value="확인" onclick="location.href='#'"/>
								<input type="button" value="변경" class="myInfo_modify_btn" id="memberPw"/>
							</td>
						</tr>
						<tr class="border_Y">
							<td><b>회원 탈퇴</b></td>
							<td colspan="2"></td>
							<td><input type="button" value="탈퇴"  onclick="location.href='#'"/></td>
						</tr>
					</table>
				</div>
				<!-- mypage 피드(내정보) -->
				
				<!-- 여백 -->
				<div class="col-lg-3 col-md-0"></div>
			</div>
		</div>

</body>
</html>