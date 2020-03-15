package com.an.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.mapper.BorrowMapper;
import com.an.mapper.ReaderMapper;
import com.an.pojo.Borrows;
import com.an.pojo.Readers;
import com.an.service.ReaderService;

@Service
public class ReaderServiceImpl implements ReaderService {

	@Autowired
	private ReaderMapper readerMapper;
	@Autowired
	private BorrowMapper borrowMapper;

	@Override
	public List<Readers> findAllReaders() {
		return this.readerMapper.findAllReader();
	}

	@Override
	public void addReader(Readers reader) {
		// reader.setBorrowId(reader.getReaderId());
		// reader.setPunishId(reader.getReaderId());
		// reader.setReturnId(reader.getReaderId());
		this.readerMapper.addReader(reader);

		Readers readerOther = this.readerMapper.findReaderByName(reader.getReaderName());
		System.out.println(reader.getReaderId());
		readerOther.setBorrowId(readerOther.getReaderId());
		readerOther.setPunishId(readerOther.getReaderId());
		readerOther.setReturnId(readerOther.getReaderId());
		this.readerMapper.updateOtherId(readerOther);

	}

	@Override
	public void deleteReader(int readerId) {

		this.readerMapper.deleteReader(readerId);
	}

	@Override
	public List<Borrows> findBorrowBook(int readerId) {
		
		Readers reader = this.readerMapper.findReaderById(readerId);
		System.out.println(reader.getBorrowId()+"qqqqqqqqqqqqqqqqqqqqqqqqq");

		return this.borrowMapper.findBorrowById(reader.getBorrowId());
	}

	@Override
	public Readers loginFind(String account, String password) {
		// TODO Auto-generated method stub
		return this.readerMapper.loginFind(account, password);
	}

}
