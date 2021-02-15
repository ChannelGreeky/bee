package com.fourmeeting.bee.schedule.controller;

import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourmeeting.bee.schedule.model.service.ScheduleService;
import com.fourmeeting.bee.schedule.model.vo.Schedule;
import com.fourmeeting.bee.schedule.model.vo.ScheduleDetail;
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

}
