<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
  #header{
  background-color:white;
             border-bottom: 1px solid #FFF3D8;
   } 
    .inner{
	position: relative;
            max-width: 1034px;
            min-width:580px;
            height: 50px;
            margin:0 auto;
            
}
* {
	box-sizing: border-box;
}
.beeLogo{
 width: 70px;
 height: 33px;
 overflow: hidden;
 margin-top:10px;
	display : inline-block;
	background-repeat: no-repeat;
	background-position: -246px -285px;
}
.inner>form{
display:inline-block;
}    

.inner img{
width:70px;
height:100%;
object-fit:cover;

}
   
.searchBox{
position:absolute;
left:84px;
top:11px;
width:280px;
height:30px;
padding: 0 13px 0 13px;
border : solid 1px black;
border-radius:30px;
background-color:#FFF3D8;
}
#input_searchBox{

background-image:url('../../../resources/image/search.png');
background-color:#FFF3D8;
background-position:226px 6px;
background-repeat:no-repeat;
background-size:20px 20px;
border:none;
width:98%;
height:100%;
margin:0;
padding:3px 25px 3px 3px;
}
#input_searchBox:focus{
outline:none;
}
ul{
list-style:none;
margin:0;
padding:0;
}
li{
display:list-item;
}
.top_right-menu{
right:15px;
position:absolute;
top:14px;
}
#header .top_right-menu>li{
position:relative;
line-height:20px;
float:left;
margin-left:30px;
}

.top_right_btn{
width: 28px;
height:28px;
overflow:hidden;
display:inline-block;
padding:0;
background-color:white;
border:none;
}
.top_right_img:before{
font-size:26px;
margin:0;
padding:0;
color:#FEE6B1;

}

.top_right_btn:focus{
outline:none;
}

#navi{
position: relative;

width:100%;
max-width:1034px;
height:40px;
text-align:center;
margin:0 auto;
}
.navi_menu{
display:flex;
text-align:center;
height:100%;
align-items:center;
position:relative;
width:50%;
margin:0 auto;
}
.navi_menu_item{
margin-right:45px;

text-align:center;
flex:0 0 auto;
}
.navi_menu_item>a{
text-decoration: none;
line-height:34px;
display:block;
width:100%;
height:100%;
color:black;
} 
.navi_menu_item>a:hover{
text-decoration: none;
color:black;
font-weight: bold;
}
.navi_menu_item>a:active {
text-decoration: underline;
}









      
      /*커서 없애버려...*/
      
      body{
         font-family: 'Noto Sans KR', sans-serif;
         background-color: #f9f9f9;
      }
      
      div{
       /* border: 1px black solid; */
      }
      
      .container{
         width: 100%;
         height: 100%;
      }
      
      /* 내 정보 네비바 */
      .mypage_navi_div{
         padding: 0;
      }
      
      #mypage_navi_ul{
         width: 75%;
         height: 300px;
         list-style-type: none;
         margin: 20px auto;
         padding: 0px;
      }
      
      #mypage_navi_ul a{
          text-decoration: none;
         color : #50401B;
         display: block; /*a태그를 li영역 전체로 잡기 위함*/
         position: relative;
      }
      
      #mypage_navi_ul li{
          border: 1px solid #ededed;
          padding: 10px;
          background-color: white;
      }
      
      #mypage_navi_ul li i{
         color : #50401B;
         position: absolute;
         left: 95%;
         top: 20%;
      }
      
      
      /* 내가 쓴 글 피드 */
      .myhistroy_div{
         width: 100%;
         height: 800px;
         margin: 20px auto;
      }
      
      .myhistroy_table tr th{
         padding: 10px 20px;
         background-color: #dedede;
         position: relative;
      }
      
      .myhistroy_table tr th > select{
         color : #50401B;
         position: absolute;
         right: 5%;
         top: 17%;
      }
      
      select:focus{
         outline: none;
      }
         
      .myhistroy_categories td{
         width: 50%;
         padding: 10px 0px;
         text-align: center;
         position: relative;
      }
      
      .myhistroy_categories td a{
         text-decoration: none;
         color : #50401B;
         display: block; /*a태그를 영역 전체로 잡기 위함*/
      }
      
      .myhistroy_categories_underbar td:nth-child(1){
          background-color: #50401B;
          height: 2px;
      }

      
      .myhistroy_beesName a{
         text-decoration: none;
         color : #50401B;
         display: block; /*a태그를 영역 전체로 잡기 위함*/
      }
      
      .myhistroy_beesName{
         border: 1px solid #ededed;
      }
      
      .myhistroy_beesName td{
         padding: 5px 20px;
      }
      
      .myhistroy_table, .myhistroy_board_table{
         width: 100%;
         color : #50401B;
         border: 1px solid #ededed;
         background-color: white;
      }
      
      .myhistroy_board_table {
         margin: 10px auto;
      }
      
  
 
    </style>
