package com.an.service;

import java.util.List;

import com.an.pojo.Notices;

public interface NoticeService {

	public List<Notices> findAllNotice();
	public void addNotices(Notices notice);
}
