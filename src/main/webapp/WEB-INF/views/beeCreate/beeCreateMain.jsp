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
}
body {
    background: #eef0f3;
    font-family: -apple-system,BlinkMacSystemFont,"Helvetica Neue",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Segoe UI Symbol","Android Emoji",EmojiSymbols;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    color: #222;
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
/* main */
figcaption, figure, main {
    display: block;
}
main {
    display: block;
}
/* bandMakeUsecaseArea */
.bandMakeUsecaseArea {
    width: 440px;
    margin: 0 auto;
    text-align: center;
}
.gMat50 {
    margin-top: 50px!important;
}
/* title */
.bandMakeUsecaseArea .title {
    font-size: 20px;
    font-weight: 600;
    color: #444;
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
/* titleDesc gMat3 */
.bandMakeUsecaseArea .titleDesc {
    font-size: 15px;
    color: #666;
}
.gMat3 {
    margin-top: 3px!important;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
/* usecaseList */
.bandMakeUsecaseArea .usecaseList {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-flow: wrap;
    flex-flow: wrap;
    margin-top: 4px;
}
ol, ul {
    list-style: none;
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
/* usecaseItem */
.bandMakeUsecaseArea .usecaseItem {
    position: relative;
    width: 130px;
    min-height: 140px;
    margin: 15px 8px 0;
    -webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,.08), 0 0 1px 0 rgba(0,0,0,.2);
    box-shadow: 0 1px 2px 0 rgba(0,0,0,.08), 0 0 1px 0 rgba(0,0,0,.2);
    background-color: #fff;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
/* usecaseItemLink _createType */
.bandMakeUsecaseArea .usecaseItemLink {
    display: block;
    height: 100%;
    padding-bottom: 21px;
    line-height: 1.29;
}
a {
    color: #222;
    text-decoration: none;
}
a {
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
/* iconUscase */
.bandMakeUsecaseArea .usecaseItem .iconUscase {
    display: block;
}
.bandMakeUsecaseArea .usecaseItem .iconUscase img {
    width: 100%;
}
img {
    border-style: none;
}

.bandMakeUsecaseArea .usecaseItem .uscaseName {
    display: block;
    padding: 0 16px;
}
em {
    font-style: normal;
}
body {
    background: #eef0f3;
    font-family: -apple-system,BlinkMacSystemFont,"Helvetica Neue",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Segoe UI Symbol","Android Emoji",EmojiSymbols;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
</style>
<body>
<main id="content" data-uiselector="regionContent" role="main" class=""><div data-viewname="DGroupBandCreationSetView" class="bandMakeUsecaseArea gMat50"><h2 class="title">만들고 싶은 모임을 선택하세요.</h2>

<ul class="usecaseList">
	
	<li class="usecaseItem">
		<a href="/band-create/group?usecase=취미,+동호회" class="usecaseItemLink _createType" data-type="" data-usecase="취미, 동호회" data-type2="">
			<span class="iconUscase"><img src="https://coresos-phinf.pstatic.net/a/2j484g/h_7j8Ud018adm104hzqdi9zgjg_5ksoqj.png" alt="취미, 동호회"></span>
			<em class="uscaseName">취미, 동호회</em>		
		</a>
	</li>
	
	<li class="usecaseItem">
		<a href="/band-create/group?open_type=secret&amp;usecase=스터디" class="usecaseItemLink _createType" data-type="secret" data-usecase="스터디" data-type2="">
			<span class="iconUscase"><img src="https://coresos-phinf.pstatic.net/a/2j4a6i/h_j29Ud018adm3za76p8oivcq_5ksoqj.png" alt="스터디"></span>
			<em class="uscaseName">스터디</em>
			
		</a>
	</li>
	
	<li class="usecaseItem">
		<a href="/band-create/group?usecase=게임" class="usecaseItemLink _createType" data-type="" data-usecase="게임" data-type2="">
			<span class="iconUscase"><img src="https://coresos-phinf.pstatic.net/a/311fc0/2_3c8Ud018adme6xaqnpi9vjj_5ksoqj.png" alt="게임"></span>
			<em class="uscaseName">게임</em>
			
		</a>
	</li>
	
	<li class="usecaseItem">
		<a href="/band-create/group?usecase=운동+모임" class="usecaseItemLink _createType" data-type="" data-usecase="운동 모임" data-type2="">
			<span class="iconUscase"><img src="https://coresos-phinf.pstatic.net/a/2jj5j9/5_ihfUd018adm1tghm24gzyoxd_5ksoqj.png" alt="운동 모임"></span>
			<em class="uscaseName">운동</em>
			
		</a>
	</li>
	
	<li class="usecaseItem">
		<a href="/band-create/group?usecase=지역" class="usecaseItemLink _createType" data-type="" data-usecase="지역 모임" data-type2="">
			<span class="iconUscase"><img src="https://coresos-phinf.pstatic.net/a/31b880/6_g97Ud018admt4oaixwkm04g_5ksoqj.png" alt="종교 모임"></span>
			<em class="uscaseName">지역</em>
			
		</a>
	</li>
	
	<li class="usecaseItem">
		<a href="/band-create/group" class="usecaseItemLink makeLink _createType">
			<span class="iconUscase -make"></span>
			<em class="uscaseName">직접 만들기</em>
		</a>
	</li>
</ul>

</div></main>
</body>
</html>