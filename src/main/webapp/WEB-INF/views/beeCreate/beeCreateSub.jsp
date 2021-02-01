<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style> 
/* 기본 */
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
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
/* content */
#container.fullWide #content {
    width: 100%;
    margin-left: 0;
}
#content {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding-bottom: 20px;
}
figcaption, figure, main {
    display: block;
}
main {
    display: block;
}
/* bandMake */
.bandMake {
    width: 840px;
    margin: 0 auto;
    padding-top: 58px;
}
article, aside, footer, header, nav, section {
    display: block;
}
form {
    display: block;
    margin-top: 0em;
}
/* fieldset */

button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
fieldset {
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
}
fieldset {
    border: 0;
}
/* gSrOnly */
.gSrOnly {
    overflow: hidden!important;
    position: absolute!important;
    height: 1px!important;
    width: 1px!important;
    clip: rect(1px,1px,1px,1px)!important;
}
/* legend */
legend {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    color: inherit;
    display: table;
    max-width: 100%;
    padding: 0;
    white-space: normal;
}
legend {
    display: block;
    padding-inline-start: 2px;
    padding-inline-end: 2px;
    border-width: initial;
    border-style: none;
    border-color: initial;
    border-image: initial;
}
.bandMake .makeCover {
    position: relative;
}
div {
    display: block;
}
/* title */
.bandMake .makeCover .title {
    margin-bottom: 11px;
    font-weight: 600;
}
.bandMake .title {
    font-size: 0.9rem;
    font-weight: 400;
    color: #50401B;
}
/* uInput -simpleLine inputBand */
.uInput {
    height: 36px;
    padding: 0 10px;
}
.uInput.-simpleLine {
    padding: 0;
    background: 0 0;
}
.uInput, .uInputComment, .uInputSearch, .uTextarea {
    position: relative;
    display: block;
    width: 100%;
    background: #fcfcfc;
}
.uInput.-simpleLine .border, .uInput.-simpleLine:after {
    border-width: 0 0 1px 0;
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
.bandMake .makeCover .inputBand {
    display: block;
    height: 54px;
    padding: 0;
}
label {
    cursor: default;
}
.uInput>:not(.border), .uInputComment>:not(.border), .uInputSearch>:not(.border), .uTextarea>:not(.border) {
    z-index: 3;
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
    color: #333;
    border-radius: 0;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
input[type="text" i] {
    padding: 1px 2px;
}
.uInput.-simpleLine .border, .uInput.-simpleLine:after {
    border-width: 0 0 1px 0;
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
.bandMake .makeCover .inputBand input {
    line-height: 54px;
    border-bottom: 1px solid #50401B;
    font-size: 30px;
    font-weight: 400;
    color: #50401B;
}
/* coverSelect */
.bandMake .makeCover .coverSelect {
    position: relative;
    margin-top: 30px;
    padding-left: 300px;
}
.bandMake .makeCover .coverSelect .mainCover {
    position: absolute;
    left: 0;
    top: 0;
    width: 300px;
    height: 225px;
}
.bandMake .makeCover .coverSelect .mainCover .cover {
    display: block;
    position: relative;
    font-size: 0;
}
.bandMake .makeCover .coverSelect .mainCover .cover:after {
    z-index: 10;
    position: absolute;
    display: block;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    border: 1px solid rgba(0,0,0,.05);
    content: '';
}
/* _selectedCover coverImg */
.bandMake .makeCover .coverSelect .mainCover .cover .coverImg {
    border-radius: 2px;
}
img {
    border-style: none;
}
.bandMake .makeCover .coverSelect .mainCover .cover:after {
    z-index: 10;
    position: absolute;
    display: block;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    border: 1px solid rgba(0,0,0,.05);
    content: '';
}
/* coverList */
.bandMake .makeCover .coverSelect .coverList {
    padding-left: 30px;
}
.bandMake .makeCover .coverSelect .coverList .list {
    margin-left: -10px;
    margin-top: 2px;
}

.bandMake .makeCover .coverSelect .coverList .list:after, .bandMake .makeCover .coverSelect .coverList .list:before {
    display: table;
    content: ' ';
}
.bandMake .makeCover .coverSelect .coverList .list:after {
    clear: both;
}
.bandMake .makeCover .coverSelect .coverList .list:after, .bandMake .makeCover .coverSelect .coverList .list:before {
    display: table;
    content: ' ';
}
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
.bandMake .makeCover .coverSelect .coverList .list li {
    float: left;
    margin-left: 10px;
    margin-top: 10px;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
/* changeCover _coverImageUploader js-fileapi-wrapper */
.bandMake .makeCover .coverSelect .coverList .list li .changeCover {
    overflow: hidden;
    display: block;
    position: relative;
    width: 120px;
    height: 90px;
    padding-top: 21px;
    text-align: center;
    background-color: #ebebeb;
    border-radius: 2px;
}
.bandMake .makeCover .coverSelect .coverList .list li .changeCover:before {
    width: 30px;
    height: 30px;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    content: '';
    background-image: url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons_f.png);
    background-position: -248px -96px;
}
.bandMake .makeCover .coverSelect .coverList .list li .changeCover span {
    display: block;
    margin-top: 1px;
    font-size: 11px;
    font-weight: 400;
    color: #777;
}
/* imageUpload */
.bandMake .makeCover .coverSelect .coverList .list li .changeCover .imageUpload {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 10;
    height: 100%;
    cursor: pointer;
    opacity: 0;
}
button, input {
    overflow: visible;
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
    font: 400 13.3333px Arial;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
input, textarea {
    color: #333;
    border-radius: 0;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
input[type="file" i] {
    appearance: initial;
    background-color: initial;
    cursor: default;
    align-items: baseline;
    color: inherit;
    text-overflow: ellipsis;
    white-space: pre;
    text-align: start !important;
    padding: initial;
    border: initial;
    overflow: hidden;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
a {
    color: #222;
    text-decoration: none;
}
/* 추가문구 */
/* makeNoticeArea */
.bandMake .makeCover .makeNoticeArea {
    margin-top: 12px;
}
div {
    display: block;
}
.bandMake .makeCover .makeNoticeText {
    font-size: 12px;
    font-weight: 400;
    color: #50401B;
}
/* makeType */
.bandMake .makeType {
    position: relative;
    margin-top: 48px;
}
.bandMake .makeType .title {
    margin-bottom: 19px;
    font-weight: 600;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
    font-weight: bold;
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
.bandMake .makeType .bandType {
    position: relative;
    background-color: #fff;
}
div {
    display: block;
}
/* bandTypeListWrap gBoxShadow */
.gBoxShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgba(62,73,89,.07);
    box-shadow: 0 1.4px 1.3px 0 rgba(62,73,89,.07);
}
.bandMake .makeType .bandType .bandTypeListWrap .typeList {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 28px 60px 24px 60px;
}
.bandMake .makeType .bandType .typeList {
    padding: 30px 0;
}
.bandMake .makeType .bandType .typeList:after, .bandMake .makeType .bandType .typeList:before {
    display: table;
    content: ' ';
}
.bandMake .makeType .bandType .typeList li:first-child {
    padding-left: 38px;
}
.bandMake .makeType .bandType .typeList li {
    float: left;
    padding-right: 21px;
    padding-left: 25px;
    width: 33.3333%;
}
.bandMake .makeType .bandType .bandTypeListWrap .typeList .typeListItem {
    width: 50%;
    float: none;
    padding: 0;
}
/* uCheck -checkbox */
.bandMake .makeType .bandType .typeList li .uCheck {
    word-break: break-word;
    word-wrap: break-word;
    white-space: normal;
}
.uCheck {
    position: relative;
    display: inline-block;
    vertical-align: top;
}
label {
    cursor: default;
}
/* checkInput */
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
[type=checkbox], [type=radio] {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
}
input, textarea {
    color: #333;
    border-radius: 0;
}

[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
/* checkLabel */
.uCheck.-checkbox .checkLabel {
    min-width: 20px;
    min-height: 20px;
}
.uCheck .checkLabel {
    position: relative;
    display: block;
    padding-left: 20px;
    cursor: pointer;
}
.bandMake .makeType .bandType .bandTypeListWrap .typeList .typeListItem .uCheck.-checkbox .checkLabel .shape {
    top: 0;
    margin-top: 0;
}
.bandMake .makeType .bandType .typeList li .uCheck {
    word-break: break-word;
    word-wrap: break-word;
    white-space: normal;
}
.uCheck.-checkbox .checkLabel .shape {
    width: 20px;
    height: 20px;
    margin-top: -10px;
}
.uCheck .checkLabel .shape {
    position: absolute;
    display: inline-block;
    left: 0;
    top: 50%;
}
.uCheck .checkLabel {
    position: relative;
    display: block;
    padding-left: 20px;
    cursor: pointer;
}
.uCheck.-checkbox .checkLabel .shape:after, .uCheck.-checkbox .checkLabel .shape:before {
    width: 20px;
    height: 20px;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    content: '';
    background-image: url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons_f.png);
    background-position: -280px -137px;
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
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.uCheck .checkLabel .shape:after {
    position: absolute;
    border-radius: 50%;
    background-color: #F7D078;
}
.uCheck.-checkbox .checkInput:checked+.checkLabel .shape:after {
    opacity: 1;
}
.uCheck.-checkbox .checkLabel .shape:after {
    left: 0;
    top: 0;
    opacity: 0;
    background-position: -280px -159px;
}
.bandMake .makeType .bandType .bandTypeListWrap .typeList .typeListItem .uCheck .text {
    margin-left: 12px;
    max-width: 100%;
}
.bandMake .makeType .bandType .typeList li .uCheck .text {
    margin-left: 14px;
}
.uCheck .checkLabel .text {
    overflow: hidden;
    display: inline-block;
    margin-left: 8px;
    vertical-align: middle;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
b, strong {
    font-weight: inherit;
}
.bandMake .makeType .bandType .bandTypeListWrap .typeList .typeListItem .uCheck .msg {
    margin-top: 4px;
}
.bandMake .makeType .bandType .typeList li .uCheck .msg {
    display: block;
    margin-top: 7px;
    line-height: 1.39;
    font-size: 13px;
    font-weight: 400;
    color: #666;
}
b, strong {
    font-weight: bolder;
}
/* btnFooter */
.bandMake .btnFooter {
    margin: 40px 0 58px;
    text-align: center;
}
.bandMake .btnFooter button {
    margin: 0 3px;
}
.uButton.-sizeXL {
    min-width: 140px;
    height: 40px;
    padding: 0 30px;
    font-size: 14px;
    font-weight: 600;
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
button {
    border: 0;
    background-color: transparent;
    border-radius: 0;
    cursor: pointer;
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
    appearance: button;
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
.uButton.-disabled:not(.-text), .uButton[data-status=off]:not(.-text), .uButton[disabled]:not(.-text) {
    background: #50401B;
    color: white;
}
.uButton.-disabled:after, .uButton[data-status=off]:after, .uButton[disabled]:after {
    display: none;
}
button {
    border: 0;
    background-color: transparent;
    border-radius: 0;
    cursor: pointer;
}
input::placeholder {
	color: #50401B;
}
.uButton.-cancel {
    border: 1px solid #50401B;
    background-color: #FFFFFF;
    color: #50401B;
}
</style>
<body>
<main id="content" data-uiselector="regionContent" role="main" class=""><section data-viewname="DGroupBandCreateView" class="bandMake"><form action="" class="_form">
    <fieldset>
        <legend class="gSrOnly">비즈 만들기</legend>
        <div class="makeCover">
            <h2 class="title">비즈 이름</h2>
            <div class="uInput -simpleLine inputBand">
                <label class="gSrOnly" for="ex_name">여행을 좋아하는 사람들</label>
                <input value="" type="text" class="_inputBandName" id="ex_name" maxlength="50" placeholder="비즈 이름을 입력해주세요">
            </div>
            

            <div class="coverSelect">
                <div class="mainCover">
                    <span class="cover">      
                        <img data-cover="http://coresos.phinf.naver.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg" src="https://coresos-phinf.pstatic.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg?type=cover_a640" class="_selectedCover coverImg" width="300" height="225" alt="">
        
                    </span>
                </div>
                <div class="coverList">
                    <div class="head">
                        <h3>커버 선택</h3>                 
                    </div>

                    <ul class="list">
                        <li>
                            <span class="changeCover _coverImageUploader js-fileapi-wrapper">
                                <span>사진 추가</span>
                                <input type="file" class="imageUpload" title="추가" accept="image/*" name="attachment">
                            </span>
                        </li>
        
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih0j0/d_26hUd018adm1qpknt8jkbj0y_5gztax.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0j0/d_26hUd018adm1qpknt8jkbj0y_5gztax.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih055/c_36hUd018admshigztpuo8vj_y71aad.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih055/c_36hUd018admshigztpuo8vj_y71aad.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih021/c_e6hUd018adm5qmds7qpu6g8_cqyzv.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih021/c_e6hUd018adm5qmds7qpu6g8_cqyzv.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih0gi/c_16hUd018adm7950giqjjo19_pdsycn.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0gi/c_16hUd018adm7950giqjjo19_pdsycn.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih0ig/c_b6hUd018admxh2okr38orea_cxmcw1.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0ig/c_b6hUd018admxh2okr38orea_cxmcw1.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih041/c_d6hUd018adm1vvx62az3rwlf_96o1bg.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih041/c_d6hUd018adm1vvx62az3rwlf_96o1bg.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" data-cover="http://coresos.phinf.naver.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg" class="_defaultCovers cover on">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>   
                    </ul>
                </div>
            </div> 
            <div class="makeNoticeArea">
                <p class="makeNoticeText">밴드이름과 사진은 개설 후에도 변경할 수 있어요</p>
            </div>         
        </div>
   <div class="makeType">
            <h2 class="title">비즈 공개</h2>
            <div class="bandType">
                <div class="bandTypeListWrap gBoxShadow">
                    <ul class="typeList ">
                        <li class="typeListItem">
                            <label for="secret" class="uCheck -checkbox">
                                <input type="radio" value="secret" name="bandOpenType" id="secret" class="checkInput">
                                <span class="checkLabel">
                                <span class="shape"></span>
                                <span class="text">
                                    <strong>비공개 비즈</strong>
                                    <span class="msg">비즈와 게시글이 공개되지 않습니다.<br> 초대를 통해서만 가입할 수 있습니다.</span>
                                </span>
                            </span>
                            </label>
                        </li>
                    <li class="typeListItem">
                        <label for="public" class="uCheck -checkbox">
                            <input type="radio" value="public" name="bandOpenType" id="public" class="checkInput">
                            <span class="checkLabel">
                                <span class="shape"></span>
                                <span class="text">
                                    <strong>공개 비즈</strong>
                                    <span class="msg">누구나 비즈를 검색해 찾을 수 있고,<br> 비즈 소개와 게시글을 볼 수 있습니다.</span>
                                </span>
                            </span>
                            </label>
                        </li>
                    </ul>
                    <!-- [D] 가입신청 받기 옵션 -->
                    <div class="allowedWrap _allowedWrap" style="display:none;">
                        <label for="checkJoinMethod" class="allowCheck uCheck -switch ">
                            <div class="text">
                                <span class="textTitle">가입 신청 받기</span>
                                <span class="textDesc">멤버 가입 시 리더의 승인이 필요합니다.</span>
                            </div>
                            <input type="checkbox" value="checkJoinMethod" name="checkJoinMethod" checked="checked" id="checkJoinMethod" class="checkInput">
                            <span class="checkLabel">
                                <span class="shape "></span>
                            </span>
                        </label>
                    </div>
                    <!--// 가입신청 받기 옵션 -->
                </div>

            </div>
        </div>
        <div class="btnFooter">
            <button type="button" class="_btnCancel uButton -sizeXL -cancel">취소</button>
            <button type="submit" class="_btnConfirm uButton -sizeXL -disabled">완료</button>
        </div>
    </fieldset>
</form></section></main>
</body>
</html>