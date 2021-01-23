package com.fourmeeting.bee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	
	@RequestMapping(value="myinfo.do")
	public String myinfo(){
		return "mypage/myinfo";
	}
	
	

}
