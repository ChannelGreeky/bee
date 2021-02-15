package com.fourmeeting.bee.schedule.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.schedule.model.vo.Schedule;
import com.fourmeeting.bee.schedule.model.vo.ScheduleDetail;


@Repository("ScheduleDAO")
public class ScheduleDAO {

	public ArrayList<Schedule> scheduleSelectAll(SqlSessionTemplate sqlSession, int beesNo) {
		// TODO Auto-generated method stub
		List list = sqlSession.selectList("schedule.scheduleSelectAll", beesNo);
		return (ArrayList<Schedule>)list;
	}

	public ScheduleDetail scheduleSelectOne(SqlSessionTemplate sqlSession, int scheduleNo) {
		// TODO Auto-generated method stub
		ScheduleDetail schedule = sqlSession.selectOne("schedule.scheduleSelectOne",scheduleNo);
		return schedule;
	}

	public Schedule scheduleSelectOneFeed(SqlSessionTemplate sqlSession, int boardNo) {
		// TODO Auto-generated method stub
		Schedule schedule = sqlSession.selectOne("schedule.scheduleSelectOneFeed",boardNo);
		return schedule;
	}

	public int deleteSchedule(SqlSessionTemplate sqlSession, int scheduleNo) {
		// TODO Auto-generated method stub
		int result = sqlSession.delete("schedule.deleteSchedule",scheduleNo);
		return result;
	}

	public int insertSchedule(SqlSessionTemplate sqlSession, Schedule schedule) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("schedule.insertSchedule",schedule);
		return result;
	}

	public ArrayList<Schedule> scheduleSelectAllMyBees(SqlSessionTemplate sqlSession, List<Integer> beesNo) {
		// TODO Auto-generated method stub
		List list = sqlSession.selectList("schedule.scheduleSelectAllMyBees", beesNo);
		return (ArrayList<Schedule>)list;
	}

}