</head>
<body>
<!-- 반응형 웹에 필요한 소스 -->
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
		
	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
		
	<!-- 폰트어썸 CDN -->	
	<!-- reference your copy Font Awesome here (from our CDN or by hosting yourself) -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

	<!-- 글씨체 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<div class="container-fluid">
   <div class="row" id="header" >
   <div class="col-3"></div>
   
       <div class="col-6 inner">
           <span>
            <a href="#" class="beeLogo">
	       		<img src="resources/image/beeLogo.png" alt="로고이미지"/>	
 	  		</a>
            </span>
            <form action>
               <fieldset>
                    <div class="searchBox">
                      <!--   <input type="text" id="input_searchBox" class="" placeholder="&#xf002;" autocomplete="off"> -->
                     
                      <input type="text" id="input_searchBox" autocomplete="off">
                      <!--   <span><i class="fas fa-search"></i></span> -->
                    <!--   <input type="button" class="img-button" placeholder="&#xf002;"> -->
                    </div>
               </fieldset>
            </form>
            
            
            <ul class="top_right-menu">
	  			<li class="chat">
	  				<button type="button" class="top_right_btn">  
	  					<i class="far fa-comment-dots top_right_img"></i>
                    </button>
            	</li>
            	<li class="setting">
            		<button type="button" class="top_right_btn" >
            			<i class="fas fa-user-circle top_right_img"></i>
            		</button>
            	</li>
            
       <!--   
            <ul class="top_right-menu">
	  			<li class="chat">
	      			<button type="button" class="chat_btn">  
                    </button>
                    <article >
						<header>
                           <h1>채팅</h1>
                        </header>
                        <div>
		     				<ul>
								<li> <a href="#">채팅목록</a></li>
		     				</ul>
						</div>
                    </article>
	   			</li>

 
               <li class="setting">
                   <button type="button" class="" >
                      <span class="uProfile">
                          <span class="profileInner">
                                 <img src="" width="30" height="30" alt class="">
                           </span>
                       </span>
                    </button>
                <article class="" id="">
                   <div class="">
                       <ul>
                           <li>
                               <a href="#">내 정보</a>
                           </li>
		   <li>
                               <a href="#">내가 쓴 글</a>
                           </li>
		  <li>
                               <a href="#">좋아요 목록</a>
                           </li>
 		  <li>
                               <a href="#">내 정보</a>
                           </li>

   		  <li>
                             <div class="sub">
                                <ul>
                                   <li>
                                      <a href="#">비즈가입 초대 확인</a>
                                   </li>
			<li>
                                      <a href="#">문의사항</a>
                                   </li>
			<li>
                                      <a href="#">공지사항</a>
                                   </li>
                                 </ul>
                               </div>
                            </li>
                            <li>
                                <a href="#">로그아웃</a>
                            </li>
                         </ul>
                      </div>
                  </article>
               </li> <!-- setting>-->
             </ul>  
             </div>
             <div class="col-3"></div>
          </div>  <!-- inner -->
      </header>
 

     
  <div id="navi" style="display: block;">		
	<ul class="navi_menu">
	    <li class="navi_menu_item">
     	       <a href="#" >전체글</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >사진첩</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#"  >일정</a>
	    </li>	
        <li class="navi_menu_item">
     	       <a href="#" >첨부</a>
	    </li>	
	    <li class="navi_menu_item">
     	       <a href="#" >멤버</a>
	    </li>	
	</ul>
         </div>  <!-- navi -->



