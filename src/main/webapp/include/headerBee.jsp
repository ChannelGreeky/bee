<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   
</head>
<body>
<link rel="stylesheet" type="text/css" href="resources/css/headerBee.css">
	<div class="container-fluid p-0">
	<div class="container">
   		<div class="row header" >
	   		<div class="col-1 p-0 .d-sm-none"></div>
	   
	       	<div class="col-10 inner p-0">
	       		
		       	<div class="row h-100 w-100 p-0 m-0" >
		           <div class="col-8 col-md-9 p-0 ">
			           <span class="beeLogo">
			            <a href="/myBeesPage.do" >
				       		<img src="resources/image/beeWhiteLogo.png" alt="로고이미지" style="height:40px; width:80px;"/>	
			 	  		</a>
			            </span>
			            <form action>
			               <fieldset>
			                    <div class="searchBox">
			                      <input type="text" id="input_searchBox" autocomplete="off">
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
					            			<img src="/resources/image/profile.png" style="border-radius:30px; ">
					            		</button>	
					            		 
						                    <ul class="menu-sub">
						                        <li>
						                        	<a href="/index.jsp">내 정보</a>
						                        </li>
								   				<li>
						                            <a href="/index.jsp">내가 쓴 글</a>
						                        </li>
								  				<li>
						                            <a href="#">좋아요 목록</a>
						                        </li>
						 		  				<li>
						                            <a href="#">내 정보</a>
						                        </li>
						                        <li>
						                            <a href="#">비즈가입ㆍ초대 확인</a>
						                        </li>
												<li>
						                            <a href="#">문의사항</a>
						                        </li>
												<li>
						                            <a href="/adminNoticeBoard.do">공지사항</a>
						                        </li>
						                        <li>
						                        	<a href="/main.jsp">로그아웃</a>
						                        </li>
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
 

       <div class="row navi">
  <div class="col-md-3 p-0 h-100 w-100"></div>
   
       <div class="col-md-6  p-0 navi" >   

	<ul class="navi_menu">
	    <li class="navi_menu_item">
     	       <a href="/beesSelectOne.do?beesNo=${requestScope.bees.beesNo }" >전체글</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="/selectAllImage.do?beesNo=${requestScope.bees.beesNo }"  >사진첩</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="/beesSchedule.do"  >일정</a>
	    </li>	
        <li class="navi_menu_item">
     	       <a href="/beesUploadFile.do?beesNo=${requestScope.bees.beesNo }" >첨부</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="/beesMember.do" >멤버</a>
	    </li>	
	</ul>
         </div>  <!-- navi -->

 <div class="col-md-3 p-0 w-100"></div>
</div>




</body>
</html>