<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
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
}
main {
    display: block;
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
html {
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
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
.sSettingBand .sSettingItem .itemContent {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 0px;
    flex: 1 1;
    line-height: 1.3;
}
div {
    display: block;
}
.sSettingBand .sSettingItem .label {
    display: block;
    word-wrap: break-word;
    word-break: break-all;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}
label {
    cursor: default;
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
/* _selectGender gColorBk4 */
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
/* uTableList -wAuto -inline gMal20 */
.uTableList.-wAuto {
    width: auto;
    table-layout: auto;
}
.uTableList.-inline {
    display: inline-table;
}
.uTableList {
    display: table;
    width: 100%;
    table-layout: fixed;
    border-collapse: collapse;
}
.gMal20 {
    margin-left: 20px!important;
}
/* cell gColorBk4 */
.uTableList .cell {
    display: table-cell;
    vertical-align: middle;
    text-align: left;
}
.gColorBk4 {
    color: #50401B!important;
}
label {
    cursor: default;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.gPal10 {
    padding-left: 10px!important;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
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
/* cell gPal16 gPar16 gColorBk4 */
.gPal16 {
    padding-left: 16px!important;
}
.gPar16 {
    padding-right: 16px!important;
}
.gColorBk4 {
    color: #50401B!important;
}
/* 버튼 */
.sSettingBand .btnFooter {
    padding: 30px 0;
    border-top: 1px solid #f0f2f4;
    text-align: center;
}
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
.header.beeHeaderColor{
   background-color: white;
}
li{
   list-style: none;
}
</style>
<body>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DBandJoinConditionView" class="sSettingBand gContentCardShadow">
<div class="uHeaderWrap -h50">
    <header class="header beeHeaderColor">
        <h1 class="title">가입 조건 설정</h1>
    </header>
</div>

<ul class="sSettingList">

    <li class="sSettingItem">
        <div class="itemContent">
		    <label for="gender" class="label">성별</label>
        </div>
        <div class="itemSide -wAuto">
            <span class="uSelect -bg" style="min-width:105px">
                <select id="gender" class="_selectGender gColorBk4">
                    <option value="none">제한없음</option>
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                </select>
            </span>
        </div>
    </li>

    <li class="sSettingItem">
        <div class="itemContent">
            <span class="label">나이</span>
        </div>
        <div class="itemSide -wAuto">
            <span class="uTableList -wAuto -inline gMal20">
                <label for="maxAge" class="cell gColorBk4">최소나이</label>
                <span class="cell gPal10">
                    <span class="uSelect -bg" style="min-width:77px">
                        <select id="maxAge" class="_selectMaxYear gColorBk4">
                            <option value="none">제한없음</option>
                                    
                            <option value="2021">2021년생</option>
                                    
                            <option value="2020">2020년생</option>
                                    
                            <option value="2019">2019년생</option>
                                    
                            <option value="2018">2018년생</option>
                                    
                            <option value="2017">2017년생</option>
                                    
                            <option value="2016">2016년생</option>
                                    
                            <option value="2015">2015년생</option>
                                    
                            <option value="2014">2014년생</option>
                                    
                            <option value="2013">2013년생</option>
                                    
                            <option value="2012">2012년생</option>
                                    
                            <option value="2011">2011년생</option>
                                    
                            <option value="2010">2010년생</option>
                                    
                            <option value="2009">2009년생</option>
                                    
                            <option value="2008">2008년생</option>
                                    
                            <option value="2007">2007년생</option>
                                    
                            <option value="2006">2006년생</option>
                                    
                            <option value="2005">2005년생</option>
                                    
                            <option value="2004">2004년생</option>
                                    
                            <option value="2003">2003년생</option>
                                    
                            <option value="2002">2002년생</option>
                                    
                            <option value="2001">2001년생</option>
                                    
                            <option value="2000">2000년생</option>
                                    
                            <option value="1999">1999년생</option>
                                    
                            <option value="1998">1998년생</option>
                                    
                            <option value="1997">1997년생</option>
                                    
                            <option value="1996">1996년생</option>
                                    
                            <option value="1995">1995년생</option>
                                    
                            <option value="1994">1994년생</option>
                                    
                            <option value="1993">1993년생</option>
                                    
                            <option value="1992">1992년생</option>
                                    
                            <option value="1991">1991년생</option>
                                    
                            <option value="1990">1990년생</option>
                                    
                            <option value="1989">1989년생</option>
                                    
                            <option value="1988">1988년생</option>
                                    
                            <option value="1987">1987년생</option>
                                    
                            <option value="1986">1986년생</option>
                                    
                            <option value="1985">1985년생</option>
                                    
                            <option value="1984">1984년생</option>
                                    
                            <option value="1983">1983년생</option>
                                    
                            <option value="1982">1982년생</option>
                                    
                            <option value="1981">1981년생</option>
                                    
                            <option value="1980">1980년생</option>
                                    
                            <option value="1979">1979년생</option>
                                    
                            <option value="1978">1978년생</option>
                                    
                            <option value="1977">1977년생</option>
                                    
                            <option value="1976">1976년생</option>
                                    
                            <option value="1975">1975년생</option>
                                    
                            <option value="1974">1974년생</option>
                                    
                            <option value="1973">1973년생</option>
                                    
                            <option value="1972">1972년생</option>
                                    
                            <option value="1971">1971년생</option>
                                    
                            <option value="1970">1970년생</option>
                                    
                            <option value="1969">1969년생</option>
                                    
                            <option value="1968">1968년생</option>
                                    
                            <option value="1967">1967년생</option>
                                    
                            <option value="1966">1966년생</option>
                                    
                            <option value="1965">1965년생</option>
                                    
                            <option value="1964">1964년생</option>
                                    
                            <option value="1963">1963년생</option>
                                    
                            <option value="1962">1962년생</option>
                                    
                            <option value="1961">1961년생</option>
                                    
                            <option value="1960">1960년생</option>
                                    
                            <option value="1959">1959년생</option>
                                    
                            <option value="1958">1958년생</option>
                                    
                            <option value="1957">1957년생</option>
                                    
                            <option value="1956">1956년생</option>
                                    
                            <option value="1955">1955년생</option>
                                    
                            <option value="1954">1954년생</option>
                                    
                            <option value="1953">1953년생</option>
                                    
                            <option value="1952">1952년생</option>
                                    
                            <option value="1951">1951년생</option>
                                    
                            <option value="1950">1950년생</option>
                                    
                            <option value="1949">1949년생</option>
                                    
                            <option value="1948">1948년생</option>
                                    
                            <option value="1947">1947년생</option>
                                    
                            <option value="1946">1946년생</option>
                                    
                            <option value="1945">1945년생</option>
                                    
                            <option value="1944">1944년생</option>
                                    
                            <option value="1943">1943년생</option>
                                    
                            <option value="1942">1942년생</option>
                                    
                            <option value="1941">1941년생</option>
                                    
                            <option value="1940">1940년생</option>
                                    
                            <option value="1939">1939년생</option>
                                    
                            <option value="1938">1938년생</option>
                                    
                            <option value="1937">1937년생</option>
                                    
                            <option value="1936">1936년생</option>
                                    
                            <option value="1935">1935년생</option>
                                    
                            <option value="1934">1934년생</option>
                                    
                            <option value="1933">1933년생</option>
                                    
                            <option value="1932">1932년생</option>
                                    
                            <option value="1931">1931년생</option>
                                    
                            <option value="1930">1930년생</option>
                                    
                            <option value="1929">1929년생</option>
                                    
                            <option value="1928">1928년생</option>
                                    
                            <option value="1927">1927년생</option>
                                    
                            <option value="1926">1926년생</option>
                                    
                            <option value="1925">1925년생</option>
                                    
                            <option value="1924">1924년생</option>
                                    
                            <option value="1923">1923년생</option>
                                    
                            <option value="1922">1922년생</option>
                                    
                            <option value="1921">1921년생</option>
                                    
                        </select>
                    </span>
                </span>

                <span class="cell gPal16 gPar16 gColorBk4">-</span>

                <label for="minAge" class="cell gColorBk4">최대나이</label>
                <span class="cell gPal10">
                    <span class="uSelect -bg" style="min-width:77px">
                        <select id="minAge" class="_selectMinYear gColorBk4">
                            <option value="none">제한없음</option>
                                    
                            <option value="2021">2021년생</option>
                                    
                            <option value="2020">2020년생</option>
                                    
                            <option value="2019">2019년생</option>
                                    
                            <option value="2018">2018년생</option>
                                    
                            <option value="2017">2017년생</option>
                                    
                            <option value="2016">2016년생</option>
                                    
                            <option value="2015">2015년생</option>
                                    
                            <option value="2014">2014년생</option>
                                    
                            <option value="2013">2013년생</option>
                                    
                            <option value="2012">2012년생</option>
                                    
                            <option value="2011">2011년생</option>
                                    
                            <option value="2010">2010년생</option>
                                    
                            <option value="2009">2009년생</option>
                                    
                            <option value="2008">2008년생</option>
                                    
                            <option value="2007">2007년생</option>
                                    
                            <option value="2006">2006년생</option>
                                    
                            <option value="2005">2005년생</option>
                                    
                            <option value="2004">2004년생</option>
                                    
                            <option value="2003">2003년생</option>
                                    
                            <option value="2002">2002년생</option>
                                    
                            <option value="2001">2001년생</option>
                                    
                            <option value="2000">2000년생</option>
                                    
                            <option value="1999">1999년생</option>
                                    
                            <option value="1998">1998년생</option>
                                    
                            <option value="1997">1997년생</option>
                                    
                            <option value="1996">1996년생</option>
                                    
                            <option value="1995">1995년생</option>
                                    
                            <option value="1994">1994년생</option>
                                    
                            <option value="1993">1993년생</option>
                                    
                            <option value="1992">1992년생</option>
                                    
                            <option value="1991">1991년생</option>
                                    
                            <option value="1990">1990년생</option>
                                    
                            <option value="1989">1989년생</option>
                                    
                            <option value="1988">1988년생</option>
                                    
                            <option value="1987">1987년생</option>
                                    
                            <option value="1986">1986년생</option>
                                    
                            <option value="1985">1985년생</option>
                                    
                            <option value="1984">1984년생</option>
                                    
                            <option value="1983">1983년생</option>
                                    
                            <option value="1982">1982년생</option>
                                    
                            <option value="1981">1981년생</option>
                                    
                            <option value="1980">1980년생</option>
                                    
                            <option value="1979">1979년생</option>
                                    
                            <option value="1978">1978년생</option>
                                    
                            <option value="1977">1977년생</option>
                                    
                            <option value="1976">1976년생</option>
                                    
                            <option value="1975">1975년생</option>
                                    
                            <option value="1974">1974년생</option>
                                    
                            <option value="1973">1973년생</option>
                                    
                            <option value="1972">1972년생</option>
                                    
                            <option value="1971">1971년생</option>
                                    
                            <option value="1970">1970년생</option>
                                    
                            <option value="1969">1969년생</option>
                                    
                            <option value="1968">1968년생</option>
                                    
                            <option value="1967">1967년생</option>
                                    
                            <option value="1966">1966년생</option>
                                    
                            <option value="1965">1965년생</option>
                                    
                            <option value="1964">1964년생</option>
                                    
                            <option value="1963">1963년생</option>
                                    
                            <option value="1962">1962년생</option>
                                    
                            <option value="1961">1961년생</option>
                                    
                            <option value="1960">1960년생</option>
                                    
                            <option value="1959">1959년생</option>
                                    
                            <option value="1958">1958년생</option>
                                    
                            <option value="1957">1957년생</option>
                                    
                            <option value="1956">1956년생</option>
                                    
                            <option value="1955">1955년생</option>
                                    
                            <option value="1954">1954년생</option>
                                    
                            <option value="1953">1953년생</option>
                                    
                            <option value="1952">1952년생</option>
                                    
                            <option value="1951">1951년생</option>
                                    
                            <option value="1950">1950년생</option>
                                    
                            <option value="1949">1949년생</option>
                                    
                            <option value="1948">1948년생</option>
                                    
                            <option value="1947">1947년생</option>
                                    
                            <option value="1946">1946년생</option>
                                    
                            <option value="1945">1945년생</option>
                                    
                            <option value="1944">1944년생</option>
                                    
                            <option value="1943">1943년생</option>
                                    
                            <option value="1942">1942년생</option>
                                    
                            <option value="1941">1941년생</option>
                                    
                            <option value="1940">1940년생</option>
                                    
                            <option value="1939">1939년생</option>
                                    
                            <option value="1938">1938년생</option>
                                    
                            <option value="1937">1937년생</option>
                                    
                            <option value="1936">1936년생</option>
                                    
                            <option value="1935">1935년생</option>
                                    
                            <option value="1934">1934년생</option>
                                    
                            <option value="1933">1933년생</option>
                                    
                            <option value="1932">1932년생</option>
                                    
                            <option value="1931">1931년생</option>
                                    
                            <option value="1930">1930년생</option>
                                    
                            <option value="1929">1929년생</option>
                                    
                            <option value="1928">1928년생</option>
                                    
                            <option value="1927">1927년생</option>
                                    
                            <option value="1926">1926년생</option>
                                    
                            <option value="1925">1925년생</option>
                                    
                            <option value="1924">1924년생</option>
                                    
                            <option value="1923">1923년생</option>
                                    
                            <option value="1922">1922년생</option>
                                    
                            <option value="1921">1921년생</option>
                                    
                        </select>
                    </span>
                </span>
            </span>
        </div>
    </li>
   

</ul>
<div class="btnFooter">
    <button type="button" class="_btnConfirmJoinType uButton -sizeL -confirm">저장</button>
</div></div></main>
</body>
</html>