package com.an.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.mapper.BookMapper;
import com.an.pojo.Books;
import com.an.pojo.SearchKey;
import com.an.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper bookMapper;
	
	@Override
	public List<Books> findAllBooks() {
		
		return this.bookMapper.findA();
	}
	@Override
	public void add(Books book) {
		this.bookMapper.addBooks(book);
		
	}
	@Override
	public void deleteBooks(int bookId) {
		this.bookMapper.deleteBook(bookId);
		
	}
	@Override
	public Books findBookById(int bookId) {
		// TODO Auto-generated method stub
		return this.bookMapper.findById(bookId);}
	@Override
	public void deleteOneBook(int bookId) {
		this.bookMapper.deleteOneBook(bookId);
		
	}
	@Override
	public void addOnebook(int bookId) {
		this.bookMapper.addOneBook(bookId);
		
	}
	@Override
	public void deleteOneBookByBookName(String bookName) {
		this.bookMapper.deleteOneBookByBookName(bookName);
		
	}
	@Override
	public List<Books> searchBook(SearchKey searchKey) {
		
		return this.bookMapper.searchBook(searchKey);
	}
	
	
	

	

}
