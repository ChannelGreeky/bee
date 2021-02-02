package com.fourmeeting.bee.adminnotice.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class AdminNoticeController {
	@RequestMapping(value="/beesUploadFile.do")
	public String uploadFile(){
		return "bees/board/beesFileBoard";
	}
	

	@RequestMapping(value="/beesUploadImage.do")
	public String uploadImage(){
		return "bees/board/beesUploadImage";
	}
	
	
	@RequestMapping(value="/adminNoticeModification.do")
	public String noticeModification(){
		return "admin/adminNoticeModification";
	}
	@RequestMapping(value="/adminNoticeBoard.do")
	public String noticeBoard(){
		return "admin/adminNoticeBoard";
	}	
}
