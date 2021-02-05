package com.fourmeeting.bee.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.member.model.vo.Member;

@Repository("memberDAO")
public class MemberDAO {
	public Member selectLoginMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		Member member = sqlSession.selectOne("member.selectLoginMember", m);

		return member;
	}

	public int insertMemberSignUp(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("member.insertMemberSignUp", m);

		return result;
	}

	public Member selectMemberIdCheck(SqlSessionTemplate sqlSession, String memberId) {
		// TODO Auto-generated method stub
		Member member = sqlSession.selectOne("member.selectMemberIdCheck", memberId);

		return member;
	}
	
	public Member selectMemberEmailCheck(SqlSessionTemplate sqlSession, String memberEmail) {
		// TODO Auto-generated method stub
		Member member = sqlSession.selectOne("member.selectMemberEmailCheck", memberEmail);

		return member;
	}
}
