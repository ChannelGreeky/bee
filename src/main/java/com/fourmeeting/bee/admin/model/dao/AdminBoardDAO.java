package com.fourmeeting.bee.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.member.model.vo.Member;

@Repository("adminBoardDAO")
public class AdminBoardDAO {

	public ArrayList<Member> selectMemberAllList(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("notice.selectMemberAllList");
		return (ArrayList<Member>)list;
	}

	public int withdrawalBtnChange(SqlSessionTemplate sqlSession, char delVal, int memberNum) {
		Member m = new Member();
		m.setDelYN(delVal);
		m.setMemberNo(memberNum);
		System.out.println(m.getDelYN() + "," + m.getMemberNo());
		int result = sqlSession.update("notice.updateMemberDelYN", m);
		return result;
		
	}

}
