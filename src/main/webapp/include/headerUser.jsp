<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="resources/css/headerUser.css">
	<div class="container-fluid p-0">
	<div class="container">
   <div class="row header" >
   <div class="col-1 p-0 .d-sm-none"></div>
	   
	       	<div class="col-10 inner p-0">
       	<div class="row h-100 w-100 p-0 m-0" >
           <div class="col-8 col-md-9 p-0">
           <span class="beeLogo">
            <a href="/myBeesPage.do" >
	       		<img src="resources/image/beeLogo.png" alt="로고이미지"/>	
 	  		</a>
            </span>
           <form action="/beesSearchResult.do" method="get">
               <fieldset>
                    <div class="searchBox">
                      <input type="text" id="input_searchBox" name="searchData" autocomplete="off">
                      <input type="hidden" name="endNo" value=10 />
                      <button type="submit" id="btn_search">
                      <img src="/resources/image/search.png" style="width:20px; height:20px"/>
                      </button>
                    </div>
               </fieldset>
            </form>
            </div>
         
            <div class="col-4 col-md-3 p-0">
            
            
            
            
            
            <ul class="top_right-menu">
	  			<li class="menu-item">
	  				<button type="button" class="top_right_btn">  
	  					<i class="far fa-comment-dots top_right_img"></i>
                    </button>
                    <ul class="menu-sub">
	                        <li>
	                        	채팅목록
	                        </li>
	                 </ul>
            	</li>
            	<li class="menu-item">
            		<button type="button" class="top_right_btn" id="set_btn">
            			<img src="/resources/image/profile.png" style="border-radius:30px;">
            		</button>
            		
	                        <ul class="menu-sub">
								<li><a href="/myPageInfo.do">내 정보</a></li>
								<li><a href="/myPageBoard.do">내가 쓴 글</a></li>
								<li><a href="/myPageHeart.do">좋아요 누른 목록</a></li>
								<li><a href="/myPageBeesJoinQnas.do">비즈 가입 확인</a></li>
								<li><a href="/myPageQnaHistory.do">문의사항</a></li>
								<li><a href="/myPageNotice.do">공지사항</a></li>
								<li><a href="/memberLogout.do">로그아웃</a></li>
							</ul>
            		
            		
            	</li>
             </ul>
             </div>  <!-- col-4 col-md-3 p-0 -->
	             </div> <!-- row h-100 w-100 p-0 -->
		      </div>  <!-- inner -->
          <div class="col-1 p-0 .d-sm-none"></div>
      </div> <!-- row header -->
	</div> <!-- container -->
</div> <!-- container-fluid" -->
 
<div class="w-100" style="background-color:white">
<div class="row navi">
  <div class="col-md-12 p-0 h-100 w-100"></div>
	<ul class="navi_menu">
	    <li class="navi_menu_item">
     	       <a href="/myBeesPage.do" >내 비즈 소식</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="/bestFeedPage.do" >인기글</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="/beesRecommend.do?endNo=10">추천비즈</a>
	    </li>	
	</ul>
</div>
</div>








</body>
</html>