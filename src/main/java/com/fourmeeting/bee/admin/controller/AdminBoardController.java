package com.fourmeeting.bee.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.admin.model.service.AdminBoardService;
import com.fourmeeting.bee.admin.model.vo.MemberManagement;
import com.fourmeeting.bee.member.model.vo.Member;
import com.fourmeeting.bee.notice.model.vo.Notice;



@Controller
public class AdminBoardController {
	
	@Autowired
	@Qualifier(value="adminBoardService")
	private AdminBoardService anService;
	
	
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
	@RequestMapping(value="/memberManagement.do")      //관리자 회원관리
	public ModelAndView memberManagement(){
		ArrayList<Member> list= anService.selectMemberAllList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("admin/memberManagement");
		return mav; 
	}
	
	@RequestMapping(value = {"/adminLogout.do", "/beeLogout.do", "/userLogout.do"})
	public String headerLogout(HttpSession session) {
		session.invalidate();

		return "redirect:/main.jsp";

	}
	
	@RequestMapping(value = "/withdrawalBtnChange.do") //관리자 회원관리 탈퇴/복구 버튼
	public String withdrawalBtnChange(@RequestParam char delVal, @RequestParam int memberNum,
			HttpServletResponse response)throws IOException{
		System.out.println("delVal: " + delVal);    //   현재 버튼값 = deleteBtn(삭제) or restoreBtn(복구)
		System.out.println("memberNum : " + memberNum ); //현재 페이지 번호
		
		if(delVal=='N') delVal='Y';    //N->Y
		else if(delVal=='Y') delVal='N'; //Y->N으로 버튼을 바꿔라
		MemberManagement mm = new MemberManagement();
		
		mm.setMemberNo(memberNum);
	//if(delVal == 'Y'  && beesNo != null){  //삭제 할거야, 비즈 있음.
	//	mm.setUserBlockYN(delVal);
	//	mm.setUserDelYN(delVal);
	//}else if(delVal == 'N' && beesNo != null){ //복구할거야, 비즈 있음
	//	mm.setUserBlockYN(null);
		
//	}
		
	//	mm.setUserBlockYN("Y");
		
		int result = anService.withdrawalBtnChange(delVal,memberNum);
		if(result>0){
			System.out.println("삭제, 복구 버튼 변경 성공");
			response.getWriter().print(true); //입출력으로 IOException발생 , 그래서 위에 throws IOException 붙여줌
		}else{
			System.out.println("삭제, 복구 버튼 변경 성공");
			response.getWriter().print(false);
		}
		return null;
	}
	
	
	
	 
	
}
