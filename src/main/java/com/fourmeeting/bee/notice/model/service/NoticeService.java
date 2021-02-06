package com.fourmeeting.bee.notice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.notice.model.dao.NoticeDAO;

@Service("noticeService")
public class NoticeService {

	@Autowired
	@Qualifier(value="noticeDAO")
	private NoticeDAO nDAO;
}
