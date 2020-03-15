package com.an.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.commons.DataUtil;
import com.an.mapper.BorrowMapper;
import com.an.mapper.ReaderMapper;
import com.an.pojo.Borrows;
import com.an.pojo.Readers;
import com.an.service.BorrowService;

@Service
public class BorrowServiceImpl implements BorrowService {
	
	@Autowired
	private BorrowMapper borrowMapper;
	@Autowired
	private ReaderMapper readerMapper;

	@Override
	public void insertBorrow(Borrows borrow){
		
		Date date = new Date();
		borrow.setBorrowDate(date);
		Date newDate = DataUtil.addDate(date, 30); 
		borrow.setReturnDate(newDate);
		borrow.setExpireDate(30);
		this.borrowMapper.insertBorrow(borrow);
		
	}

	@Override
	public Readers findReaderById(int readerId) {
		// TODO Auto-generated method stub
		return this.readerMapper.findReaderById(readerId);
	}

	@Override
	public void returnBook(String bookName) {
		this.borrowMapper.returnBook(bookName);
		
	}

	@Override
	public void updateDate(Borrows borrow) {
		this.borrowMapper.updateDate(borrow);
		
	}

	@Override
	public List<Borrows> findAllBorrow() {
		// TODO Auto-generated method stub
		return this.borrowMapper.findAllBorrow();
	}

	@Override
	public int findBookCount(int borrowId) {
		// TODO Auto-generated method stub
		return this.borrowMapper.findBookCount(borrowId);
	}

}
