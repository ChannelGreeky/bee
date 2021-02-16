<%@page import="java.text.DecimalFormat"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.Bees"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.BeesUserCount"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.fourmeeting.bee.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bee 로그인</title>
<%@ include file="/common/cdnLib.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/beesSearchResult.css">
</head>

<body>
	<%
	Member m = (Member)session.getAttribute("member");
	ArrayList<BeesUserCount> resultBees = (ArrayList<BeesUserCount>) request.getAttribute("resultBees");
	ArrayList<Bees> myBees = (ArrayList<Bees>) request.getAttribute("myBees");
	DecimalFormat formatter = new DecimalFormat("###,###");
	int endNo = (int) request.getAttribute("endNo");
	String searchData = (String) request.getAttribute("searchData");
	%>
	<%@include file="/include/headerUser.jsp" %>
    
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
					
					<%
						if(!myBees.isEmpty()) {
							for(Bees b : myBees) {
					%>
					<div class="row m-0">
						<div class="d-none d-md-block col-md-3 p-1">
							<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>">
								<div class="m-auto beesImage" style="width:30px; height:30px;
								background: url('<%=b.getBeesCover() %>') no-repeat;
								background-size: cover;">
								</div>
							</a>
						</div>
						<div class="col-12 col-md-9 py-2 px-0">
							<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>" class="myBees"><%=b.getBeesName() %></a>
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
				<div id="main-content" class="container m-0 p-2">
					<div class="row mt-2 m-0">
						<div class="col-12">
							<span id="main-content-title">'<%=searchData %>' 검색 결과 (비즈)</span>
							<a class="categoryBtn btn ml-3" href="#">비즈 검색</a>
							<a class="categoryBtn btn" href="/feedSearchResult.do?keyword=<%=searchData %>">게시글 검색</a>
						</div>
					</div>
					<div class="row mt-1 m-0">
						<!-- 반복 -->
						<%if(!resultBees.isEmpty()) {
							if(resultBees.size() < endNo-10) {
								for(BeesUserCount b : resultBees) {%>
									<div class="d-none d-md-block col-md-2 p-1 py-3">
										<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>">
											<div class="m-auto beesImage" style="width:60px; height:60px;
											background: url('<%=b.getBeesCover() %>') no-repeat;
											background-size: cover;">
											</div>
										</a>
									</div>
									<div class="col-6 col-md-4 py-2 px-0">
										<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>" class="recommend"><%=b.getBeesName() %></a>
										<span class="recommendCategory"><%=b.getBeesCategory() %></span>
										<br>
										<span class="beesInfo">비즈장 : <%=b.getBeesHost() %></span><br>
										<span class="beesInfo">인원수 : <%=formatter.format(b.getBeesUserCount()) %>명</span>
									</div>
							<% 	}
							} else {
								for(int i=0; i < endNo-10; i++) {
									BeesUserCount b = resultBees.get(i);
							%>
									<div class="d-none d-md-block col-md-2 p-1 py-3">
										<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>">
											<div class="m-auto beesImage" style="width:60px; height:60px;
											background: url('<%=b.getBeesCover() %>') no-repeat;
											background-size: cover;">
											</div>
										</a>
									</div>
									<div class="col-6 col-md-4 py-2 px-0">
										<a href="/beesSelectOne.do?beesNo=<%=b.getBeesNo() %>&memberNo=<%=m.getMemberNo()%>" class="recommend"><%=b.getBeesName() %></a>
										<span class="recommendCategory"><%=b.getBeesCategory() %></span>
										<br>
										<span class="beesInfo">비즈장 : <%=b.getBeesHost() %></span><br>
										<span class="beesInfo">인원수 : <%=formatter.format(b.getBeesUserCount()) %>명</span>
									</div>
						<% 		}
							}
						} %>
					</div>
					
					<%if (resultBees.size() > endNo-10) { %>
					<div class="row mt-3 m-0">
						<div class="col-12">
							<a id="moreView" class="viewMoreBtn btn w-100 py-2" href="/beesSearchResult.do?searchData=<%=searchData %>&endNo=<%=endNo%>">+ 더보기</a>
						</div>
					</div>
					<% } else if (resultBees.isEmpty()){ %>
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
	<script type="text/javascript" src="/resources/js/index.js"></script>
		
</body>
</html>