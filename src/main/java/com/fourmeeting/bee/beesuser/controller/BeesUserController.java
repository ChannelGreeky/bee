package com.fourmeeting.bee.beesuser.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourmeeting.bee.beesuser.model.service.BeesUserService;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.google.gson.Gson;

@Controller
public class BeesUserController {
	
	
	@Resource(name="BeesUserService")
	private BeesUserService userService;
	
	@RequestMapping("/insertBeesUser.do")
	private void insertBeesUser(@RequestParam String userName, @RequestParam int beesNo, @RequestParam int memberNo, HttpServletResponse response ) throws Exception {
		
		BeesUser user = new BeesUser();
		user.setBeesNo(beesNo);
		user.setUserName(userName);
		user.setMemberNo(memberNo);
		int result = userService.insertBeesUser(user);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		new Gson().toJson(result,out);

		
	}
	
	
	
}
