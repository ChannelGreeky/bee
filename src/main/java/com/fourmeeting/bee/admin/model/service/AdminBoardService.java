package com.fourmeeting.bee.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.admin.model.dao.AdminBoardDAO;
import com.fourmeeting.bee.member.model.vo.Member;

@Service("adminBoardService")
public class AdminBoardService {

	@Autowired
	@Qualifier(value="adminBoardDAO")
	private AdminBoardDAO abDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	
	public ArrayList<Member> selectMemberAllList() {     //관리자 회원전체 리스트 조회용입니다.
		ArrayList<Member> list = abDAO.selectMemberAllList(sqlSession);
		return list;
		
	}


	public int withdrawalBtnChange(char delVal, int memberNum) {
		int result = abDAO.withdrawalBtnChange(sqlSession, delVal, memberNum);
		return result;
	}
	
}
