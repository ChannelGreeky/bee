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
div {
    display: block;
}
/* sSettingBand gContentCardShadow */
.sSettingBand {
    position: relative;
}
.gContentCardShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
    box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
}
article, aside, footer, header, nav, section {
    display: block;
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
.uHeaderWrap.-h50 .header .title {
    font-size: 16px;
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
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
:-webkit-any(article, aside, nav, section) h1 {
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
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
.uHeaderWrap .header .title {
    font-size: 18px;
    font-weight: 600;
    color: #50401B;
}
/* sSettingList */
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
/* itemContent */
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
    color: #50401B;
}
/* itemSide -wAuto */
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
/* gColorBk4 _selectUnlimited */
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
    color: #666;
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
/* attention -tLine */
.sSettingBand .attention.-tLine {
    border-top: 1px solid #f0f2f4;
    border-bottom: 1px solid #f0f2f4;
}
.sSettingBand .attention {
    padding: 17px 22px;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.sSettingBand .attention .title {
    font-size: 13px;
    font-weight: 400;
    color: #50401B;
    margin-top: 0px;
}
.sSettingBand .attention .noticeArea {
    margin-top: 8px;
}
.sSettingBand .attention .noticeText {
    font-size: 12px;
    font-weight: 400;
    color: #50401B;
    position: relative;
    padding-left: 8px;
    line-height: 1.42;
}
/* 버튼 */
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
</style>
<body>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DBandQuotaUnfixedSetView"><section class="sSettingBand gContentCardShadow">
    <div class="uHeaderWrap -h50">
        <header class="header">
            <h1 class="title">최대 멤버수</h1>
        </header>
    </div>
    <div>     
        <ul class="sSettingList">
            <li class="sSettingItem">
                <div class="itemContent">
                    <label for="bandMemberType" class="label">최대 멤버수</label>
                </div>
                <div class="itemSide -wAuto">
                    <div class="uSelect -bg">
                        <select id="bandMemberType" class="gColorBk4 _selectUnlimited">
                            <option value="false" selected="">1000명까지</option>
                            <option value="true">무제한(빅밴드)</option>
                        </select>
                    </div>
                </div>
            </li>
        </ul>
        <div class="attention -tLine">
            <h3 class="title">꼭 읽어보세요!</h3>
            <div class="noticeArea">
                <p class="noticeText">멤버수 설정은 하루에 한번만 변경할 수 있습니다.</p>               
            </div>
        </div>
        <div class="introOption">
        <div class="introOptionBox gTaC gPat15 gPab17">
            <button type="button" class="uButton -confirm _btnSaveIntroDescription">저장</button>
        </div>
    </div>
    </div>
</section>
</div></main>
</body>
</html>