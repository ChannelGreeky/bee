package com.fourmeeting.bee.bees.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;

@Repository("beesDAO")
public class BeesDAO {

	public int insertBee(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.insert("bees.insertBee", bee);		
		return beeResult;
	}

	public Bees selectBeeSetting(SqlSessionTemplate sqlSession, Bees bee) {
		Bees beeResult = sqlSession.selectOne("bees.selectBeeSetting", bee);
		return beeResult;
	}

	public int updateBeeSettingCover(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.update("bees.updateBeeSettingCover", bee);		
		return beeResult;
	}

	public int updateBeeSettingType(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.update("bees.updateBeeSettingType", bee);		
		return beeResult;
	}

	public int updateBeeSettingIntro(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.update("bees.updateBeeSettingIntro", bee);		
		return beeResult;
	}

	public int updateBeeSettingMaxMember(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.update("bees.updateBeeSettingMaxMember", bee);		
		return beeResult;
	}

	public int updateBeeSettingJoinStandard(SqlSessionTemplate sqlSession, Bees bee) {
		int beeResult = sqlSession.update("bees.updateBeeSettingJoinStandard", bee);		
		return beeResult;
	}

	public ArrayList<BeesUserList> selectBeesUser(SqlSessionTemplate sqlSession, int beesNO) {
		List list = sqlSession.selectList("bees.selectBeesUser", beesNO);		
		return (ArrayList<BeesUserList>)list;

	}

}
