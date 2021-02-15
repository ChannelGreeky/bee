package com.fourmeeting.bee.beesuser.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserSelect;
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
	
	
	
	/*------------solm----------*/
	
public ArrayList<BeesUserList> selectBeesUser(SqlSessionTemplate splSession, String mainpage_option) {
		
		System.out.println("[BeesUser-DAO] 호출");
		List list = splSession.selectList("beesUserList.selectBeesUser", mainpage_option);
		
		System.out.println("----------------------------------------------");
		for(BeesUserList b : (ArrayList<BeesUserList>)list)
		{
			System.out.println(b.getUserName() + " / " + b.getUserAuthDate());
		}
		System.out.println("----------------------------------------------");
		
		return (ArrayList<BeesUserList>)list;
		
	}

	public ArrayList<BeesUserList> selectBeesUserSearch(SqlSessionTemplate splSession, String keyword, String option) {
		System.out.println("[BeesUserSearch-DAO] 호출");
		
		BeesUserSelect buSelect = new BeesUserSelect();
		buSelect.setKeyword(keyword);
		buSelect.setOption(option);
		
		List list = splSession.selectList("beesUserList.selectBeesUserSearch", buSelect);
		
		System.out.println("----------------------------------------------");
		for(BeesUserList b : (ArrayList<BeesUserList>)list)
		{
			System.out.println(b.getUserName() + " / " + b.getUserAuthDate());
		}
		System.out.println("----------------------------------------------");
		
		
		return (ArrayList<BeesUserList>)list;
		
	}

	public ArrayList<BeesUserList> selectBeesApplicant(SqlSessionTemplate splSession) {
		System.out.println("[beesApplicant-DAO] 호출");
		List list = splSession.selectList("beesUserList.selectBeesApplicant");
		
		return (ArrayList<BeesUserList>)list;
		
	}

	public int updateBeesUserRefusal(String userName, SqlSessionTemplate splSession) {
		System.out.println("[BeesUserRefusal-DAO] 호출");
		
		int result = splSession.update("beesUser.updateBeesUserRefusal", userName);
		System.out.println("updateBeesUserRefusal" + result);
		System.out.println(userName);
		return result;
		
	}

	public int updateBeesUserApproval(String userName, SqlSessionTemplate splSession) {
		int result = splSession.update("beesUser.updateBeesUserApproval", userName);
		System.out.println("승인 성공 : " + result);
		return result;
	}

	public BeesUser selectBeesUserClass(SqlSessionTemplate splSession, int memberNo) {
		
		BeesUser beesUser = splSession.selectOne("beesUser.selectBeesUserClass", memberNo);
		return beesUser;
	}

	public ArrayList<BeesUserList> selectBeesUserWaiters(SqlSessionTemplate splSession) {
		List WaitersList = splSession.selectList("beesUser.selectBeesUserWaiters");
		return (ArrayList<BeesUserList>)WaitersList;
		
	}

	

}
