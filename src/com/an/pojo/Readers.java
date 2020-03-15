package com.an.pojo;


public class Readers {

	
	private int readerId;
	private String readerName;
	private String readerAddress;
	private String readerContact;//联系方式
	private String account;
	private String password;
	private int borrowId;
	private int returnId;
	private int punishId;
	private int statusCode;
	public int getReaderId() {
		return readerId;
	}
	public void setReaderId(int readerId) {
		this.readerId = readerId;
	}
	public String getReaderName() {
		return readerName;
	}
	public void setReaderName(String readerName) {
		this.readerName = readerName;
	}
	public String getReaderAddress() {
		return readerAddress;
	}
	public void setReaderAddress(String readerAddress) {
		this.readerAddress = readerAddress;
	}
	public String getReaderContact() {
		return readerContact;
	}
	public void setReaderContact(String readerContact) {
		this.readerContact = readerContact;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getBorrowId() {
		return borrowId;
	}
	public void setBorrowId(int borrowId) {
		this.borrowId = borrowId;
	}
	public int getReturnId() {
		return returnId;
	}
	public void setReturnId(int returnId) {
		this.returnId = returnId;
	}
	public int getPunishId() {
		return punishId;
	}
	public void setPunishId(int punishId) {
		this.punishId = punishId;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	
	
	@Override
	public String toString() {
		return "Readers [readerId=" + readerId + ", readerName=" + readerName + ", readerAddress=" + readerAddress
				+ ", readerContact=" + readerContact + ", account=" + account + ", password=" + password + ", borrowId="
				+ borrowId + ", returnId=" + returnId + ", punishId=" + punishId + ", statusCode=" + statusCode + "]";
	}
	
}
