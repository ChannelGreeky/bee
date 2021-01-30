<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bee 회원가입</title>
<%@ include file="/common/cdnLib.jsp"%>
<!-- 주소API -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/memberJoin.css">

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
					<div class="col-12 px-4">
						<form>
							<div class="container">
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;아이디</span>
										<div class="container p-0 m-0 border-none">
											<div class="row p-0 m-0">
												<div class="col-12 col-lg-9 p-0 m-0">
													<input type="text" id="userId" name="userId" onblur="idCheck();" placeholder="아이디 입력" />
												</div>
												<div class="col-12 col-lg-3 p-0 m-0 text-center">
													<button type="button" class="btn checkBtn m-0">중복확인</button>
												</div>
											</div>
										</div>
										<span id="idMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;비밀번호</span> 
										<input type="password" id="userPw" name="userPw" onblur="pwCheck();" placeholder="비밀번호 입력(숫자,영문,특수문자 조합 최소 8자 최대 16자)">
										<span id="pwMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-0">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;비밀번호 확인</span> 
										<input type="password" id="userPwRe" name="userPwRe" onblur="pwReCheck();" placeholder="비밀번호 재입력">
										<span id="pwReMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;이름</span> 
										<input type="text" id="userName" name="userName" onblur="nameCheck();" placeholder="이름 입력">
										<span id="nameMessage" class="checkMessage"></span>
									</div>
								</div>

								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;생년월일</span>
										<select name="birthYear"
										class="birth form-control form-check-inline m-0 px-3"
										style="width: 30%;">
											<c:forEach var="i" begin="1960" end="2021">
												<option value="${i}">${i}</option>
											</c:forEach>
										</select>년 &nbsp;
										<select name="birthMonth"
										class="birth form-control form-check-inline m-0 px-3"
										style="width: 20%;">
											<c:forEach var="i" begin="01" end="12">
												<option value="${i}">${i}</option>
											</c:forEach>
										</select>월 &nbsp;
										<select name="birthDay"
										class="birth form-control form-check-inline m-0 px-3"
										style="width: 20%;">
											<c:forEach var="i" begin="01" end="31">
												<option value="${i}" >${i}</option>
											</c:forEach>
										</select>일&nbsp;
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;성별</span> 
										<input type="radio" class="form-check form-check-inline ml-1 " name="gender" value="M" checked>남 &nbsp; 
										<input type="radio" class="form-check form-check-inline ml-1" name="gender" value="F">여
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;핸드폰 번호</span>
										<div class="container p-0 m-0 border-none">
											<div class="row p-0 m-0">
												<div class="col-12 col-lg-9 p-0 m-0">
													<input type="text" id="phone" name="phone" onblur="phoneCheck();" maxlength="11" placeholder="-제외하고 입력" />
												</div>
												<div class="col-12 col-lg-3 p-0 m-0 text-center">
													<button type="button" id="sendSms" class="btn checkBtn m-0">인증하기</button>
												</div>
											</div>
												
											<div id="authBox" class="row p-0 mx-0 mt-3 mb-0" style="display:none;">
												<div id="authInputBox" class="col-12 col-lg-9 p-0 m-0">
													<input type="text" id="inputAuthNum" name="authNum" onblur="authNumCheck();" maxlength="11" placeholder="인증번호 입력" />
												</div>
												<div id="authBtnBox" class="col-12 col-lg-3 p-0 m-0 text-center">
													<button type="button" id="smsCheck" class="btn checkBtn m-0">인증완료</button>
												</div>
											</div>
										</div>
										<span id="phoneMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;주소</span>
										<div class="container p-0 m-0 border-none">
											<div class="row p-0 m-0">
												<div class="col-12 col-lg-9 p-0 m-0">
													<input type="text" id="addr_postCode" name="addrCode" readonly />
												</div>
												<div class="col-12 col-lg-3 p-0 m-0 text-center">
													<button type="button" class="btn checkBtn m-0" onclick="addrSearch();">주소찾기</button>
												</div>
											</div>
											<div class="row p-0 mx-0 my-2">
												<div class="col-12 border-0 p-0">
													<input type="text" id="addr_address" name="addr" readonly>
												</div>
											</div>
											<div class="row p-0 m-0">
												<div class="col-12 border-0 p-0">
													<input type="text" id="addr_detailAddress" name="detailAddr" onblur="addrCheck();" placeholder="상세주소 입력">
												</div>
											</div>
										</div>
										<span id="addrMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;이메일</span>
										<div class="container p-0 m-0 border-none">
											<div class="row p-0 m-0">
												<div class="col-12 col-lg-9 p-0 m-0">
													<input type="text" id="email" name="email" onblur="emailCheck();" placeholder="이메일 입력" />
												</div>
												<div class="col-12 col-lg-3 p-0 m-0 text-center">
													<button type="button" class="btn checkBtn m-0">중복확인</button>
												</div>
											</div>
										</div>
										<span id="emailMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-12 border-0 px-5">
										<span class="formTitle d-block">&nbsp;관심사</span>
										<div class="container p-0 m-0 border-none">
										
											<div class="row p-0 m-0 mb-3">
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="meet" name="hobby" value="meet"><label for="meet"></label>
												</div>
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="study" name="hobby" value="study"><label for="study"></label>
												</div>
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="game" name="hobby" value="game"><label for="game"></label>
												</div>
											</div>
											<div class="row p-0 m-0 my-3">
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="exercise" name="hobby" value="exercise"><label for="exercise"></label>
												</div>
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="area" name="hobby" value="area"><label for="area"></label>
												</div>
												<div class="col-4 p-0 m-0">
													<input type="checkbox" id="etc" name="hobby" value="etc"><label for="etc"></label>
												</div>
											</div>									
										</div>
										<span id="emailMessage" class="checkMessage"></span>
									</div>
								</div>
									
								<div class="row border-0 my-3">
									<div class="col-1"></div>
									<div class="col-5">																			
										<a class="btn w-100" href="/init/memberLogin.jsp">돌아가기</a>
									</div>
									<div class="col-5">																			
										<input type="submit" id="joinBtn" class="btn w-100" onclick="return check();" value="회원가입" />
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
	<div id="footer">
		<div class="col-12 my-3"></div>
	</div>
	<script type="text/javascript" src="/resources/js/memberJoin.js"></script>
</body>
</html>