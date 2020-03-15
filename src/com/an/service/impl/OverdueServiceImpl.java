package com.an.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.mapper.OverdueMapper;
import com.an.pojo.Overdues;
import com.an.service.OverdueService;

@Service
public class OverdueServiceImpl implements OverdueService {

	@Autowired
	private OverdueMapper overdueMapper;
	
	@Override
	public List<Overdues> findAllOverdue() {
		// TODO Auto-generated method stub
		return this.overdueMapper.findAllOverdue();
	}

	@Override
	public Overdues findByBookName(String bookName) {
		// TODO Auto-generated method stub
		return this.overdueMapper.findByBookName(bookName);
	}

	@Override
	public void addOverdue(Overdues overdue) {
		this.overdueMapper.addOverdue(overdue);
		
	}

	@Override
	public void updateOverdue(Overdues overdue) {
		this.overdueMapper.updateOverdue(overdue);
		
	}

	@Override
	public void deleteOverdue(int overdueId) {

		this.overdueMapper.deleteOverdue(overdueId);
	}

	

	

	
}