</div> <!-- header -->


</div><!-- container-fluid -->

   <script>
   
      $(function(){
         
         //사이드 네비 초기값
         $(".navi_li").eq(1).css('background','#F7D078').css('font-weight','700');
         
/*          //사이드 네비 hover css변경
         $(".navi_li").hover(function(){
            $(this).css('background','#fff3d8');
            $(this).eq(0).css('font-weight','700');
            $(this).siblings().css('background','white'); //siblings() 나를 제외한 형제 요소들 모두 선택
            $(this).siblings().css('font-weight','400');
         },function(){
            $(".navi_li").eq(1).css('background','#F7D078').css('font-weight','700');
            $(".navi_li").eq(1).siblings().css('background','white').css('font-weight','400');
         }); */
         

         
         
      });
   
   </script>
   
      
      <div class="container pt-3">
         <div class="row">
            
            <!-- 여백 -->
            <div class="col-1"></div>
            
            <!-- mypage 사이드 네비 -->            
            <div class="col-3 p-0 mypage_navi_div">
               <ul id="mypage_navi_ul">
                  <li class="navi_li"><a href="/myinfo.do" id="myInfo">내 정보<i class="fas fa-angle-right"></i></a></li>
                  <li class="navi_li"><a href="/myboard.do" id="myHistory">내가 쓴 글<i class="fas fa-angle-right"></i></a></li>
                  <li class="navi_li"><a href='/myheart.do' id="myHeart">좋아요 누른 목록<i class="fas fa-angle-right"></i></a></li>
                  <li class="navi_li"><a href='/mybeesJoinQnas.do' id="myApprove">비즈 가입ㆍ초대 확인<i class="fas fa-angle-right"></i></a></li>
                  <li class="navi_li"><a href='/myQnaHistory.do' id="myQuestion">문의사항<i class="fas fa-angle-right"></i></a></li>
                  <li class="navi_li"><a href='/mynotice.do' id="myNotice">공지사항<i class="fas fa-angle-right"></i></a></li>
               </ul>
            </div>
            <!-- mypage 사이드 네비 -->
            
            <!-- mypage 피드(내가 쓴 글_게시글) -->
            <div class="col-7 p-0 myhistroy_div">
               <table class="myhistroy_table">
                  <tr>
                     <th>내가 쓴 글</th>
                     <th>
                        <select>
                           <option>비즈별 모아보기</option>
                           <option>초보 개발자 모임</option>
                           <!-- 가입한 비즈 목록 불러오기 -->
                        </select>
                     </th>
                  </tr>
                  <tr class="myhistroy_categories">
                     <td><a href="/myboard.do">게시글</a></td>
                     <td><a href="/mycomment.do">댓글</a></td>
                  </tr>
                  <tr class="myhistroy_categories_underbar">
                     <td></td>
                     <td></td>
                  </tr>
               </table>
                  
               <table class="myhistroy_board_table">
                  <!-- 클릭하면 비즈로 이동 -->
                  <tr class="myhistroy_beesName">
                     <td colspan="2"><a href="#">초보 개발자 모임</a></td>
                  </tr>
                  <!-- 클릭하면 비즈로 이동 -->
                  
                  <!-- 클릭하면 모달로 게시글 보여줌 -->
                  
                  <!-- 클릭하면 모달로 게시글 보여줌 -->
               </table>
               
               
            </div>
            <!-- mypage 피드(내가 쓴 글) -->
            
            <!-- 여백 -->
            <div class="col-1"></div>
         </div>
      </div>










</body>
</html>