package com.fourmeeting.bee.bees.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.bees.model.service.BeesService;
import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;

@Controller("beesController")
public class BeesController {
	@Autowired
	@Qualifier(value = "beesService")
	private BeesService bService;
	
	@RequestMapping(value="/beeCreateMain.do")
	public String beeCreateMain()
	{
			return "bees/beeCreate/Main";
		
	}	
	@RequestMapping(value="/beeCreateSub.do")
	public String beeCreateSub()
	{
			return "bees/beeCreate/Sub";
		
	}
	
	@RequestMapping(value="/beeCreate.do")
	public String beeCreate(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
		char beesPublicYN = 0;
		Bees bee = new Bees(); 
		bee.setBeesName(request.getParameter("beeName"));
		bee.setBeesCover(request.getParameter("beeCoverImage"));
		bee.setBeesCategory(request.getParameter("category"));	
		bee.setBeesHost("hellohi");
		String beesPublic = request.getParameter("beeType");
		if(beesPublic.equals("public")){
			beesPublicYN ='Y';
		}else{
			beesPublicYN ='N';
		}
		bee.setBeesPublicYN(beesPublicYN);
		
		int beeResult = bService.insertBee(bee);
		
		if (beeResult > 0) {
			model.addAttribute("msg", "비즈가 성공적으로 만들어졌습니다");
		} else {
			model.addAttribute("msg", "비즈 생성이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/index.jsp");

	
		return "bees/beeCreate/beeResult";
		
	}
	
	@RequestMapping(value="/beeSettingMain.do")
	public ModelAndView beeSettingMain(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			System.out.println("비즈 번호: "+bee.getBeesNo());
			Bees beeResult = bService.selectBeeSetting(bee);
			
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("beeResult",beeResult);
			mav.setViewName("bees/beeSetting/Main");  //ViewResolver에 의해서 경로가 최종 완성됨
					
			return mav;			
			/*return "bees/beeSetting/Main";*/
		
	}
	
	@RequestMapping(value="/beeSettingSubCoverUpdate.do")
	public ModelAndView beeSettingSubCoverUpdate(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			System.out.println("커버변경 비즈 번호: "+bee.getBeesNo());
			Bees beeResult = bService.selectBeeSetting(bee);
			
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("beeResult",beeResult);
			mav.setViewName("bees/beeSetting/SubCoverUpdate");  //ViewResolver에 의해서 경로가 최종 완성됨
					
			return mav;	
		
	}
	@RequestMapping(value="/coverUpdateSet.do")
	public String coverUpdateSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			bee.setBeesName(request.getParameter("beeName"));
			bee.setBeesCover(request.getParameter("beeCoverImage"));
			System.out.println("커버변경 설정: "+bee.getBeesName()+"/"+bee.getBeesCover());
			int beeResult = bService.updateBeeSettingCover(bee);
			
			if (beeResult > 0) {
				model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
			} else {
				model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
			}
			model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());

		
			return "bees/beeCreate/beeResult";	
	}
	
	@RequestMapping(value="/beeSettingSubType.do")
	public ModelAndView beeSettingSubType(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("타입변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/Type");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;					
	}
	@RequestMapping(value="/subTypeSet.do")
	   public String subTypeSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {   
	      char beesPublicYN = 0;
	      Bees bee = new Bees(); 
	      bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
	      String beesPublic = request.getParameter("beeType");
	      if(beesPublic.equals("public")){
	         beesPublicYN ='Y';
	      }else{
	         beesPublicYN ='N';
	      }
	      bee.setBeesPublicYN(beesPublicYN);
	      System.out.println("타입변경 설정: "+bee.getBeesNo()+"/"+bee.getBeesPublicYN());
	      int beeResult = bService.updateBeeSettingType(bee);		
			if (beeResult > 0) {
				model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
			} else {
				model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
			}
			model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
			
			return "bees/beeCreate/beeResult";	           
	   }
	
	@RequestMapping(value="/beeSettingSubIntro.do")
	public ModelAndView beeSettingSubIntro(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("소개변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/Intro");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;							
	}
	@RequestMapping(value="/subIntroSet.do")
	public String subIntroSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		bee.setBeesCont(request.getParameter("beeCont"));
		System.out.println("소개변경 설정: "+bee.getBeesNo()+"/"+bee.getBeesCont());
		int beeResult = bService.updateBeeSettingIntro(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	    					
		
	}
	
	@RequestMapping(value="/beeSettingSubMaxMember.do")
	public ModelAndView beeSettingSubMaxMember(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("최대인원변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/MaxMember");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;								
	}
	@RequestMapping(value="/subMaxMemberSet.do")
	public String subMaxMemberSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		String MaxMember = request.getParameter("MaxMember");
		bee.setBeesUserLimit(Integer.parseInt(MaxMember));
		System.out.println("최대인원변경 설정: "+bee.getBeesNo()+"/"+MaxMember);
		int beeResult = bService.updateBeeSettingMaxMember(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	    
	}
	
	@RequestMapping(value="/beeSettingSubJoinStandard.do")
	public ModelAndView beeSettingSubJoinStandard(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("가입조건변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		System.out.println("가입조건변경 비즈 성별: "+beeResult.getBeesGender());
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/JoinStandard");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;										
	}
	@RequestMapping(value="/subJoinStandardSet.do")
	public String subJoinStandardSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		bee.setBeesGender(request.getParameter("gender").charAt(0));
		bee.setBeesMaxBirth(Integer.parseInt(request.getParameter("maxAge")));
		bee.setBeesMinBirth(Integer.parseInt(request.getParameter("minAge")));
		String gender = request.getParameter("gender");
		String maxAge = request.getParameter("maxAge");
		String minAge = request.getParameter("minAge");
		System.out.println("가입조건변경 설정: "+bee.getBeesNo()+"/"+gender+"/"+maxAge+"/"+minAge);
		int beeResult = bService.updateBeeSettingJoinStandard(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	   
	}
	
	@RequestMapping(value="/beeSettingSubJoinManager.do")
	public ModelAndView beeSettingSubJoinManager(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		int beesNO = Integer.parseInt(request.getParameter("beesNo"));
		System.out.println("매니저 관리 비즈 번호: "+beesNO);
		ArrayList<BeesUserList> list = bService.selectBeesUser(beesNO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("bees/beeSetting/JoinManager"); //viewResolve를 통해 경로 최종 완성
		
		return mav;

		
		/*Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/JoinManager");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;	*/	

	}
	@RequestMapping(value="/beeSettingSubMemberPermission.do")
	public String beeSettingSubMemberPermission()
	{
			return "bees/beeSetting/MemberPermission";
		
	}
	@RequestMapping(value="/beeSettingSubMemberWithdraw.do")
	public String beeSettingSubMemberWithdraw()
	{
			return "bees/beeSetting/MemberWithdraw";
		
	}
	
	@RequestMapping(value="/beeSettingSubMemberWithdrawDo.do")
	public String beeSettingSubMemberWithdrawDo()
	{
			return "bees/beeSetting/MemberWithdrawDo";
		
	}
	
}
