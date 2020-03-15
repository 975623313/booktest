package com.an.service;

import java.util.List;

import com.an.pojo.Books;
import com.an.pojo.SearchKey;

public interface BookService {

	public List<Books> findAllBooks();

	void add(Books book);
	
	
	void deleteBooks(int bookId);
	
	
	public Books findBookById(int bookId);
	
	public void deleteOneBook(int bookId);
	
	public void addOnebook(int bookId);
	public void deleteOneBookByBookName(String bookName);
	public List<Books> searchBook(SearchKey searchKey);
}
