<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bee 아이디 찾기</title>
<%@ include file="/common/cdnLib.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/memberFindIdResult.css">
</head>

<body>
	<div class="container">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6 text-center">
					<img src="/resources/image/logo.PNG"/>
				</div>
				<div class="col-3"></div>
			</div>
			
			<div class="row">
			
				<div id="loginForm" class="container col-6">
					<div class="row">
						<div class="col-12 px-5"><span id="title">아이디 찾기 결과</span></div>
					</div>
					<div class="row">
						<div class="col-12 p-0">
							<form>
								<div class="container">
									<div id="resultBox" class="row p-5 my-5">
										<div class="col-12 text-center">
											<span id="resultMessage">홍길동님의 ID는 m.getUserId()입니다.</span>
										</div>
									</div>
	
									
									
									
									<div class="row border-0 my-5">
										<div class="col-1"></div>
										<div class="col-5">																			
											<a class="btn w-100" href="/init/memberFindPw.jsp">비밀번호 찾기</a>
										</div>
										<div class="col-5">																			
											<a class="btn w-100" href="/init/memberLogin.jsp">로그인</a>
										</div>
										<div class="col-1"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</div>
	<div id="footer" class="row m-0 p-0">
			<div class="col-12 my-3"></div>
	</div>
</body>
</html>