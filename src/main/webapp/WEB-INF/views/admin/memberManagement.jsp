<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		
	body{
		font-family: 'Noto Sans KR', sans-serif;
		/* background-color: #f9f9f9; */
	}
	
	div{
	    /* border: 1px black solid;    */
	}	
	
	.container{
		width: 100%;
		height: 100%;
		background-color: white;
	}
	
	.memberManagement_div p{
		font-size: 1.5rem;
		font-weight: 600;
		color: #50401B;
	}
	
	.memberManagement_table{
		width: 100%;
		border: 1px solid #ededed;
		text-align: center;
		color: #50401B;
	}
	
	.memberManagement_table tr th{
		padding: 7px 20px;
		background-color: #fff3d8;
	}
	
	.memberManagement_table tr td{
		padding: 5px 20px;
		height: 40px;
	}
	
	/* 탈퇴버튼 */
	.member_del_y_btn{
		color: #50401B;
		background-color: #F7D078;
		border-radius: 25px;
		width: 80px;
		height: 27px;
		font-weight: 500;
		font-size: 0.85rem;
		line-height: 15px;
		border: 0;
	}
	
	/* 복구버튼  */
	.member_del_n_btn{
		color: white;
		background-color: #50401B;
		border-radius: 25px;
		width: 80px;
		height: 27px;
		font-weight: 500;
		font-size: 0.85rem;
		line-height: 15px;
		border: 0;
	} 
	
	.member_del_y_btn, .member_del_n_btn:focus{
		outline: none;
	}
	
</style>

	<script>
		
		$(function(){
			
				
		/* 	
			$(".member_del_yn_btn").click(function(){
				
				if($(this).val()==null){
					var result = confirm("정말 탈퇴처리 하시겠습니까?");
					if(result){
						//삭제 로직 구현
						$(this).css('background-color','#50401B').css('color','white').val("복구");
					} 
				}
				else if($(this).val()=="복구"){
					//if 복구 정상적 되면
					var result = confirm("정말 복구 하시겠습니까?");
					if(result){
						$(this).css('background-color','#F7D078').css('color','#50401B').val("탈퇴");
					}
				} 
				
			}); */
			
			/* if($(".member_del_yn_btn").val()=="탈퇴"){ /// text
				$(this).css('background-color','#F7D078').css('color','#50401B');
			} else if($(".member_del_yn_btn").val()=="복구"){
				$(this).css('background-color','#50401B').css('color','white');
			} 
			
			if(탈퇴일자!=null){
			<button class="탈퇴">탈퇴</button>
			}else{
			<button class="복구">복구</button>
			}
			
			*/
			
			
		});
	
	</script>


		<div class="container pt-3">
			<div class="row">
				
				<!-- 여백 -->
				<div class="col-1"></div>
				
				<div class="memberManagement_div col-10">
					<p>회원관리</p>
					<table border="1" class="memberManagement_table">
						<tr>
							<th>회원번호</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>이메일</th>
							<th>가입일자</th>
							<th>탈퇴일자</th>
							<th>탈퇴 / 복구</th>
						</tr>
						<tr>
							<td>0920</td>
							<td>kim9</td>
							<td>하하하</td>
							<td>haha09@gmail.com</td>
							<td>20.02.01</td>
							<td>-</td>
							<td>
								<input type="button" value="탈퇴" class="member_del_y_btn">
								<input type="hidden" value="복구" class="member_del_n_btn">
							</td>
						</tr>
						<tr>
							<td>0919</td>
							<td>song55</td>
							<td>송오리땅땅</td>
							<td>song55@gmail.com</td>
							<td>20.02.01</td>
							<td>20.05.01</td>
							<td>
								<input type="hidden" value="탈퇴" class="member_del_y_btn">
								<input type="button" value="복구" class="member_del_n_btn">
							</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
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
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
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
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
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
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
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
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
				
				<!-- 여백 -->
				<div class="col-1"></div>
				
			</div>
		</div>

</body>
</html>