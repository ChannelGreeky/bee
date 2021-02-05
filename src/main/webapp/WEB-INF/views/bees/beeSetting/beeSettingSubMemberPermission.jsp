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
article, aside, footer, header, nav, section {
    display: block;
}
header {
    display: block;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 1rem;
    font-weight: 400;
    color: #6D6042;
}
body {
    background: #F7F7F7;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    width: 100%;
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
    border-radius: 0;
    cursor: pointer;
}
select {
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
    appearance: menulist;
    box-sizing: border-box;
    align-items: center;
    white-space: pre;
    -webkit-rtl-ordering: logical;
    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
    cursor: default;
    margin: 0em;
    font: 400 13.3333px Arial;
    border-radius: 0px;
    border-width: 1px;
    border-style: solid;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}


.sSettingBand {
    position: relative;
}

.gContentCardShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
    box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
}
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

.sSettingBand .sSettingList {
    padding: 0 22px;
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
/* sSettingItem */
.sSettingBand .sSettingItem {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    position: relative;
    width: 100%;
    min-height: 65px;
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
sSettingBand .sSettingItem .label {
    display: block;
    word-wrap: break-word;
    word-break: break-all;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
.sSettingBand .sSettingItem .itemContent {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 0px;
    flex: 1 1;
    line-height: 1.3;
}
/* itemSide -wAuto */
div {
    display: block;
}
.sSettingBand .sSettingItem .itemSide.-wAuto {
    width: auto;
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
/* uSelect -bg */
.uSelect.-bg {
    background: #fcfcfc;
}
.uSelect {
    position: relative;
    display: inline-block;
    height: 36px;
    border: solid 1px #ebebeb;
    vertical-align: top;
}
.uSelect:before {
    z-index: 1;
    vertical-align: top;
    position: absolute;
    right: 9px;
    top: 50%;
    margin-top: -4px;
    width: 12px;
    height: 8px;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    content: '';
    background-image: url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons.png);
    background-position: -559px -535px;
}
/* gColorBk4 _selectRole */
.uSelect .select, .uSelect input, .uSelect select {
    position: relative;
    z-index: 2;
    width: 100%;
    height: 100%;
    padding: 0 33px 0 10px;
    border: 0;
    border-radius: 0;
    background: 0 0;
    text-align: left;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    font-size: 12px;
    font-weight: 400;
    color: #50401B;
}
.gColorBk4 {
    color: #50401B!important;
}
button, select {
    text-transform: none;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
select:not(:-internal-list-box) {
    overflow: visible !important;
}

/* sSettingTitle -hideTxt */
.sSettingBand .sSettingTitle.-hideTxt {
    min-height: 20px;
    margin: 0px;
}
.sSettingBand .sSettingTitle {
    font-size: 13px;
    font-weight: 600;
    color: #50401B;
    display: block;
    overflow: hidden;
    min-height: 34px;
    padding: 7px 22px;
    border: 1px solid #f0f2f4;
    border-width: 1px 0;
    background: #f6f8f9;
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
.gSrOnly {
    overflow: hidden!important;
    position: absolute!important;
    height: 1px!important;
    width: 1px!important;
    clip: rect(1px,1px,1px,1px)!important;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
/* subTxt */
.sSettingBand .sSettingItem .subTxt {
    display: block;
    margin-top: 6px;
    font-size: 12px;
    font-weight: 400;
    color: #50401B;
}
/* btnFooter -lrSpace */
.sSettingBand .btnFooter.-lrSpace {
    margin: 0 22px;
}

.sSettingBand .btnFooter {
    padding: 30px 0;
    border-top: 1px solid #f0f2f4;
    text-align: center;
}
/* uButton -sizeL -confirm _btnConfirm */
.uButton.-confirm {
    background: #50401B;
}
.uButton.-sizeL {
    min-width: 100px;
    height: 35px;
    padding: 0 10px;
    font-size: 0.8rem;
    border-radius: 25px;
    font-weight: 400;
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
    border-radius: 1px;
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
.sSettingBand .sSettingItem.-tLineNone, .sSettingBand .sSettingItem:first-child {
    border-top-width: 0;
}
.sSettingBand .sSettingItem .label {
    display: block;
    word-wrap: break-word;
    word-break: break-all;
    font-size: 14px;
    font-weight: 400;
    color: #6D6042;
}
/* .header.beeHeaderColor{
   background-color: white;
} */
li{
   list-style: none;
}
</style>
<body>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DGroupBandMemberPermissionView" class="sSettingBand gContentCardShadow"><div class="uHeaderWrap -h50">
    <header class="header beeHeaderColor">
        <h1 class="title">멤버들의 권한 설정</h1>
    </header>
</div>

<ul class="sSettingList">
      
    <li class="sSettingItem topBorderNo">
        <div class="itemContent">
            <span class="label">공지글 등록</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set1" class="gColorBk4 _selectRole" data-key="edit_notice_roles">
                    <option value="leader,coleader,member">모든 멤버</option>
                    <option value="leader,coleader" selected="">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">글쓰기</span>
            <span class="subTxt">모든 멤버, 바로 등록</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set5" class="gColorBk4 _selectRole" data-key="comment_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">댓글 쓰기</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set5" class="gColorBk4 _selectRole" data-key="comment_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
   
    
</ul>

<h2 class="sSettingTitle -hideTxt"><span class="gSrOnly">멤버들의 권한 설정</span></h2>

<ul class="sSettingList">
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">일정 등록</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set9" class="gColorBk4 _selectRole" data-key="register_schedule_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">일정 수정</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set10" class="gColorBk4 _selectRole" data-key="modify_schedule_roles">
                    <option value="leader,coleader" selected="">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
</ul>


<h2 class="sSettingTitle -hideTxt"><span class="gSrOnly">멤버들의 권한 설정</span></h2>

<ul class="sSettingList">
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">채팅 초대하기</span>
            <span class="subTxt">채팅방에 멤버를 초대해 대화할 수 있어요.</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set12" class="gColorBk4 _selectRole" data-key="invite_chat_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem _chatToLeaderWrapper" style="display: none;">
        <div class="itemContent">
            <label for="chkChatToLeader" class="label">리더에게 채팅 보내기</label>
            <span class="subTxt">채팅 초대 권한이 없어도 리더나 공동리더에게는<br>1:1 채팅을 보낼 수 있도록 설정할 수 있어요.</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                
                <select id="chkChatToLeader" class="gColorBk4 _chkChatToManager">
                    <option value="leader">리더만</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="" selected="">비허용</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">공개채팅방 만들기</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set13" class="gColorBk4 _selectRole" data-key="create_open_chat_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">공개채팅방 삭제</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set14" class="gColorBk4 _selectRole" data-key="delete_open_chat_roles">
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader" selected="">리더만</option>
                </select>
            </div>
        </div>
    </li>
</ul>


<h2 class="sSettingTitle -hideTxt"><span class="gSrOnly">멤버들의 권한 설정</span></h2>

<ul class="sSettingList">
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">멤버 초대</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set16" class="gColorBk4 _selectRole" data-key="invite_member_roles">
                    <option value="leader,coleader,member" selected="">모든 멤버</option>
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">멤버 가입신청 수락</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set17" class="gColorBk4 _selectRole" data-key="accept_application_roles">
                    <option value="leader,coleader,member">모든 멤버</option>
                    <option value="leader,coleader" selected="">리더와 공동리더</option>
                    <option value="leader">리더만</option>
                </select>
            </div>
        </div>
    </li>
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">가입방법, 가입조건 설정</span>
            <span class="subTxt">가입신청 사용 여부와 가입질문, 가입조건을 설정 할 수 있습니다.</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set20" class="gColorBk4 _selectRole" data-key="manage_join_roles">
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader" selected="">리더만</option>
                </select>
            </div>
        </div>
    </li>
</ul>

<h2 class="sSettingTitle -hideTxt"><span class="gSrOnly">멤버들의 권한 설정</span></h2>

<ul class="sSettingList">
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">다른 멤버의 게시물, 댓글 삭제</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set21" class="gColorBk4 _selectRole" data-key="delete_contents_roles">
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader" selected="">리더만</option>
                </select>
            </div>
        </div>
    </li>
    
    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">멤버 탈퇴, 차단 설정</span>
        </div>
        <div class="itemSide -wAuto">
            <div class="uSelect -bg">
                <select id="set22" class="gColorBk4 _selectRole" data-key="ban_member_roles">
                    <option value="leader,coleader">리더와 공동리더</option>
                    <option value="leader" selected="">리더만</option>
                </select>
            </div>
        </div>
    </li>
</ul>
<div class="btnFooter -lrSpace">
    <button type="button" class="uButton -sizeL -confirm _btnConfirm">저장</button>
</div></div></main>
</body>
</html>