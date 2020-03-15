package com.an.service;

import java.util.List;

import com.an.pojo.Borrows;
import com.an.pojo.Overdues;
import com.an.pojo.Readers;

public interface BorrowService {

	public void insertBorrow(Borrows borrow);
	public Readers findReaderById(int readerId);
	public void returnBook(String bookName);
	public List<Borrows> findAllBorrow();
	public void updateDate(Borrows borrow);
	public int findBookCount(int borrowId);

}
