<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
/* 기본 */
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
figcaption, figure, main {
    display: block;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}
main {
    display: block;
}
body {
    background: #eef0f3;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
html {
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
/* sSettingBand gContentCardShadow */
.sSettingBand {
    position: relative;
}
div {
    display: block;
}
.gContentCardShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
    box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
}
/* uHeaderWrap -h50 */
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
    font-size: 16px;
}
.uHeaderWrap .header .title {
    font-size: 18px;
    font-weight: 600;
    color: #50401B;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
h1 {
    font-size: 2em;
    margin: .67em 0;
}
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.uTabNav {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    height: 44px;
    background: #fafbfc;
    font-size: 0;
}
/* btn _moveToWithdrawalMemberPage sf_color -on */
.uTabNav .btn.-on {
    padding-top: 1px;
    border-radius: 0px;
    border-bottom: 2px solid;
    font-weight: 600;
}
.uTabNav .btn:not(.-on) {
    color: #50401B!important;
}
.uTabNav .btn {
    z-index: 1;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    width: 50%;
    height: 100%;
    font-size: 14px;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    color: #50401B;
}
button {
    appearance: auto;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}

.skin9 .sf_afterColor:after, .skin9 .sf_beforeColor:before, .skin9 .sf_color, .skin9.sf_afterColor:after, .skin9.sf_beforeColor:before, .skin9.sf_color {
    color: #5471d8!important;
}
[type=reset], [type=submit], button, html [type=button] {
    -webkit-appearance: button;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
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
button, input, optgroup, select, textarea {
    margin: 0;
}
.skin9 .sf_afterColor:after, .skin9 .sf_bAfterColor:after, .skin9 .sf_bBeforeColor:before, .skin9 .sf_beforeColor:before, .skin9 .sf_color {
    color: #5471d8!important;
}
.uTabNav:after {
    position: absolute;
    display: block;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    background: #ebebeb;
    content: '';
}
/* leaveMemberList */
.sSettingBand .leaveMemberList {
    margin-top: 20px;
    padding: 0 22px;
}
/* summaryWrap _summaryWrap */
.sSettingBand .leaveMemberList .summaryWrap {
    margin: 0 -22px;
}
/* subTitle gMat18 _memberCount */
.sSettingBand .leaveMemberList .subTitle {
    padding-left: 22px;
}
.gMat18 {
    margin-top: 18px!important;
}
.gFw6 {
    font-weight: 600!important;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
/* sf_color _memberCountText */
.skin9 .sf_afterColor:after, .skin9 .sf_bAfterColor:after, .skin9 .sf_bBeforeColor:before, .skin9 .sf_beforeColor:before, .skin9 .sf_color {
    color: #5471d8!important;
}
/* listWrap */
.sSettingBand .leaveMemberList .listWrap {
    margin-top: 3px;
}
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
/* uFlexItem */
.cMemberList .uFlexItem:first-child {
    border-top-width: 0;
}

.cMemberList .uFlexItem {
    min-height: 88px;
    border-top: 1px solid #f5f5f5;
    padding: 15px 0;
}
.uFlexItem {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
/* _btnProfile uProfile -size50 */
.uFlexItem .uProfile {
    display: block;
    margin-right: 12px;
}

[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
.uProfile {
    display: inline-block;
    position: relative;
    vertical-align: top;
    font-size: 0;
}
a {
    color: #222;
    text-decoration: none;
}
a {
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.uProfile.-size50 .profileInner {
    width: 50px;
    height: 50px;
}

.uProfile .profileInner {
    display: block;
    overflow: hidden;
    position: relative;
    background-color: #ebebeb;
    border-radius: 50%;
    font-size: 0;
}
.uProfile.-size50 .profileInner:before {
    width: 25px;
    height: 25px;
    overflow: hidden;
    display: block;
    background-repeat: no-repeat;
    content: '';
    background-image: url(../images/spr_icons.png);
    background-position: -205px -490px;
    margin: -12px 0 0 -12px;
}
.uProfile .profileInner:before {
    position: absolute;
    left: 50%;
    top: 50%;
}
.uProfile .profileInner img {
    position: relative;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    vertical-align: top;
}
img {
    border-style: none;
}
.uFlexItem .body {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1 1;
    min-width: 0;
    line-height: 1.4;
    display: block;
}
.sSettingBand .uFlexItem .body .text {
    font-weight: 600;
}

.uFlexItem .body .-ellipsis, .uFlexItem .body .ellipsis {
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.uFlexItem .body .text {
    font-size: 14px;
    font-weight: 700;
    color: #50401B;
    margin-top: 3px;
}
.uFlexItem .etc {
    display: block;
    margin-left: 26px;
    text-align: right;
    font-size: 0;
}
/* _btnManageMemberWithdrawal uButton -sizeS -alert -reverse */
.uButton.-alert.-reverse {
    border: 1px solid #50401B;
    background: #fff;
    color: #50401B;
}
.uButton.-alert {
    background: #ff0f2d;
    color: #fff;
}
.uButton.-sizeS {
    min-width: 41px;
    height: 26px;
    padding: 0 10px;
    font-size: 12px;
}
button.uButton {
    line-height: 1;
}
[type=reset], [type=submit], button, html [type=button] {
    -webkit-appearance: button;
}
.uButton {
    position: relative;
    min-width: 90px;
    height: 34px;
    padding: 0 15px;
    background: #474e60;  
    font-size: 13px;
    color: #fff;
    font-weight: 500;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
button {
    border: 0;
    background-color: transparent;   
    cursor: pointer;
}
button, input, select, textarea {
    font-family: -apple-system,BlinkMacSystemFont,"Helvetica Neue",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Segoe UI Symbol","Android Emoji",EmojiSymbols;
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
button, input, optgroup, select, textarea {
    margin: 0;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
} 
button {
    border: 0;
    background-color: transparent;
    border-radius: 0px;
    cursor: pointer;
}
</style>
<body>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DBandMemberWithdrawalListView" class="sSettingBand gContentCardShadow">
<div class="uHeaderWrap -h50">
    <header class="header">
        <h1 class="title">멤버 탈퇴, 차단 설정</h1>
    </header>
</div>
<div class="uTabNav">
    <button type="button" class="btn _moveToWithdrawalMemberPage sf_color -on">멤버 목록</button>
    <button type="button" class="btn _moveToBlockMemberPage sf_color">차단 목록</button>
</div>
<div class="leaveMemberList">   
    <div class="summaryWrap _summaryWrap">
        <div class="subTitle gMat18 _memberCount">
            <h2 class="title gFw6">멤버 <span class="sf_color _memberCountText">1</span></h2>           
        </div>
    </div>
    <div class="listWrap">
        <ul class="cMemberList"><li data-viewname="DBandMemberWithdrawalItemView" class="uFlexItem">
<span class="body">
    <span class="text -ellipsis">안녕풍경</span>  
</span>

<span class="etc">
    <button type="button" class="_btnManageMemberWithdrawal uButton -sizeS -alert -reverse" style="display: inline-block;">탈퇴</button>
	<button type="button" class="_btnManageMemberWithdrawal uButton -sizeS -alert -reverse" style="display: inline-block;margin-left: 5px;">차단</button>
    <label for="uCheck67080144" class="uCheck -checkbox _toggleMemberWithdrawal" style="display: none;">
        <input type="checkbox" id="uCheck67080144" class="checkInput">
        <span class="checkLabel">
            <span class="shape sf_tAfterBg"></span>
            <span class="text"></span>
        </span>
    </label>
</span></li></ul>
        <p class="uEmpty _collectionEmptyMsgEl" style="height:545px;display: none;">
            <span class="gColorGr3 _collectionEmptyMsg"></span>
        </p>
    </div>
</div></div></main>
</body>
</html>