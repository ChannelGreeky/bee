package com.fourmeeting.bee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	
	@RequestMapping(value="myinfo.do")
	public String myinfo(){
		return "mypage/myinfo";
	}
	
	@RequestMapping(value="uploadFile.do")
	public String uploadFile(){
		return "fileBoard/allFile";
	}
	
	@RequestMapping(value="uploadImage.do")
	public String uploadImage(){
		return "imageBoard/allImage";
	}
	
	@RequestMapping(value="header.do")
	public String header(){
		return "include/header";
	}
	
	
		@RequestMapping(value="header_user.do")
	public String header_user(){
		return "include/header_user";
	}
}
