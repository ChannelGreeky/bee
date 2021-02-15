<%@page import="java.text.DecimalFormat"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.BeesUserCount"%>
<%@page import="com.fourmeeting.bee.member.model.vo.Member"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.Bees"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bee 로그인</title>
<%@ include file="/common/cdnLib.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/beesRecommend.css">
</head>

<body>
	<%
	Member m = (Member)session.getAttribute("member");
	ArrayList<BeesUserCount> recommendBees = (ArrayList<BeesUserCount>) request.getAttribute("recommendBees");
	ArrayList<Bees> myBees = (ArrayList<Bees>) request.getAttribute("myBees");
	String category =  (String) request.getAttribute("category");
	DecimalFormat formatter = new DecimalFormat("###,###");
	%>
	<%@include file="/include/headerUser.jsp" %>
	<div id="header">
		<div class="nav m-auto">
	        <ul>
	            <a href="#"><li id="rad1">내 비즈 소식</li></a>
	            <a href="#"><li>인기글</li></a>
	            <a href="/beesRecommend.do"><li>추천비즈</li></a>
	        </ul>
	    </div>
    </div>
    
	<div class="container pt-3">
		<div class="row">
			<div class="col-1">
			</div>
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
							<a href="#?beesName=<%=b.getBeesName() %>">
								<div class="m-auto beesImage" style="width:30px; height:30px;
								background: url('<%=b.getBeesCover() %>') no-repeat;
								background-size: cover;">
								</div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="#?beesName=<%=b.getBeesName() %>" class="myBees"><%=b.getBeesName() %></a>
						</div>
					</div>
					<% 		}
						} %>

					<div class="row m-0">
						<div class="col-12 py-2">
							<a class="makeBeesBtn btn w-100 py-2" href="#">+ 비즈 만들기</a>
						</div>
					</div>
				</div>
				
			</div>
			<div class="col-7 p-0">
				<div id="main-content" class="container m-0 p-2">
				
					<div class="row m-0">
						<div class="col-12">
							<span id="main-content-title">카테고리</span>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=meet" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_meet.jpg') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">취미&동호회</span>
									</div>
								</div>
							</a>
						</div>
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=study" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_study.jpg') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">공부</span>
									</div>
								</div>
							</a>
						</div>
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=game" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_game.jpg') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">게임</span>
									</div>
								</div>
							</a>
						</div>
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=exercise" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_exercise.jpg') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">운동</span>
									</div>
								</div>
							</a>
						</div>
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=area" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_area.jpg') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">지역</span>
									</div>
								</div>
							</a>
						</div>
						<div class="col-4 col-md-4 col-lg-2">
							<a href="/beesCategoryRecommend.do?category=etc" class="category">
								<div class="m-auto categoryImg text-center" style="width:100%; height:80px;
								background: url('/resources/image/category_etc.png') no-repeat;
								background-size: cover;">
									<div class="m-auto categoryImg text-center caption">
										<span class="categoryName">기타</span>
									</div>
								</div>
							</a>
						</div>
					</div>
					
					<div class="row mt-4 m-0">
						<div class="col-12">
							<span id="main-content-title">
							<% if (category.equals("meet")){%>취미/동호회
							<%} else if (category.equals("study")) { %>공부
							<%} else if (category.equals("game")) { %>게임
							<%} else if (category.equals("exercise")) {%>운동
							<%} else if (category.equals("area")) {%>지역
							<%} else { %>기타
							<%} %>
							</span>
						</div>
					</div>
					

					<div class="row mt-1 m-0">
						<!-- 반복 -->
						<%if(!recommendBees.isEmpty()) {
							for(BeesUserCount b : recommendBees) {%>
							<div class="d-none d-md-block col-md-2 p-1 py-3">
								<a href="#?beesName=<%=b.getBeesName() %>">
									<div class="m-auto beesImage" style="width:60px; height:60px;
									background: url('<%=b.getBeesCover() %>') no-repeat;
									background-size: cover;">
									</div>
								</a>
							</div>
							<div class="col-6 col-md-4 py-2 px-0">
								<a href="#?beesName=<%=b.getBeesName() %>" class="recommend"><%=b.getBeesName() %></a>
								<span class="recommendCategory"><%=b.getBeesCategory() %></span>
								<br>
								<span class="beesInfo">비즈장 : <%=b.getBeesHost() %></span><br>
								<span class="beesInfo">인원수 :  <%=formatter.format(b.getBeesUserCount()+1) %>명</span>
							</div>
							<% } %>
						<% } %>
					</div>
					<%if(!recommendBees.isEmpty() && recommendBees.size() > 10) { %>
					<div class="row mt-3 m-0">
						<div class="col-12">
							<a class="viewMoreBtn btn w-100 py-2" href="#">+ 더보기</a>
						</div>
					</div>
					<% } else if (recommendBees.isEmpty()){ %>
						<div class="row mt-3 m-0">
							<div class="col-12 text-center">
								<img src="/resources/image/hide.png" width="50%" />
							</div>
						</div>
					<%} %>
				</div>
			</div>
			<div class="col-1">
			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>