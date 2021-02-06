package com.fourmeeting.bee.adminnotice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fourmeeting.bee.adminnotice.model.service.AdminNoticeService;
import com.fourmeeting.bee.member.model.vo.Member;
import com.fourmeeting.bee.notice.model.vo.Notice;



@Controller
public class AdminNoticeController {
	
	//@Autowired
	//@Qualifier(value="adminNoticeService")
	//private AdminNoticeService anService;
	
	
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
	
	
	///////////////////////////////////////////////////////////
	
	
}
