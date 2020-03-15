package com.an.mapper;

import java.util.List;


import com.an.pojo.Notices;

public interface NoticeMapper {
	
	
	public List<Notices> findAllNotices();
	//public void addNotice(Notices notice);
	void addNotices(Notices notices);
	

}
