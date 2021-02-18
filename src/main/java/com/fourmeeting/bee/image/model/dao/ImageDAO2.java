package com.fourmeeting.bee.image.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.image.model.vo.AttachFileDTO;

@Repository("imageDAO2")
public class ImageDAO2 {

	public int insertOnlyImage(Map<String, Object> map, SqlSessionTemplate sqlSession) {
		int result = sqlSession.insert("notice.insertOnlyImage", map);
		return result;
		
	}

	public int updateDeleteImage(AttachFileDTO aDTO, SqlSessionTemplate sqlSession) {
		System.out.println("삭제하러 왔니?DAO");
		
		
		System.out.println(aDTO.getImgDelYN());
		System.out.println(aDTO.getChangeFileName());
		System.out.println(aDTO.getMemberNo());
		int result = sqlSession.update("notice.updateDeleteImage",aDTO);
		System.out.println("삭제하고 간다?DAO");
		return result;
	}

	public ArrayList<AttachFileDTO> selectAllImage(SqlSessionTemplate sqlSession, BeesUser b) {
		List list = sqlSession.selectList("notice.selectAllImage", b);
		return (ArrayList<AttachFileDTO>)list;
		
	}

}
