package com.fourmeeting.bee.beesuser.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.beesuser.model.vo.UserSelect;


@Repository("BeesUserDAO")
public class BeesUserDAO {

	public int userCount(SqlSessionTemplate sqlSession, int beesNo) {
		// TODO Auto-generated method stub
		int userCount = sqlSession.selectOne("beesUser.userCount", beesNo);
		
		return userCount;
	}

	public BeesUser userSelectOne(SqlSessionTemplate sqlSession, int memberNo, int beesNo) {
		// TODO Auto-generated method stub
		
		UserSelect userSelect = new UserSelect(memberNo, beesNo);
		BeesUser user = sqlSession.selectOne("beesUser.userSelectOne", userSelect);
		return user;
	}

	public int insertBeesUser(SqlSessionTemplate sqlSession, BeesUser user) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("beesUser.insertBeesUser",user);
		return result;
	}

	public List<Integer> selectAllBeesNo(SqlSessionTemplate sqlSession, int memberNo) {
		// TODO Auto-generated method stub
		List<Integer> beesNo = sqlSession.selectList("beesUser.selectAllBeesNo",memberNo);
		
		return (List<Integer>)beesNo;
	}
	
	
	

}
