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

	<!-- 글씨체 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="/resources/css/adminNoticeBoard.css">
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
	
	.question_div {
		min-height:500px;
	}
	
	.question_table{
		width: 100%;
		border: 1px solid #ededed;
		text-align: center;
		color: #50401B;
		
	}
	
	.question_table tr th{
		padding: 7px 20px;
		background-color: #fff3d8;
	}
	
	.question_table tr td{
		padding: 5px 20px;
		height: 40px;
	}
	
	/* 답변하기 or 답변완료 */
	.answer_yn_btn{
		color: #50401B;
		background-color: white;
		border-radius: 25px;
		width: 80px;
		height: 27px;
		font-weight: 500;
		border: 1px solid #50401B;
		font-size: 0.85rem;
		line-height: 15px;
	}
	
	/* 삭제 or 복구 */
	.qna_del_yn_btn{
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
	
	.answer_yn_btn, .qna_del_yn_btn:focus{
		outline: none;
	}
	
</style>

	<script>
		
		$(function(){
			
			$(".answer_yn_btn").click(function(){
				
				//누르면 모달창 떠서 답변 글 작성 하기
				//if 답변 정상적으로 등록되면 버튼 바뀌기 
				$(this).css('background-color','#F7D078').css('border','0').val("답변완료");
				
			});
			
			$(".qna_del_yn_btn").click(function(){
				
				if($(this).val()=="삭제"){
					var result = confirm("정말 삭제하시겠습니까?");
					if(result){
						//삭제 로직 구현
						$(this).css('background-color','#50401B').css('color','white').val("복구");
					} 
				}
				else if($(this).val()=="복구"){
					//if 복구 정상적 되면
					$(this).css('background-color','#F7D078').css('color','#50401B').val("삭제");
				} 
				
			});
			
		});
	
	</script>
	   <%@ include file="/include/adminSearchButtomForm.jsp"  %>

<div class="container pt-3">
			<div class="row">
				
				<!-- 여백 -->
				<div class="col-1"></div>
				
				<div class="col-10 question_div">
					
					<table border="1" class="question_table">
						<tr>
							<th>글 번호</th>
							<th>분류</th>
							<th>글제목</th>
							<th>작성자ID</th>
							<th>작성일</th>
							<th>수정</th>
							<th>삭제/복구</th>
						</tr>
						<tr>
							<td>2</td>
							<td>공지사항</td>
							<td>설 맞이 이벤트! 루피 이모티콘 증정!</td>
							<td>admin1</td>
							<td>21.01.27</td>
							<td><input type="button" value="수정" class="answer_yn_btn"></td>
							<td><input type="button" value="삭제" class="qna_del_yn_btn"></td>
						</tr>
						
						
					</table>
				</div>
				
				<!-- 여백 -->
				<div class="col-1"></div>
				
			</div>
		</div>






	<!--글 작성 Modal -->
<div class="modal fade" id="myModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg ">
     <form action="/noticeInsert.do" method="post">
    <div class="modal-content">
 
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel" >
        	<select name="noticeCategory">
        		<option value="noticeModal"> 공지사항 작성</option>
        		<option value="faqModal">FAQ</option>
        	</select>
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
      </div>
      <div class="modal-body">
        <div id="title" style="border-bottom:1px solid #E4E4E4;">
        <input type="text" id="myInput" name="noticeTitle" placeholder="제목을 입력해주세요."/></div>
        
        <div class="write_area">
           
            <textarea class="form-control" id="recipient-name" name="noticeCont"></textarea>
          </div>
          
        
      </div>
     
      <div class="modal-footer" style="height:10%; width:100%;padding-right:15px;">
      <hr class="line">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:right;background-color:#E4E4E4;color:#50401B;border:none;border-radius:10px;">취소</button>
        <button type="submit" class="btn btn-primary" style="float:right; background-color:#FFF3D8;color:#50401B;border:none;border-radius:10px;">작성완료</button>
      </div>
     
        </div> <!-- modal-content -->
         </form>
  </div> <!-- modal-dialog -->
</div><!-- Modal-fade -->


								
								
											


</div> <!-- container -->
<jsp:include page="/common/footer.jsp" flush="true"/>
<script>

//$(document).ready(function(){
//	$('#myModal').on('shown.bs.modal', function () {
	//	  $('#myInput').trigger('focus')
	//	})
//});	  
	  
//var myModal = document.getElementById('myModal');
//var myInput = document.getElementById('myInput')
//myModal.onclick=function(){
//$('#write_btn').click(function(e){

//});


//myModal.addEventListener('shown.bs.modal', function () {
//  myInput.focus()
//})
//var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
//  keyboard: false
//})
//myModal.show();
//myModal.hide()
//}
</script>



</body>
</html>