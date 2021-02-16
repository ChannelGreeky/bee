<%@page import="com.fourmeeting.bee.bees.model.vo.Bees"%>
<%@page import="com.fourmeeting.bee.member.model.vo.Member"%>
<%@page import="com.fourmeeting.bee.board.model.vo.Feed"%>
<%@page import="com.fourmeeting.bee.image.model.vo.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/cdnLib.jsp"%>
	<link rel="stylesheet" type="text/css" href="/resources/css/bestFeedPage.css">
	
	
<%
	Member member = (Member)session.getAttribute("member");
	ArrayList<Feed> feedList = (ArrayList<Feed>)request.getAttribute("feedList");
	ArrayList<Bees> myBees = (ArrayList<Bees>) request.getAttribute("beesList");
	ArrayList<Integer> beesNoList = (ArrayList<Integer>) request.getAttribute("beesNoList");
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일", Locale.KOREA);
	HashMap<Integer,Integer> likeMap = (HashMap <Integer,Integer>)request.getAttribute("likeMap");
	HashMap<Integer, ArrayList<Image>> imageMap = (HashMap<Integer, ArrayList<Image>>)request.getAttribute("imageMap");
	
%>
	<div>
	<%@include file="/include/headerUser.jsp" %>
	</div>
	<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="sub-content" class="container p-2 w-75 m-auto">
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
					<!-- 반복 -->
					<%
						if(!myBees.isEmpty()) {
							for(Bees b : myBees) {
					%>
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=member.getMemberNo()%>">
								<div class="m-auto beesImage" style="width:30px; height:30px;
								background: url('<%=b.getBeesCover() %>') no-repeat;
								background-size: cover;">
								</div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=member.getMemberNo()%>" class="myBees"><%=b.getBeesName() %></a>
						</div>
					</div>
					<% 		}
						} %>
					
					<div class="row m-0">
						<div class="col-12 py-2">
							<a class="makeBeesBtn btn w-100 py-2" href="/beeCreateMain.do">+ 비즈 만들기</a>
						</div>
					</div>
				</div>
				
			</div>
			<div class="col-7 p-0">
						<span id="main-content-title">인기글</span>
					<%
					if(!(feedList.isEmpty())){
					for(int i=0; i<feedList.size(); i++){ 
							
						Feed feed = feedList.get(i);
						
						String beesName = null;
						if(feed.getBeesName().length()>15){
							beesName=feed.getBeesName().substring(0,15);
						}else{
							beesName=feed.getBeesName();
						}
					%>
					
					<script>
					$(function(){
					
					/*인기 비즈 카테고리 */
					
					var maintext = "";
					<%if(feed.getBoardCont()==null){%>
					<%}else{%>
					maintext = '<%=feed.getBoardCont() %>';
					<%}%>
					
					if(maintext>150){
					maintext = maintext.substring(0, 150);
					$('.best-feed-maintext').html(maintext + "...");
					}else{
					$('.best-feed-maintext').html(maintext);	
					}
					});
					
					</script>
					
					<div class="best-feed" id="<%=feed.getBoardNo() %>">
						<div class="best-feed-cont">
							<div class="best-feed-title">
								<a class="best-feed-bees-name" href="/beesSelectOne.do?beesNo=<%=feed.getBeesNo() %>&memberNo=<%=feed.getMemberNo() %>"><%=beesName %></a> <i class="fas fa-angle-left"></i> <span class="best-feed-writer"><%=feed.getUserName() %></span> <span class="best-feed-date"><%=dateFormat.format(feed.getBoardDate()) %></span>
							</div>
							<div class="best-feed-main">
								<p class="best-feed-maintext"></p>
							</div>
							<div class="best-feed-footer">
								<span class="best-feed-like-btn" style="line-height: 20px; font-weight: 600; padding-left: 20px;"> 
									<%if(likeMap.get(feed.getBoardNo())==null){
									if((beesNoList.indexOf(feed.getBeesNo()))<0){%>
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="dimgray" class="none-like-btn bi bi-heart-fill" viewBox="0 0 16 16">
							        <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" /> </svg>
								<%}else{%>
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="lightgray" class="feed-like-btn bi bi-heart-fill" viewBox="0 0 16 16">
       								 <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" /> </svg>
        							<%}}else{%>
        							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" class="feed-like-btn bi bi-heart-fill" viewBox="0 0 16 16">
       								 <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" /> </svg>
        							<%}%>
								</span>
								<span class="best-feed-like-count"><%=feed.getLikeCount() %></span> &nbsp;&nbsp; 댓글 <span class="best-feed-comment-count"><%=feed.getCommentCount() %></span>
							</div>
						</div>
						<div class="best-feed-image" class="col-4">
						<%if((imageMap.get(feed.getBoardNo()))!=null) {
										ArrayList<Image> imageList = imageMap.get(feed.getBoardNo());
										Image image = imageList.get(0);
									%>
								<center>
								<img src="/resources/image/bees/feedImage/<%=image.getChangeImageName() %>" style="margin:10px; max-width:80%;">
								</center><% 
							}%>
						</div>
					</div>
					<%}
					}else{%>
					<div style="width:100%; height:720px"></div>
					<%} %>
				<script>
				$('.none-like-btn').click(function(){
					alert("해당 비즈의 가입회원이 아닙니다.");
				});
				
				$('.feed-like-btn').click( function() {
					
					var boardNo = $(this).closest('.best-feed').attr('id');
					var memberNo = ${sessionScope.member.memberNo};
					
										
					if ($(this).attr('fill') == 'red') {
						
						$.ajax({
							url : "/deleteBoardLike.do",
							data : {
								"boardNo" : boardNo,
								"memberNo" : memberNo
							},
							success : function(data) {
								if (data>0) {
									
								} else {
									alert("다시 시도해주세요");
								}

							},
							error : function() {

							}
							
						})
						
						$(this).attr('fill', 'lightgray');
						$(this).parent().next().html(Number($(this).parent().next().html()) - 1);

					} else if ($(this).attr('fill') == 'lightgray') {

						$.ajax({
							url : "/insertBoardLike.do",
							data : {
								"boardNo" : boardNo,
								"memberNo" : memberNo
							},
							success : function(data) {

								if (data > 0) {
									
								} else {
									alert("다시 시도해주세요");
								}

							},
							error : function() {
							}
							
						})
						
						$(this).attr('fill', 'red');
						$(this).parent().next().html(Number($(this).parent().next().html()) + 1);
					}
				
				});
				</script>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	<div>
	<%@include file="/common/footer.jsp"%>
	</div>
</body>
</html>