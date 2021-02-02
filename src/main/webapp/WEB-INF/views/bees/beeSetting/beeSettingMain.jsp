<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
a:hover {
    color: #0056b3;
    text-decoration: none;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}
body {
    background: #F7F7F7;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    width: 100%;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 1rem;
    font-weight: 400;
    color: #6D6042;
}

main {
    display: block;
}
#content.midContent {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 100%;
}
#content {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
}
article, aside, footer, header, nav, section {
    display: block;
}
/* div {
    display: block;
} */
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
ul {
    display: block;
    list-style-type: none;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
h1 {
    display: block;
    font-size: 1em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
button, select {
    text-transform: none;
}
button, input {
    overflow: visible;
}
input, textarea {
    color: #6D6042;
    border-radius: 0;
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: textfield;
    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
label {
    cursor: default;
}
em {
    font-style: normal;
}
a {
    color: #6D6042;
    text-decoration: none;
}
/* 전체크기 */

.sSettingBand {
    position: relative;
    width: 100%;
}
.gContentCardShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgba(62,73,89,.1);
    box-shadow: 0 1.4px 1.3px 0 rgba(62,73,89,.1);
}
/* 밴드설정 */
.uHeaderWrap {
    position: relative;
    padding: 0 22px;
    border-bottom: 1px solid #f0f2f4;
}
.-h50 {
    height: 50px!important;
}
.uHeaderWrap.-h50 .header {
    height: 50px;
}
.uHeaderWrap .header {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    height: 61px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    word-break: break-word;
}
.uHeaderWrap.-h50 .header .title {
    font-size: 1rem;
}
/* 밴드설정내용 */
.sSettingBand .sSettingList {
    padding: 0 22px;
}
.sSettingBand .sSettingItem.-tLineNone, .sSettingBand .sSettingItem:first-child {
    border-top-width: 0;
}
.sSettingBand .sSettingItem {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    position: relative;
    width: 100%;
    min-height: 75px;
    border-top: 1px solid #f0f2f4;
    text-align: left;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
}
.sSettingBand .sSettingItem:before {
    content: '';
    min-height: inherit;
    font-size: 0;
    display: block;
}
/* 프로필 */
.sSettingBand .sSettingItem .itemProfile {
    margin-right: 13px;
}
.sSettingBand .sSettingItem .itemContent {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 0px;
    flex: 1 1;
    line-height: 1.3;
}
.sSettingBand .sSettingItem .label {
    display: block;
    word-wrap: break-word;
    word-break: break-all;
    font-size: 14px;
    font-weight: 400;
    color: #6D6042;
}
.sSettingBand .sSettingItem .label strong {
    font-weight: 600;
}
.sSettingBand .sSettingItem .subTxt {
    display: block;
    margin-top: 6px;
    font-size: 0.8rem;
    font-weight: 400;
    color: #6D6042;
}
.sSettingBand .sSettingItem .-point {
    color: #2ecc71!important;
}

/* 버튼 */
:not(button).uButton.-sizeS {
    line-height: 26px;
}
.sSettingBand .sSettingItem .itemSide {
    position: relative;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 92px;
    text-align: right;
    line-height: 1.3;
}
.uButton.-confirm2 {    
    background: #F7D078;
    color: #50401B;
}
.uButton.-sizeS {
    min-width: 60px;
    height: 25px;
    padding: 0 10px;
    font-size: 0.8rem;
    border-radius: 25px;
}
button.uButton {
    line-height: 1;
}
:not(button).uButton {
    overflow: hidden;
    display: inline-block;
    text-align: center;
    vertical-align: top;
    line-height: 32px;
}
.uButton {
    position: relative;
    min-width: 90px;
    height: 34px;
    padding: 0 15px;
    background: #474e60;
    border-radius: 1px;
    font-size: 0.9rem;
    color: #fff;
    font-weight: 500;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
/* 옆으로 밀기 */
.sSettingBand .sSettingItem .itemSide {
    position: relative;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 92px;
    text-align: right;
    line-height: 1.3;
}
[type=checkbox], [type=radio] {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
}

.uCheck {
    position: relative;
    display: inline-block;
    vertical-align: top;
}
.uCheck .checkInput {
    z-index: 10;
    position: absolute;
    left: 0;
    top: 0;
    width: 20px;
    height: 20px;
    opacity: 0;
    cursor: pointer;
}
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: checkbox;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}

.uCheck.-switch .checkLabel {
    min-width: 50px;
    min-height: 16px;
    /* padding-left: 29px; */
}
.uCheck .checkLabel {
    position: relative;
    display: block;
    padding-left: 20px;
    cursor: pointer;
}
.uCheck .checkLabel .shape {
    position: absolute;
    display: inline-block;
    left: 0;
    top: 50%;
}
.uCheck.-switch .checkLabel .shape {
    margin-left: 4px;
    width: 30px;
    height: 16px;
    margin-top: -7px;
}
.uCheck.-switch .checkInput:checked+.checkLabel .shape:before {
    background: #F7D078;
}
.uCheck.-switch .checkLabel .shape:before {
    background: #c8c8ca;
    border-radius: 26px;
}
.uCheck .checkLabel .shape:before {
    width: 100%;
    height: 100%;
}
.uCheck .checkLabel .shape:after, .uCheck .checkLabel .shape:before {
    display: block;
    -webkit-transition: all .2s ease;
    -o-transition: all .2s ease;
    transition: all .2s ease;
    content: '';
}
.uCheck {
    position: relative;
    display: inline-block;
    vertical-align: top;
}

.uCheck.-switch .checkInput:checked+.checkLabel .shape:after {
    left: 14px;
}
.uCheck.-switch .checkLabel .shape:after {
    left: 1px;
    top: 1px;
    width: 14px;
    height: 14px;
    background: #fff;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.34);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.34);
}
.uCheck .checkLabel .shape:after {
    position: absolute;
    border-radius: 50%;
    background-color: #2ecc71;
}
/* 회색배경 제목 */
.sSettingBand .sSettingTitle {
    font-size: 13px;
    font-weight: 600;
    color: #666;
    display: block;
    overflow: hidden;
    min-height: 20px;
    padding: 7px 22px;
    background: #f6f8f9;
}
/* 퍼센트 */
.sSettingBand .sSettingItem .itemSide .sideTxt {
    display: inline-block;
    line-height: 26px;
    vertical-align: top;
    font-size: 0.9rem;
    color: #6D6042;
}
.sSettingBand .sSettingItem .itemSide.-wAuto {
    width: auto;
}
/* 탈퇴하기 */
.uButton.-colorCaution, .uButton.-colorError {
    color: #50401B;
    border: 0px;
    background-color: #D3D3D3;
}
.uButton._btnDeleteBand {
	color: #FFFFFF;
    border: 0px;
    background-color: #DC1D2D;
}
.beesWithdraw{
text-align: inherit;
}
.header.beeHeaderColor{
   background-color: white;
}
</style>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion">
<section data-viewname="DGroupBandSettingHomeView" class="sSettingBand gContentCardShadow"><div class="uHeaderWrap -h50">
    <header class="header beeHeaderColor">
        <h1 class="title">비즈 설정</h1>
    </header>
</div>
<ul class="sSettingList">
    
    
        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">비즈 이름 및 커버</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubCoverUpdate.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li>      
        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">비즈 공개</span>
                <span class="subTxt">비공개</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubType.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li>
    <li class="sSettingItem" style="">
        <div class="itemContent">
            <span class="label">비즈 소개</span>
            <span class="subTxt">비즈 주소, 키워드, 소개글을 관리하세요.</span>
        </div>
        <div class="itemSide">    
            <a href="/beeSettingSubIntro.do" class="uButton -sizeS -confirm2">설정</a>
        </div>
    </li>
      <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">최대 멤버수</span>
                <span class="subTxt">무제한</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubMaxMember.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li>
    
</ul>



<h2 class="sSettingTitle"></h2>

<ul class="sSettingList">

        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">가입 조건 설정</span>
                <span class="subTxt">성별 제한없음, 나이 제한없음</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubJoinStandard.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li> 
        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">가입 신청 받기</span>             
            </div>
            <div class="itemSide">
                <label class="uCheck -switch">
                    <input type="checkbox" id="chkJoinMethod" class="checkInput _chkJoinMethod">
                    <span class="checkLabel">
                        <span class="shape"></span>
                    </span>
                </label>
            </div>
        </li> 
 		<li class="sSettingItem">
            <div class="itemContent">
                <span class="label">매니저 관리</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubJoinManager.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li>
     	<li class="sSettingItem">
            <div class="itemContent">
                <span class="label">멤버들의 권한 설정</span>
            </div>
            <div class="itemSide">
                <a href="/beeSettingSubMemberPermission.do" class="uButton -sizeS -confirm2">변경</a>
            </div>
        </li>
    	 <li class="sSettingItem">
	        <div class="itemContent">
	            <span class="label">멤버 탈퇴, 차단 설정</span>
	        </div>
	        <div class="itemSide">
	            <a href="/beeSettingSubMemberWithdraw.do" class="uButton -sizeS -confirm2">변경</a>
	        </div>
    	</li>
</ul>

<h2 class="sSettingTitle -hideTxt"><span class="gSrOnly"></span></h2>

<ul class="sSettingList">
    
        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">비즈 탈퇴</span>
            </div>
            <div class="itemSide" id="boxWithdraw" data-toggle="modal" data-target="#myModalWithdraw">
			  <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
			  <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
			<button type="button" class="uButton -sizeS -confirm2 -colorError _btnLeaveBand">탈퇴</button> 
            </div>
            <jsp:include page="modalWithdraw.jsp"/> 
        </li>  
        <li class="sSettingItem">
            <div class="itemContent">
                <span class="label">비즈 삭제</span>
            </div>
            <div class="itemSide" id="boxBeesDelete" data-toggle="modal" data-target="#myModalBeesDelete">
			  <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
			  <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
			<button type="button" class="uButton -sizeS -confirm2 _btnDeleteBand">삭제</button> 
            </div>
            <jsp:include page="modalBeesDelete.jsp"/>           
</ul></section></main>

<script>
	$(function(){
		$("#boxWithdraw").click(function(){
			$("#myModalWithdraw").modal();
		});
	}); 

	$(function(){
		$("#boxBeesDelete").click(function(){
			$("#myModalBeesDelete").modal();
		});
	});
	
</script> 
</body>
</html>