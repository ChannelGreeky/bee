package com.fourmeeting.bee.bees.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.bees.model.dao.BeesDAO;
import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.bees.model.vo.Setting;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;

@Service("beesService")
public class BeesService {
	
	@Autowired
	@Qualifier(value="beesDAO")
	private BeesDAO bDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public int insertBee(Bees bee) {
		int beeResult = bDAO.insertBee(sqlSession, bee);
		System.out.println(bee.getBeesName()+"/"+bee.getBeesCover()+"/"+bee.getBeesCategory()+"/"+bee.getBeesHost()+"/"+
				bee.getBeesPublicYN());
		return beeResult;
	}

	public Bees selectBeeSetting(Bees bee) {
		Bees beeResult = bDAO.selectBeeSetting(sqlSession, bee);
		return beeResult;
	}

	public int updateBeeSettingCover(Bees bee) {
		int beeResult = bDAO.updateBeeSettingCover(sqlSession, bee);
		return beeResult;
	}

	public int updateBeeSettingType(Bees bee) {
		int beeResult = bDAO.updateBeeSettingType(sqlSession, bee);
		return beeResult;
	}

	public int updateBeeSettingIntro(Bees bee) {
		int beeResult = bDAO.updateBeeSettingIntro(sqlSession, bee);
		return beeResult;
	}

	public int updateBeeSettingMaxMember(Bees bee) {
		int beeResult = bDAO.updateBeeSettingMaxMember(sqlSession, bee);
		return beeResult;
	}

	public int updateBeeSettingJoinStandard(Bees bee) {
		int beeResult = bDAO.updateBeeSettingJoinStandard(sqlSession, bee);
		return beeResult;
	}

	public ArrayList<BeesUserList> selectBeesUser(int beesNO) {
		ArrayList<BeesUserList> list = bDAO.selectBeesUser(sqlSession, beesNO);
		return list;

	}
	
	public Bees beesSelectOne(int beesNo) {
		// TODO Auto-generated method stub
		Bees bees = bDAO.beesSelectOne(sqlSession,beesNo);
		return bees;
	}

	public Setting selectBeesSetting(int beesNo) {
		// TODO Auto-generated method stub
		Setting setting = bDAO.selectBeesSetting(sqlSession,beesNo);
		return setting;
	}


}
