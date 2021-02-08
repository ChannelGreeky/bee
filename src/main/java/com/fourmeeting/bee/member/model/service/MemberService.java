package com.fourmeeting.bee.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.member.model.dao.MemberDAO;
import com.fourmeeting.bee.member.model.vo.Member;

@Service("memberService")
public class MemberService {
	
	@Autowired
	@Qualifier(value="memberDAO")
	private MemberDAO mDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public Member selectLoginMember(Member m) {
		
		Member member = mDAO.selectLoginMember(sqlSession, m);
		
		return member;
	}

	public int insertMemberSignUp(Member m) {
		int result = mDAO.insertMemberSignUp(sqlSession, m);
		
		return result;
	}

	public Member selectMemberIdCheck(String memberId) {
		
		Member member = mDAO.selectMemberIdCheck(sqlSession, memberId);
		
		return member;
	}
	
	public Member selectMemberEmailCheck(String memberEmail) {
		
		Member member = mDAO.selectMemberEmailCheck(sqlSession, memberEmail);
		
		return member;
	}
	
	public Member selectMemberPhoneCheck(String receiver) {
		
		Member member = mDAO.selectMemberPhoneCheck(sqlSession, receiver);
		
		return member;
	}
	
	public Member selectMemberFindId(Member m) {
		
		Member member = mDAO.selectMemberFindId(sqlSession, m);
		
		return member;
	}
	
	public Member selectMemberFindPw(Member m) {
		
		Member member = mDAO.selectMemberFindPw(sqlSession, m);
		
		return member;
	}

	public int updateMemberFindPw(Member m) {
		// TODO Auto-generated method stub
		int result = mDAO.updateMemberFindPw(sqlSession, m);
		
		return result;
	}
}
