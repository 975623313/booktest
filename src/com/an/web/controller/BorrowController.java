package com.an.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.pojo.Borrows;
import com.an.pojo.Readers;
import com.an.service.BookService;
import com.an.service.BorrowService;
import com.an.service.ReaderService;

@Controller
@RequestMapping("/borrow")
public class BorrowController {
	
	@Autowired
	private BorrowService borrowService;
	@Autowired
	private BookService bookService;
	


	
	
	@RequestMapping("/insertBorrow")
	public String insertBorrow(Borrows borrow){
		this.borrowService.insertBorrow(borrow);
		this.bookService.deleteOneBookByBookName(borrow.getBookName());
		
		return "redirect:/reader/findReader";
	}
	
//	@ResponseBody
//	@RequestMapping("/IsshowBorrow")
//	public String IsshowBorrow(int readerId,Model model){
//		
//		Readers reader = this.borrowService.findReaderById(readerId);
//		int i = this.borrowService.findBookCount(reader.getBorrowId());
//
//		if(i<=5){
//			
//			return "success";
//		}else{
//			return "no";
//		}
//		
//	}
	
	@RequestMapping("/showBorrow/{readerId}")
	public String showBorrow(@PathVariable int readerId,Model model){
		
		Readers readers = this.borrowService.findReaderById(readerId);
		int i = this.borrowService.findBookCount(readers.getBorrowId());
		
		
if(i<5){
	Readers reader = this.borrowService.findReaderById(readerId);
	model.addAttribute("reader",reader);
	
	return "addBorrow";
		}else{
			return "ok";
		}
		
		
	}
	
	
	@ResponseBody
	@RequestMapping("/returnBook")
	public String returnBook(String bookName){
		
		this.borrowService.returnBook(bookName);
		return "success";
		
	}

}
