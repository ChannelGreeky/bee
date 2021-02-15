package com.fourmeeting.bee.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.notice.model.vo.Notice;

@Repository("noticeDAO")
public class NoticeDAO {

	public int noticeInsert(SqlSessionTemplate sqlSession, Notice n) {
		System.out.println("noticeInsert dao");
		int result = sqlSession.insert("notice.noticeInsert", n);
		return result;
	}

	public ArrayList<Notice> noticeSelectAll(SqlSessionTemplate sqlSession) {
		System.out.println("noticeSelectAll dao");
		List list = sqlSession.selectList("notice.noticeSelectAll");
		return (ArrayList<Notice>)list;
	}

	public int deleteBtnChange(SqlSessionTemplate sqlSession, char btnVal, int boardNum) {
		System.out.println("deleteBtnChange dao");
		Notice n = new Notice();
		n.setNoticeNo(boardNum);
		n.setNoticeDelYN(btnVal);
		int result = sqlSession.update("notice.noticeBtnUpdate", n);
		return result;
		
	}
	public Notice modifyChange(SqlSessionTemplate sqlSession, int num) {
		System.out.println("modifyChange dao");
		Notice n = sqlSession.selectOne("notice.noticeSelectOne", num);
		System.out.println("modifyChange dao2");
		return n;
		
	}

	public int modifyUpdate(Notice n, SqlSessionTemplate sqlSession) {
		int result = sqlSession.update("notice.modifyUpdate", n);
		return result;
	}

}
