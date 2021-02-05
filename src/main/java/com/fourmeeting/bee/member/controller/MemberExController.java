package com.fourmeeting.bee.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourmeeting.bee.member.model.service.MemberService;
import com.fourmeeting.bee.member.model.vo.Member;

@Controller
public class MemberExController {
	@Autowired
	@Qualifier(value = "memberService")
	private MemberService mService;

	@RequestMapping(value = "/memberLogin.do")
	public String memberLogin(@RequestParam String memberId, @RequestParam String memberPw,
			HttpServletRequest request, Model model) {
		Member m = new Member();
		
		System.out.println(memberId +"/" +memberPw);
		m.setMemberId(memberId);
		m.setMemberPw(memberPw);

		Member member = mService.selectLoginMember(m);

		if (member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);

			return "redirect:/index.jsp";
		} else {
			return "user/beforeLogin/memberLoginFail";
		}
	}

	@RequestMapping(value = "/memberLogout.do")
	public String memberLogout(HttpSession session) {
		session.invalidate();

		return "redirect:/main.jsp";

	}

	@RequestMapping(value = "/memberJoin.do")
	public String memberJoin() {

		return "user/beforeLogin/memberJoin";

	}


	
	@RequestMapping(value = "/memberSignUp.do")
	public String memberSignUp(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
		Member m = new Member();
		String birthYear = request.getParameter("birthYear");
		String birthMonth = "";
		String birthDay ="";
		String interest = "";
		if(request.getParameterValues("interest") != null ){
			String [] interestList = request.getParameterValues("interest");
			interest = interestList[0];
			if(interestList.length > 1) {
				for(int i = 1; i < interestList.length; i++) {
					interest += "/" + interestList[i];
				}
			}
		} else {
			interest += "etc";
		}
		
		if(Integer.parseInt(request.getParameter("birthMonth")) < 10) {
			birthMonth = "0" + request.getParameter("birthMonth");
		} else {
			birthMonth = request.getParameter("birthMonth");
		}
		
		if(Integer.parseInt(request.getParameter("birthDay")) < 10) {
			birthDay = "0" + request.getParameter("birthDay");
		} else {
			birthDay = request.getParameter("birthDay");
		}
		
		int birth = Integer.parseInt(birthYear + birthMonth + birthDay);
		
		String memberAddr = request.getParameter("addrCode")+" "+
					request.getParameter("addr")+" "+request.getParameter("detailAddr");
		
		m.setMemberId(request.getParameter("memberId"));
		m.setMemberPw(request.getParameter("memberPw"));
		m.setMemberName(request.getParameter("memberName"));
		m.setMemberBirth(birth);
		m.setMemberGender(request.getParameter("memberGender").charAt(0));
		m.setMemberPhone(request.getParameter("memberPhone"));
		m.setMemberAddr(memberAddr);
		m.setMemberEmail(request.getParameter("memberEmail"));
		m.setInterest(interest);

		int result = mService.insertMemberSignUp(m);

		if (result > 0) {
			model.addAttribute("msg", "회원가입 성공");
		} else {
			model.addAttribute("msg", "회원가입 실패 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/main.jsp");

		return "user/beforeLogin/memberResult";
	}

	@RequestMapping(value = "/memberIdCheck.do")
	public void memberIdCheck(@RequestParam String memberId, HttpServletResponse response) throws IOException {
		Member m = mService.selectMemberIdCheck(memberId);

		if (m != null) {
			response.getWriter().print(false);
		} else {
			response.getWriter().print(true);
		}

		return;
	}
	
	@RequestMapping(value = "/memberEmailCheck.do")
	public void memberEmailCheck(@RequestParam String memberEmail, HttpServletResponse response) throws IOException {
		Member m = mService.selectMemberEmailCheck(memberEmail);

		if (m != null) {
			response.getWriter().print(false);
		} else {
			response.getWriter().print(true);
		}

		return;
	}
}
