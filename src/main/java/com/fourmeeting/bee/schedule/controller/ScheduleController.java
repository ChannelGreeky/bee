package com.fourmeeting.bee.schedule.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.member.model.vo.Member;
import com.fourmeeting.bee.schedule.model.service.ScheduleService;
import com.fourmeeting.bee.schedule.model.vo.Schedule;
import com.fourmeeting.bee.schedule.model.vo.ScheduleDetail;
import com.fourmeeting.bee.schedule.model.vo.ScheduleInsert;
import com.fourmeeting.bee.schedule.model.vo.ScheduleList;
import com.google.gson.Gson;

@Controller
public class ScheduleController {
	
	@Resource(name="ScheduleService")
	private ScheduleService scheduleService;
	
	
	@RequestMapping("/scheduleSelectOne.do")
	private void scheduleSelectOne(@RequestParam int scheduleNo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SimpleDateFormat scheFormat = new SimpleDateFormat("yyyy년 MM월 dd일 (E)", Locale.KOREA);
		ScheduleDetail sche = scheduleService.scheduleSelectOne(scheduleNo);
		sche.setTransStartDate(String.valueOf(scheFormat.format(sche.getScheduleStartDate())));
		sche.setTransEndDate(String.valueOf(scheFormat.format(sche.getScheduleEndDate())));
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		new Gson().toJson(sche,out);
		
	}
	
	@RequestMapping("/insertSchedule.do")
	private void insertSchedule(@RequestParam int beesNo, @RequestParam String scheduleTitle, @RequestParam String scheduleCont, @RequestParam int boardNo, @RequestParam int scheduleNo, 
			@RequestParam String scheduleStartDate, @RequestParam String scheduleEndDate, @RequestParam int userNo, HttpServletResponse response) throws Exception {
		
		Schedule schedule = new Schedule();
		schedule.setBeesNo(beesNo);
		schedule.setUserNo(userNo);
		schedule.setScheduleCont(scheduleCont);
		schedule.setScheduleTitle(scheduleTitle);
		schedule.setScheduleStartDate(Timestamp.valueOf(scheduleStartDate));
		schedule.setScheduleEndDate(Timestamp.valueOf(scheduleEndDate));
		schedule.setScheduleNo(scheduleNo);
		schedule.setBoardNo(boardNo);
		
		int result = scheduleService.insertSchedule(schedule);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		new Gson().toJson(result,out);
	}
	
	
	
	/*-------------------solm---------------------------*/
	@RequestMapping(value="/beesSchedule.do")
	public ModelAndView selectBeesSchedule(@RequestParam int beesNo, HttpSession session, HttpServletRequest request) throws Exception {
		

		System.out.println("넘어오면 좋겠다: "+ beesNo);
		
		ArrayList<ScheduleList> list = scheduleService.selectBeesSchedule(beesNo);
		
		/*수정할 때 필요한 userNo 구하는 로직*/
		Member m = (Member)session.getAttribute("member");
		int memberNo = m.getMemberNo();
		System.out.println("수정할 때 필요한 멤버넘버 :"+memberNo);
		
		BeesUser beesUser = new BeesUser();
		beesUser.setBeesNo(beesNo);
		beesUser.setMemberNo(memberNo);
		
		BeesUser Buser = scheduleService.selectBeesUserInfo(beesUser);
		System.out.println("수정할 때 필요한 유저넘버 :"+  Buser.getUserNo());
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("Buser", Buser);
		mav.setViewName("bees/schedule");
		
		return mav;
		

	}
	
	
	@RequestMapping(value="/scheDateInput.do")
	public void insertScheDate(@RequestParam String scheduleTitle, @RequestParam String scheduleCont,
								@RequestParam String scheduleStartDate, @RequestParam String scheduleEndDate,
								@RequestParam int beesNo, HttpSession session, HttpServletResponse response)throws IOException {
	
		
		
		/*userNo 받아오기 위한 코드*/
		Member m = (Member)session.getAttribute("member");
		int memberNo = m.getMemberNo();
		System.out.println("로그인 정보 : " + memberNo);
		
		BeesUser BU = scheduleService.selectUserNo(memberNo);
		int userNo = BU.getUserNo();
		System.out.println("유저 정보 : " + userNo);
		
		ScheduleInsert SI = new ScheduleInsert();
		SI.setBeesNo(beesNo);
		SI.setUserNo(userNo);
		SI.setMemberNo(memberNo);
		SI.setScheduleTitle(scheduleTitle);
		SI.setScheduleCont(scheduleCont);
		SI.setScheduleStartDate(Timestamp.valueOf(scheduleStartDate));;
		SI.setScheduleEndDate(Timestamp.valueOf(scheduleEndDate));;
		
		
		System.out.println("제목 : " + scheduleTitle);
		System.out.println("내용 : " + scheduleCont);
		System.out.println("시작일 : " + SI.getScheduleStartDate());
		System.out.println("종료일 : " + SI.getScheduleEndDate());
		
		int result = scheduleService.insetScheDate(SI);
		
		
		if(result>0) {
			System.out.println("일정 등록 성공");
			response.getWriter().print(true);
			//response.sendRedirect("/beesSchedule.do?beesNo="+beesNo);
			
			
		}else {
			System.out.println("일정 등록 실패");
			response.getWriter().print(false);
			//response.sendRedirect("/beesSchedule.do?beesNo="+beesNo);
		}
		
		
		/*
		response.getWriter().print(memberNo);
		System.out.println("----------"+memberNo+"----------------");
		response.getWriter().close();
		*/
		return ;
		
	}
	
	
	@RequestMapping(value="/scheContList.do")
	public void selectScheContList(@RequestParam int scheduleNo, HttpServletResponse response) throws Exception {
		System.out.println("[selectScheContList-controller] 통신");
		System.out.println("스케줄 번호 : " + scheduleNo);
		
		SimpleDateFormat scheFormat = new SimpleDateFormat("yyyy년 MM월 dd일 (E)", Locale.KOREA);
		ScheduleDetail schedule = scheduleService.selectScheContList(scheduleNo);
		schedule.setTransStartDate(String.valueOf(scheFormat.format(schedule.getScheduleStartDate())));
		schedule.setTransEndDate(String.valueOf(scheFormat.format(schedule.getScheduleEndDate())));
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		new Gson().toJson(schedule,out);

	}
	
	@RequestMapping(value="/scheDel.do")
	public void deleteBeesSchedule(@RequestParam int scheduleNo, HttpServletResponse response ) throws Exception {
		//System.out.println("돌다리도 두들기고..:" + scheduleNo);
		int result = scheduleService.deleteBeesSchedule(scheduleNo);
		
		if(result>0) {
			System.out.println("삭제완료요");
			response.getWriter().print(true);
		}else {
			System.out.println("삭제안됐음!!!");
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/scheduleModify.do")
	public void updateScheduleCont(HttpSession session, @RequestParam String scheduleCont, @RequestParam int scheduleNo,
									HttpServletResponse response ) throws Exception{
		
		System.out.println("일정 수정 데이터 : " + scheduleCont);
		System.out.println("일정 수정 데이터 : " + scheduleNo);
		
		ScheduleDetail scheDetail = new ScheduleDetail();
		scheDetail.setScheduleCont(scheduleCont);
		scheDetail.setScheduleNo(scheduleNo);
		
		int result = scheduleService.updateScheduleCont(scheDetail);
		
		
		//System.out.println("업데이트 결과값 : " + result);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		new Gson().toJson(result,out);
		
	}

}
