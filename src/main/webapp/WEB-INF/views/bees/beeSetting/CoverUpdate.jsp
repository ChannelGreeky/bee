<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.fourmeeting.bee.bees.model.vo.Bees"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/resources/css/beeSetting/coverUpdate.css">
<body>
<%
	Bees beeResult = (Bees)request.getAttribute("beeResult");
	/* Member sessionMember = (Member)session.getAttribute("member"); */
%>
<main id="content" data-uiselector="regionContent" role="main" class=""><section data-viewname="DGroupBandCreateView" class="bandMake">
<form action="coverUpdateSet.do" class="_form" method="post">
    <fieldset>
        <legend class="gSrOnly">비즈 만들기</legend>
        <div class="makeCover">
            <h2 class="title">비즈 이름</h2>
            <div class="uInput -simpleLine inputBand">
                <label class="gSrOnly" for="ex_name"><%=beeResult.getBeesName() %></label>
                <input type="text" value="<%=beeResult.getBeesName() %>" class="_inputBandName" id="beeName" name="beeName" maxlength="50" placeholder="<%=beeResult.getBeesName() %>">
            </div>
            

            <div class="coverSelect">
                <div class="mainCover">
                    <span class="cover">      
                        <img id="image_section" src="<%=beeResult.getBeesCover() %>" data-cover="http://coresos.phinf.naver.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg" 
                         class="_selectedCover coverImg" width="300" height="225" alt="" onError="javascript:this.src='https://coresos-phinf.pstatic.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg?type=cover_a640'">         
                    	<input type="hidden" id="beeCoverImage" name="beeCoverImage" value="<%=beeResult.getBeesCover() %>"/>
                    	<input type="hidden" id="beesNo" name="beesNo" value="<%=beeResult.getBeesNo() %>"/>
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
                                <input type="file" id="imgInput" class="imageUpload" title="추가" accept="image/*" name="attachment">
                            </span>
                        </li>
        
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih0j0/d_26hUd018adm1qpknt8jkbj0y_5gztax.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0j0/d_26hUd018adm1qpknt8jkbj0y_5gztax.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih055/c_36hUd018admshigztpuo8vj_y71aad.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih055/c_36hUd018admshigztpuo8vj_y71aad.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih021/c_e6hUd018adm5qmds7qpu6g8_cqyzv.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih021/c_e6hUd018adm5qmds7qpu6g8_cqyzv.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih0gi/c_16hUd018adm7950giqjjo19_pdsycn.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0gi/c_16hUd018adm7950giqjjo19_pdsycn.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih0ig/c_b6hUd018admxh2okr38orea_cxmcw1.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0ig/c_b6hUd018admxh2okr38orea_cxmcw1.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih041/c_d6hUd018adm1vvx62az3rwlf_96o1bg.jpg" class="_defaultCovers cover ">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih041/c_d6hUd018adm1vvx62az3rwlf_96o1bg.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>
            
                        <li class="_coverSet_0" style="">
                            
                            <a href="#" class="data-cover" data-cover="http://coresos.phinf.naver.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg" class="_defaultCovers cover on">
                                <img class="coverImg" src="https://coresos-phinf.pstatic.net/a/2ih0j6/d_06hUd018adm7m9jr516m7iz_1i12aj.jpg?type=cover_a264" width="120" height="90" alt="">
                                <span class="mask"></span>
                            </a>
                            
                        </li>   
                    </ul>
                </div>
            </div>          
        </div>
   
        <div class="btnFooter">
            <button type="button" onclick="location.href='/beeSettingMain.do?beesNo=<%=beeResult.getBeesNo() %>'" class="_btnCancel uButton -sizeXL -cancel">취소</button>
            <button type="submit" class="_btnConfirm uButton -sizeXL -disabled">완료</button>
        </div>
    </fieldset>
</form></section></main>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
	    $("#imgInput").on('change', function(){
	        readURL(this);
	        console.log(readURL);
	    });
	});
	
	function readURL(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  
	  reader.onload = function (e) {
	   $('#image_section').attr('src', e.target.result);
	   $('#beeCoverImage').attr('value', e.target.result);
	  }
	  
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	 
	$('.data-cover').click(function(){
		var coverSrc = $(this).attr("data-cover");
		jQuery("#image_section").attr("src", coverSrc);
		jQuery("#beeCoverImage").attr("value", coverSrc);
	});
</script>
</body>
</html>