package com.an.mapper;

import java.util.List;

import com.an.pojo.Borrows;
import com.an.pojo.Overdues;

public interface BorrowMapper {
	
	
	public void insertBorrow(Borrows borrow);
	public List<Borrows> findBorrowById(int borrowId);
	public void returnBook(String bookName);
	public List<Borrows> findAllBorrow();
	public void updateDate(Borrows borrows);
	public int findBookCount(int borrowId);
	
	public void updateReturnDate(Borrows overduess);

}
