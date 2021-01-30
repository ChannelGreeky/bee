package com.fourmeeting.bee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	

	@RequestMapping("/beesSchedule.do")
	public String insertBeesSchedule() {
	return "board/schedule";	
	}
	
	@RequestMapping("/beesMember.do")
	public String selectBeesSMember() {
		
		return "board/beesMember";	
	}
	
	@RequestMapping("/inviteMember.do")
	public String selectMemberInvite() {
		return "board/beesInvite";
	}
	
	@RequestMapping(value="uploadFile.do")
	public String uploadFile(){
		return "fileBoard/allFile";
	}
	
	@RequestMapping(value="fileExample.do")
	public String fileExample(){
		return "fileBoard/uploadFile";
	}
	@RequestMapping(value="uploadImage.do")
	public String uploadImage(){
		return "imageBoard/uploadImage";
	}
	@RequestMapping(value="allImage.do")
	public String allImage(){
		return "imageBoard/allImage";
	}

		@RequestMapping(value="noticeBoard.do")
	public String noticeBoard(){
		return "adminBoard/noticeBoard";
	}	
		
		//------ 마이페이지 ------- //
		@RequestMapping(value="myinfo.do")
		public String myinfo(){
			return "my/info";
		}
		
		@RequestMapping(value="/myboard.do")
		public String myboard(){
			return "my/board";
		}
		
		@RequestMapping(value="/mycomment.do")
		public String mycomment(){
			return "my/comment";
		}
		
		@RequestMapping(value="/myheart.do")
		public String myheart(){
			return "my/heart";
		}
		
		@RequestMapping(value="/mybeesJoinQnas.do")
		public String mybeesJoinQnas(){
			return "my/beesJoinQnas";
		}

		@RequestMapping(value="/myQnaHistory.do")
		public String myQnaHistory(){
			return "my/qnaHistory";
		}
		
		
		@RequestMapping(value="/myask.do")
		public String myask(){
			return "my/ask";
		}
		
		@RequestMapping(value="/mynotice.do")
		public String mynotice(){
			return "my/notice";
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
		
		
}
