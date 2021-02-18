<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/include/headerBee.jsp"  %>
    <%@page import="com.fourmeeting.bee.member.model.vo.Member"%>
<%@page import="com.fourmeeting.bee.notice.model.vo.Notice"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.Bees"%>
<%@page import="com.fourmeeting.bee.beesuser.model.vo.BeesUser"%>
<%@page import="com.fourmeeting.bee.admin.model.vo.Search" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.Setting"%>
<%@page import="com.fourmeeting.bee.schedule.model.vo.Schedule"%>
<%@page import="com.fourmeeting.bee.image.model.vo.Image"%>
<%@page import="com.fourmeeting.bee.file.model.vo.BeesFile"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.fourmeeting.bee.vote.model.vo.FeedVote"%>
<%@page import="com.fourmeeting.bee.comment.model.vo.FeedComment"%>
<%@page import="java.util.HashMap"%>

<%@page import="com.fourmeeting.bee.board.model.vo.Feed"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

* { 
	color: #50401B; 
	text-decoration: none; 
	list-style: none; 
	box-sizing: border-box; 
	} 
	.head{
	font-size:1.3rem;
	padding-top:15px;
	padding-bottom:15px;
	display:block;
	padding-left:30px;
	height:60px;
	}

	.main_head{ 
	width:90%;
	position: absolute;
	font-size: 1.0rem; 

	cursor: pointer; 
	
	margin-left:30px;
	margin-right:30px;
	display:inline-block;
	} 
.contain {
  width: 500px;
  height: 1000px;
  margin: 20px auto;
  display:inline-block;
}
.tab_title{
height:50px;
width:100%;
}
.tab_title div {
 
  float: left;
  width: 100px;
  padding: 10px 15px;
  cursor: pointer;
  text-align: center;
  border-bottom: 1px solid #bebebe;
  height:100%;
 
}

.tab_title div.on {
text-decoration:underline;
  color:#F7D078;
  font-weight: bold;
  
}

.tab_cont {
  clear: both;
 
  height: 600px;

  margin-bottom:15px; 
  margin-top: 150px;
}

.tab_cont div {
  display: none;
  padding-left: 20px;
  padding-top: 30px;
}

.tab_cont div.on {
  display: block;
  
}
.tab_foot{
height:50px;

 border-top: 1px solid #bebebe;
 margin:0 30px;
}
.cont_searchBox{
position:absolute;

width:100%;
height:40px;
padding: 0 13px 0 13px;
bottom:15px;

margin-right:30px;
border:1px solid gray;
border-radius:30px;

}
.cont_searchBox form{
height:100%;
}
#search{
border:none;
width:90%;
height:100%;

padding:3px;
padding-left:20px;
}
#search:focus{
outline:none;
}
#search_btn{
width:5%;
height:20px;
border:none;
background-color:white;

}
.cont{
width:100%;
height:100%;

}
#fileCont li{
display:inline-block;
width:100%;
padding-left:5px;
}
#fileCont img{
width:30px;
height:30px;
}

#voteCont li{
display:inline-block;
width:100%;
padding-left:5px;

}

#voteCont img{
width:30px;
height:30px;
}



</style>

</head>
<body>



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


<%@ include file="/common/cdnLib.jsp"%> 
	<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesForm.css">
	<script type="text/javascript" src="/resources/js/beesForm.js"></script>
   <!--  <link rel="stylesheet" type="text/css" href="/resources/css/beesFileBoard.css"> -->
 <script>

$(function(){

//인풋태그 자동완성 X
$('input').attr('autocomplete','off');

$('.chat-open-btn').click(function(){    
window.open("chatting-page.html", '비즈 채팅', 'width=400px, height=600px, resizable=no');
return false;

});

});

</script>

<%

Member member = (Member)session.getAttribute("member");

%>
  


			
			
			<div class="col-7 p-0">

				<div id="bees-contents" class="container m-0 p-2">

<div id="main_content" style="background-color: white; width:100%; min-height:600px;">

