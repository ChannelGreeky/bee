package com.fourmeeting.bee.schedule.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.schedule.model.dao.ScheduleDAO;
import com.fourmeeting.bee.schedule.model.vo.Schedule;
import com.fourmeeting.bee.schedule.model.vo.ScheduleDetail;


@Service("ScheduleService")
public class ScheduleService {
		
	@Resource(name="ScheduleDAO")
	private ScheduleDAO scheduleDAO;
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Schedule> scheduleSelectAll(int beesNo) {
		// TODO Auto-generated method stub
		ArrayList<Schedule> scheduleList = scheduleDAO.scheduleSelectAll(sqlSession, beesNo);
				
		return scheduleList;
	}

	public ScheduleDetail scheduleSelectOne(int scheduleNo) {
		// TODO Auto-generated method stub
		ScheduleDetail schedule = scheduleDAO.scheduleSelectOne(sqlSession, scheduleNo);
		return schedule;
	}

	public Schedule scheduleSelectOneFeed(int boardNo) {
		// TODO Auto-generated method stub
		
		Schedule schedule = scheduleDAO.scheduleSelectOneFeed(sqlSession, boardNo);
		return schedule;
	}

	public int deleteSchedule(int scheduleNo) {
		// TODO Auto-generated method stub
		int result = scheduleDAO.deleteSchedule(sqlSession, scheduleNo);
		return result;
	}

	public int insertSchedule(Schedule schedule) {
		// TODO Auto-generated method stub
		
		int result = scheduleDAO.insertSchedule(sqlSession, schedule);
		return result;
	}

	public ArrayList<Schedule> scheduleSelectAllMyBees(List<Integer> beesNo) {
		ArrayList<Schedule> scheduleList = scheduleDAO.scheduleSelectAllMyBees(sqlSession, beesNo);
		return scheduleList;
	}

}
