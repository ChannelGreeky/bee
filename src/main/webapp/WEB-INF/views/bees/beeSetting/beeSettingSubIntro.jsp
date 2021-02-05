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
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}
main {
    display: block;
}
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
/* sSettingBand gContentCardShadow */
.sSettingBand {
    position: relative;
    width: 100%;
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
article, aside, footer, header, nav, section {
    display: block;
}
div {
    display: block;
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
.uHeaderWrap.-h50 .header .title {
    font-size: 16px;
}

.uHeaderWrap .header .title {
    font-size: 18px;
    font-weight: 600;
    color: #50401B;
}
/* cBandIntro cIntroEditor */
.cBandIntro {
    padding: 18px 20px 23px;
    margin-bottom: 13px;
}
.cIntroEditor {
    padding-top: 17px;
}
/* textareaBox _introDescriptionWrapper */
.cBandIntro .textareaBox {
    position: relative;
    height: 220px;
    background-color: #fcfcfc;
    margin: 2px 0 25px;
}
.cBandIntro .textareaBox .uTextarea {
    height: 100%;
    padding: 0;
    line-height: 18px;
}
.uTextarea {
    min-height: 52px;
    padding: 8px 10px;
}
.uInput, .uInputComment, .uInputSearch, .uTextarea {
    position: relative;
    display: block;
    width: 100%;
    background: #fcfcfc;
}
.cBandIntro .textareaBox .uTextarea textarea {
    padding: 13px 15px;
}
.uInput>:not(.border), .uInputComment>:not(.border), .uInputSearch>:not(.border), .uTextarea>:not(.border) {
    z-index: 3;
}
.uInput textarea, .uInputComment textarea, .uInputSearch textarea, .uTextarea textarea {
    line-height: 20px;
}
.uInput input, .uInput textarea, .uInputComment input, .uInputComment textarea, .uInputSearch input, .uInputSearch textarea, .uTextarea input, .uTextarea textarea {
    position: relative;
    width: 100%;
    height: 100%;
    border: none;
    padding: 0;
    background: 0 0;
    font-size: 13px;
}
input, textarea {
    color: #50401B;
    border-radius: 0;
}
textarea {
    resize: none;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
textarea {
    overflow: auto;
    -webkit-overflow-scrolling: touch;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
.uInput button~.border, .uInput input~.border, .uInput textarea~.border, .uInputComment button~.border, .uInputComment input~.border, .uInputComment textarea~.border, .uInputSearch button~.border, .uInputSearch input~.border, .uInputSearch textarea~.border, .uTextarea button~.border, .uTextarea input~.border, .uTextarea textarea~.border {
    border: 1px solid #ebebeb;
}
.uInput .border, .uInput:after, .uInputComment .border, .uInputComment:after, .uInputSearch .border, .uInputSearch:after, .uTextarea .border, .uTextarea:after {
    z-index: 2;
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    border: 1px solid #ebebeb;
}
.uInput .border, .uInput:after, .uInputComment .border, .uInputComment:after, .uInputSearch .border, .uInputSearch:after, .uTextarea .border, .uTextarea:after {
    z-index: 2;
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    border: 1px solid #ebebeb;
}
.uInput:after, .uInputComment:after, .uInputSearch:after, .uTextarea:after {
    z-index: 1!important;
    content: '';
}
/* introOption */
.sSettingBand .cBandIntro .introOption {
    margin-top: 15px;
}

.cBandIntro .introOption {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-top: 14px;
}
.cIntroEditor .introOption {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-top: 15px;
}
/* introOptionBox gTaC gPat15 gPab17 */
.cBandIntro .introOption .introOptionBox {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}

.cIntroEditor .introOption .introOptionBox {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    overflow: hidden;
    font-size: 13px;
    font-weight: 400;
    color: #50401B;
}
.gPab17 {
    padding-bottom: 17px!important;
}
.gPat15 {
    padding-top: 15px!important;
}
.gTaC {
    text-align: center!important;
}
/* 버튼 */
.uButton.-confirm {
    background: #50401B;
    min-width: 100px;
    height: 35px;
    padding: 0 10px;
    font-size: 0.8rem;
    border-radius: 25px;
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
textarea::placeholder{
	color: #50401B;
}
/* .header.beeHeaderColor{
   background-color: white;
} */
</style>
<body>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DGroupBandEditIntroView" class="sSettingBand gContentCardShadow"><div class="uHeaderWrap -h50">
    <header class="header beeHeaderColor">
        <h1 class="title">비즈 소개</h1>
    </header>
</div>

<div class="cBandIntro cIntroEditor">

    <div class="textareaBox _introDescriptionWrapper">
        <div class="uTextarea">
            <textarea class="_introDescription" id="bandIntroduce" cols="30" rows="10" placeholder="비즈 소개말과 대표 사이트 등을 입력하세요." style="height:100%" maxlength="500"></textarea>
            <span class="border"></span>
        </div>
    </div>
   
    <div class="introOption">
        <div class="introOptionBox gTaC gPat15 gPab17">
            <button type="button" class="uButton -confirm _btnSaveIntroDescription">완료</button>
        </div>
    </div>
</div></div></main>
</body>
</html>