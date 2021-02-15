package com.fourmeeting.bee.beesuser.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.dao.BeesUserDAO;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;

@Service("BeesUserService")
public class BeesUserService {
	
	@Resource(name="BeesUserDAO")
	private BeesUserDAO userDAO;
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public int userCount(int beesNo) {
		// TODO Auto-generated method stub
		
		int userCount = userDAO.userCount(sqlSession,beesNo);
		return userCount;
	}

	public BeesUser userSelectOne(int memberNo, int beesNo) {
		// TODO Auto-generated method stub
		
		BeesUser user = userDAO.userSelectOne(sqlSession,memberNo,beesNo);
		return user;
	}

	public int insertBeesUser(BeesUser user) {
		// TODO Auto-generated method stub
		
		int result = userDAO.insertBeesUser(sqlSession,user);
		return result;
	}

	public List<Integer> selectAllBeesNo(int memberNo) {
		// TODO Auto-generated method stub
		List<Integer> beesNo = userDAO.selectAllBeesNo(sqlSession, memberNo);
		return beesNo;
	}


	

}
