package com.fourmeeting.bee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	

	@RequestMapping("/beesSchedule.do")
	public String insertBeesSchedule() {
	return "bees/schedule";	
	}
	
	@RequestMapping("/beesMember.do")
	public String selectBeesMember() {
		
		return "bees/beesMember";	
	}
	
	@RequestMapping("/inviteMember.do")
	public String selectMemberInvite() {
		return "bees/beesInvite";
	}
	
	@RequestMapping("/beesApplicant.do")
	public String insertBeesApplicant() {
		return "bees/beesApplicant";
	}
	
	@RequestMapping(value="uploadFile.do")
	public String uploadFile(){
		return "bees/fileBoard";
	}
	

	@RequestMapping(value="uploadImage.do")
	public String uploadImage(){
		return "bees/uploadImage";
	}
	@RequestMapping(value="allImage.do")
	public String allImage(){
		return "imageBoard/allImage";
	}

		@RequestMapping(value="noticeBoard.do")
	public String noticeBoard(){
		return "admin/noticeBoard";
	}	
		
		//------ 마이페이지 ------- //
		@RequestMapping(value="myinfo.do")
		public String myinfo(){
			return "user/myPage/info";
		}
		
		@RequestMapping(value="/myboard.do")
		public String myboard(){
			return "user/myPage/board";
		}
		
		@RequestMapping(value="/mycomment.do")
		public String mycomment(){
			return "user/myPage/comment";
		}
		
		@RequestMapping(value="/myheart.do")
		public String myheart(){
			return "user/myPage/heart";
		}
		
		@RequestMapping(value="/mybeesJoinQnas.do")
		public String mybeesJoinQnas(){
			return "user/myPage/beesJoinQnas";
		}

		@RequestMapping(value="/myQnaHistory.do")
		public String myQnaHistory(){
			return "user/myPage/qnaHistory";
		}
		
		
		@RequestMapping(value="/myask.do")
		public String myask(){
			return "user/myPage/ask";
		}
		
		@RequestMapping(value="/mynotice.do")
		public String mynotice(){
			return "user/myPage/notice";
		}
		
		//마이페이지
		
		//------ 관리자페이지(테이블) ------- //
		
		@RequestMapping(value="/memberManagement.do")
		public String memberManagement(){
			return "admin/memberManagement";
		}
		
		@RequestMapping(value="/beesManagement.do")
		public String beesManagement(){
			return "admin/beesManagement";
		}
		
		@RequestMapping(value="/adminNotice.do")
		public String adminNotice(){
			return "admin/adminNotice";
		}
		
		@RequestMapping(value="/adminQuestion.do")
		public String adminQuestion(){
			return "admin/adminQuestion";
		}
		
		//관리자페이지
		
		@RequestMapping(value="/feedSearchResult.do")
		public String feedSearchResult() {
			
			return "/user/search/feedSearchResult";
			
		}

		@RequestMapping(value="/bestFeedPage.do")
		public String bestFeedPage() {
			
			return "/user/main/bestFeedPage";
			
		}
		
		@RequestMapping(value="/myBeesPage.do")
		public String myBeesPage() {
			
			return "/user/main/myBeesPage";
			
		}
		
		@RequestMapping(value="/beesMainPage.do")
		public String beesMainPage() {
			
			return "/bees/main/beesMainPage";
			
		}
		
		@RequestMapping(value="/beesChatPopUp.do")
		public String beesChatPopUp() {
			
			return "/bees/main/beesChatPopUp";
			
		}
		
		
		@RequestMapping(value="/myPageBoard.do")
		public String myPageBoard() {
			return "/user/myPage/board";
		}
		
		@RequestMapping(value="/myPageHeart.do")
		public String myPageHeart() {
			return "/user/myPage/heart";
		}
		
		@RequestMapping(value="/beesSearchResult.do")
		public String beesSearchResult() {
			return "/user/search/beesSearchResult";
		}
		
		
}