<!-- 내 코드 -->

 	<%if(member !=null){ %>
		<div class="head" >첨부 모아보기</div>
	
		<div class="main_head" style="height:135px"> 
			  <div class="tab_title">
			    <div class="on" style="width:50%;" id="fileClick">파일</div>
			    <div style="width:50%;" id="voteClick">투표</div>
			  </div>
			   <div class="cont_searchBox">
			            <form action="/searchInfo.do" method="get">  
			            <input type="hidden" name="beesNo" value="${param.beesNo }">
			                      <input type="text" id="search" name="keyword" autocomplete="off">
			                      <button type="submit" id="search_btn" style="margin-top:0px;">
			                      <img src="/resources/image/search.png" style="width:20px; height:20px"/>
			                      </button>
			            </form>
			   </div>
        </div>
		<div class="tab_cont" >
		    <div class="on" >
		      <ul id="fileCont">

			  </ul>
		    </div>
		    <div >
		      <ul id="voteCont">
					
			  </ul>
		    </div>
  		</div>
		<div class="tab_foot" >
		</div>


</div><!-- main_content" -->
</div><!-- bees-contents -->
</div><!-- <div class="col-7 p-0"> -->
</div><!-- row"> -->

</div><!-- container pt-3 -->

<%}else{ %>     div 밑에 자식이 0번쨰1번째?인거용
<script>location.href ="/index.jsp";</script>
<%} %>
      <script>
      $(document).ready(function() {
    	  
    	  
        	  $(".tab_title div").click(function() {
        	    var idx = $(this).index();
        	    $(".tab_title div").removeClass("on");
        	   
        	    console.log(idx);
        	    
        	  
        	    if(idx ==0){
		        	    $(".tab_title div").eq(0).addClass("on");
		        	    $(".tab_cont > div").hide();
		        	    $(".tab_cont > div").eq(0).show();
		        	    
		        	   // $('#fileClick').click(function(){
		        	 
		          		  var beesNo = ${param.beesNo };
		                	
		                
		      			
		      					$.ajax({
		            				url:"/fileList.do",
		            				type:"post",
		            				data : {"beesNo":beesNo},
		            				async : false,
		            				dataType: "json",
		            				success:function(data){
		            					console.log("성공");
		            					
		            					 var str="";
		            					 $("#fileCont").html(str);
		            					 console.log(data);
		            					$.each(data, function(index, n) {
		            						$("#fileCont").append("<li><img src='/resources/image/bees/icon/file-icon.jpg'>"+n.originalFileName+"</li>");
		            						
		            						/*console.log(n.originalFileName);
		            						console.log(index);
		            						str += "<li>";
		            						str += "<img src='/resources/image/bees/icon/file-icon.jpg'>" +n.originalFileName+
		            						str + "</li>"
		            						console.log(str);
		            						*/
		            					});
		            					
		            					//$("#fileCont").html(str);
		            				},
		            				error:function(data){
		            					console.log("error");
		            				}
		              			}); 	
		        	
		        	  //});
            	 
          	  
        	    }else if(idx == 1){
        	    	$(".tab_title div").eq(1).addClass("on");
            	    $(".tab_cont > div").hide();
            	    $(".tab_cont > div").eq(1).show();
            	    
        	    	  //$("#voteClick").click(function(){
        	      		  var beesNo = ${param.beesNo };
        	      		 
        	      		  $.ajax({
        	    				url:"/voteList.do",
        	    				type:"POST",
        	    				data : {"beesNo":beesNo},
        	      				dataType: "json",
        	    				success:function(data){
        	    					console.log(data);
        	    					 var str="";
        	    					 var obj="";
        	       					$.each(data, function(idx, n) {
        	       						console.log(n);
        	       						console.log(n.voteEndYN);
        	       						if(n.voteEndYN == 'Y'){
        	       							n.voteEndYN = "종료";
        	       						}else if(n.voteEndYN == 'N'){
        	       							n.voteEndYN = "진행중";
        	       						}
        	       						
        	       						str += "<li>";
        	       						str += "<img src='/resources/image/bees/icon/vote-icon.jpg'>" + n.voteTitle + "<br><small>" +   n.voteEndYN +"</small>"
        	       						
        	       						str + "</li>"
        	       					});
        	       					$("#voteCont").html(str);
        	       				},
        	       				error:function(data){
        	       					console.log("error");
        	       				}
        	         			}); 	//ajax
        	    	 // });  //voteClick
        	    	  
        	    }  //idx=1
        	    
        	  });
        	
     
    	
    	  
    	
    	  
    	  
    	  
    	  
    	  
  	  });
      
    	
     </script>
     <jsp:include page="/common/footer.jsp" flush="true"/>
</body>
</html>

