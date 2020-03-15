package com.an.pojo;

import java.util.Date;

public class Borrows {

	private int borrowId;
	private String bookName;
	private String readerName;
	private Date borrowDate;
	private Date returnDate;
	private int expireDate;
	private int borrowStatus;
	public int getBorrowId() {
		return borrowId;
	}
	public void setBorrowId(int borrowId) {
		this.borrowId = borrowId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getReaderName() {
		return readerName;
	}
	public void setReaderName(String readerName) {
		this.readerName = readerName;
	}
	public Date getBorrowDate() {
		return borrowDate;
	}
	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public int getBorrowStatus() {
		return borrowStatus;
	}
	public void setBorrowStatus(int borrowStatus) {
		this.borrowStatus = borrowStatus;
	}
	public int getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(int expireDate) {
		this.expireDate = expireDate;
	}
	
	
	
}
