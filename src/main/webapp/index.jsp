<%@page import="com.fourmeeting.bee.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Member m = (Member)session.getAttribute("member");
		if (m != null) {
	%>
		<h2>로그인 후 (세션에 Member값 들어있음)</h2>
		<a href="/memberLogout.do">로그아웃</a>
	<% } else {
	%>
		<h2>로그인 전</h2>
	<%}%>
	
	<a href="/beesUploadImage.do">사진첩</a>
	<a href="/adminNoticeBoard.do">관리자공지사항</a>
	<a href="/adminNoticeModification.do">관리자공지사항수정</a>
	<a href="/beesUploadFile.do">파일 모아보기</a>
	
	<h3><a href="/beesSchedule.do">일정</a></h3>
	<h3><a href="/beesMember.do">멤버</a></h3>
		
	<h1>마이페이지</h1>
	<a href="/myinfo.do">1. 내 정보(△)</a><br>
	<a href="/myboard.do">2-1. 내가 쓴 글()</a><br>
	<a href="/mycomment.do">2-2. 내가 쓴 댓글(O)</a><br>
	<a href="/myheart.do">3. 좋아요 누른 목록()</a><br>
	<a href="/mybeesJoinQnas.do">4-1. 가입 신청중인 비즈(O)</a><br>
	<a href="/myQnaHistory.do">5-1. 나의 문의 내역(O)</a><br>
	<a href="/myask.do">5-2. 1:1 문의하기(O)</a><br>
	<a href="/mynotice.do">6. 공지사항(O)</a><br>
	<br><hr>
	
	<h1>관리자페이지(테이블)</h1>
	<a href="/memberManagement.do">1. 회원관리</a><br>
	<a href="/beesManagement.do">2. 모임관리</a><br>
	<a href="/adminNotice.do">3. 공지사항</a><br>
	<a href="/adminQuestion.do">4. 1:1문의사항</a><br>
	<br><hr>
	
	
	<h1>페이지</h1>
	<a href="/feedSearchResult.do">피드 서치 페이지</a><br>
	<a href="/bestFeedPage.do">인기글</a><br>
	<a href="/myBeesPage.do">내 비즈 소식</a><br>
	<a href="/beesMainPage.do">비즈 메인 페이지</a><br>
	<a href="/myPageBoard.do">내가 쓴 게시글</a><br>
	<a href="/myPageHeart.do">내가 좋아요 누른 페이지</a><br>
	<a href="/beesSearchResult.do">비즈서치페이지</a>
	
	<a href="/bk.do">보</a>
	
	<hr>
	
	<h1>비즈 생성</h1>
		<a href="/beeCreateMain.do">비즈만들기 메인</a><br>
		<a href="/beeCreateSub.do">비즈커버설정</a><br>
	<h1>비즈 설정</h1>
		<a href="/beeSettingMain.do">비즈설정 메인</a><br>
		
		<a href="/beeSettingSubCoverUpdate.do">비즈 커버  설정 상세</a><br>
		<a href="/beeSettingSubType.do">비즈 공개 설정 상세</a><br>
		<a href="/beeSettingSubIntro.do">비즈 소개 설정 상세</a><br>
		<a href="/beeSettingSubMaxMember.do">비즈 최대인원수 설정 상세</a><br>
		<a href="/beeSettingSubJoinStandard.do">비즈 가입 조건 상세</a><br>
		<a href="/beeSettingSubJoinManager.do">비즈 매니저 추가 상세</a><br>
		<a href="/beeSettingSubMemberPermission.do">비즈 멤버 권한 설정 상세</a><br>
		<a href="/beeSettingSubMemberWithdraw.do">비즈 멤버 탈퇴 차단 설정 멤버리스트</a><br>
		<a href="/beeSettingSubMemberWithdrawDo.do">비즈 멤버 탈퇴 차단 설정 멤버차단</a><br>
	
	
</body>
</html>