package com.fourmeeting.bee.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fourmeeting.bee.notice.model.service.NoticeService;
import com.fourmeeting.bee.notice.model.vo.Notice;

@Controller
public class NoticeController {

	@Autowired
	@Qualifier(value="noticeService")
	private NoticeService nService;
	
	
	@RequestMapping(value="/adminNoticeBoard.do")    //공지사항 전체 게시글조회
	public String adminNoticeBoard(){
		return "admin/adminNoticeBoard";
	}	
	
	
	
	
	@RequestMapping(value="/noticeInsert.do")       //공지사항,FAQ 등록
	public String noticeInsert(Notice n, Model model){
		//세션에서 회원no가져와야함.
		System.out.println(n.getNoticeTitle());
		System.out.println(n.getNoticeCont());
		System.out.println(n.getNoticeCategory());
		
		return null;
		
	}
}
