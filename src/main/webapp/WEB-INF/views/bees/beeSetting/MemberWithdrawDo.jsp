<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.fourmeeting.bee.beesuser.model.vo.BeesUserList"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<BeesUserList> list = (ArrayList<BeesUserList>)request.getAttribute("list");
	/* Bees beeResult = (Bees)request.getAttribute("beeResult"); */
	/* Member sessionMember = (Member)session.getAttribute("member"); */
%>
   <%@ include file="/common/cdnLib.jsp"%>
   <!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->
   <link rel="stylesheet" type="text/css" href="/resources/css/beesForm.css">
   <script type="text/javascript" src="/resources/js/beesForm.js"></script>
   <div id="header">
   <%@include file="/include/headerBee.jsp" %>
   </div>   
   <div class="container pt-3" style="min-height: 950px;">
      <div class="row">
         <div class="col-1"></div>
         <div class="col-3 p-0">
            <div id="bees-side" class="container m-0 p-2">
			<jsp:include page="beeSettingLeft.jsp"/>	
			</div>
         </div>
         <div class="col-7 p-0">
            <div id="bees-contents" class="container m-0 p-2">
            <jsp:include page="beeSettingSubMemberWithdrawDo.jsp"/>
            </div>
            </div>
         </div>
         <div class="col-1"></div>
      </div>
   </div>
   <div id="footer">
   <%@include file="/common/footer.jsp"%>
   </div>
</body>
</html>