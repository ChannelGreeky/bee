package com.fourmeeting.bee.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.admin.model.vo.Criteria;
import com.fourmeeting.bee.member.model.vo.Member;
import com.fourmeeting.bee.notice.model.vo.Notice;

@Repository("adminBoardDAO")
public class AdminBoardDAO {

	public ArrayList<Member> selectMemberAllList(SqlSessionTemplate sqlSession, Criteria cri) {
		List list = sqlSession.selectList("notice.selectMemberAllList", cri);
		return (ArrayList<Member>)list;
	}

	public int withdrawalBtnChange(SqlSessionTemplate sqlSession, char delVal, int memberNum) {
		Member m = new Member();
		m.setDelYN(delVal);
		m.setMemberNo(memberNum);
		System.out.println(m.getMemberEndDate());
		System.out.println(m.getDelYN() + "," + m.getMemberNo());
		int result = sqlSession.update("notice.updateMemberDelYN", m);
		return result;
		
	}

	public int getTotal(Criteria cri, SqlSessionTemplate sqlSession) {
		int total = sqlSession.selectOne("notice.totalCount",cri);
		System.out.println(total);
		return total;
	}

	

}
