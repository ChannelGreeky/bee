package com.fourmeeting.bee.member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourmeeting.bee.member.model.service.MemberService;
import com.fourmeeting.bee.member.model.vo.Member;

@Controller
public class MemberController {
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
	
	@RequestMapping(value = "/memberPhoneCheck.do")
	public void memberPhoneCheck(@RequestParam String receiver, HttpServletResponse response) throws IOException {
		Member m = mService.selectMemberPhoneCheck(receiver);
	
		if (m != null) {
			response.getWriter().print(false);
		} else {
			response.getWriter().print(true);
		}

		return;
	}

	@RequestMapping(value = "/sendSms.do")
	public void memberPhoneCheckSendSMS(@RequestParam String receiver, HttpServletResponse response)
			throws IOException {
		// 6자리 인증 코드 생성
		int rand = (int) (Math.random() * 899999) + 100000;
		// 인증 코드를 데이터베이스에 저장하는 코드는 생략했습니다.
		// 문자 보내기
		String hostname = "api.bluehouselab.com";
		String url = "https://" + hostname + "/smscenter/v1.0/sendsms";
		
		CredentialsProvider credsProvider = new BasicCredentialsProvider();

		credsProvider.setCredentials(new AuthScope(hostname, 443, AuthScope.ANY_REALM),
				new UsernamePasswordCredentials(SmsConfig.appId, SmsConfig.apiKey));

		AuthCache authCache = new BasicAuthCache();
		authCache.put(new HttpHost(hostname, 443, "https"), new BasicScheme());
		
		HttpClientContext context = HttpClientContext.create();
		context.setCredentialsProvider(credsProvider);
		context.setAuthCache(authCache);
		
		DefaultHttpClient client = new DefaultHttpClient();
		
		try {
			HttpPost httpPost = new HttpPost(url);
			httpPost.setHeader("Content-type", "application/json; charset=utf-8");
			
			// 문자에 대한 정보
			String json = "{\"sender\":\"" + SmsConfig.sender + "\",\"receivers\":[\"" + receiver + "\"],\"content\":\""
					+ SmsConfig.content + rand + "\"}";
			StringEntity se = new StringEntity(json, "UTF-8");
			httpPost.setEntity(se);
			
			HttpResponse httpResponse = client.execute(httpPost, context);
			InputStream inputStream = httpResponse.getEntity().getContent();
			
			if (inputStream != null) {
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
				String line = "";
			}
			response.getWriter().print(rand);
			//DB 삽입
		} catch (Exception e) {
			System.err.println("Error: " + e.getLocalizedMessage());
		} finally {
			client.getConnectionManager().shutdown();
		}
	}
	
	@RequestMapping(value = "/memberFindIdPage.do")
	public String memberFindIdPage() {

		return "user/beforeLogin/memberFindId";

	}
	
	@RequestMapping(value = "/memberFindId.do")
	public String memberFindId(Model model, HttpServletRequest request) {
		
		Member m = new Member();
		
		String birthYear = request.getParameter("birthYear");
		String birthMonth = "";
		String birthDay = "";
		
		if (Integer.parseInt(request.getParameter("birthMonth")) < 10) {
			birthMonth = "0" + request.getParameter("birthMonth");
		} else {
			birthMonth = request.getParameter("birthMonth");
		}

		if (Integer.parseInt(request.getParameter("birthDay")) < 10) {
			birthDay = "0" + request.getParameter("birthDay");
		} else {
			birthDay = request.getParameter("birthDay");
		}

		int birth = Integer.parseInt(birthYear + birthMonth + birthDay);

		m.setMemberName(request.getParameter("memberName"));
		m.setMemberBirth(birth);
		m.setMemberPhone(request.getParameter("memberPhone"));

		Member member = mService.selectMemberFindId(m);

		if (member != null) {
			model.addAttribute("m", member);
		} else {
			model.addAttribute("m", null);
		}

		return "user/beforeLogin/memberFindIdResult";
	}
	
	@RequestMapping(value = "/memberFindPwPage.do")
	public String memberFindPwPage() {

		return "user/beforeLogin/memberFindPw";

	}
	@RequestMapping(value = "/memberFindPw.do")
	public String memberFindPw(Model model, HttpServletRequest request) {
		Member m = new Member();
		
		m.setMemberId(request.getParameter("memberId"));
		m.setMemberName(request.getParameter("memberName"));
		m.setMemberPhone(request.getParameter("memberPhone"));
		
		Member member = mService.selectMemberFindPw(m);

		if (member != null) {
			model.addAttribute("m", member);
		} else {
			model.addAttribute("m", null);
		}
		
		return "user/beforeLogin/memberFindPwResult";
	}
	
	@RequestMapping(value = "/memberFindPwUpdate.do")
	public String memberFindPwUpdate(@RequestParam String memberId, @RequestParam String memberPw, Model model) {
		Member m = new Member();
		
		m.setMemberId(memberId);
		m.setMemberPw(memberPw);
		
		int result = mService.updateMemberFindPw(m);

		if (result > 0) {
			model.addAttribute("msg", "비밀번호가 변경되었습니다. 로그인하여 주십시오");
		} else {
			model.addAttribute("msg", "비밀번호 변경 실패 지속적으로 실패 시 관리자에게 문의 주세요");
		}
		
		model.addAttribute("location", "/main.jsp");

		return "user/beforeLogin/memberResult";
	}
}
