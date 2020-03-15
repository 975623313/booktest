package com.an.mapper;

import java.util.List;

import com.an.pojo.Overdues;

public interface OverdueMapper {
	public List<Overdues> findAllOverdue();
	
	public Overdues findByBookName(String bookName);
	
	public void addOverdue(Overdues overdue);
	
	public void updateOverdue(Overdues overdue);
	public void deleteOverdue(int overdue);
	

}
