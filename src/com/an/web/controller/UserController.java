package com.an.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.pojo.Books;
import com.an.pojo.Borrows;
import com.an.pojo.Infos;
import com.an.pojo.Overdues;
import com.an.pojo.Readers;
import com.an.pojo.Rules;
import com.an.service.BookService;
import com.an.service.BorrowService;
import com.an.service.InfoService;
import com.an.service.NoticeService;
import com.an.service.OverdueService;
import com.an.service.ReaderService;
import com.an.service.RuleService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private ReaderService readerService;
	
	@Autowired
	private BookService bookService;

	@Autowired
	private NoticeService noticeService;

	@Autowired
	private RuleService ruleService;

	@Autowired
	private InfoService infoService;

	@Autowired
	private OverdueService overdueService;

	@Autowired
	private BorrowService borrowService;

	// @RequestMapping("findUserBook")
	@RequestMapping("/findUserBooks")
	public String findUserBooks(Model model) {

		List<Books> list = this.bookService.findAllBooks();
		model.addAttribute("list", list);

		return "userBook";
	}

	
	@RequestMapping("/findUserNotice")
	public String findUserNotice(Model model) {
		
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

		Date nowDate = new Date();
		List<Borrows> lists = this.borrowService.findAllBorrow();
		for (Borrows borrows : lists) {
			int now = (int) (nowDate.getTime() / (24 * 60 * 60 * 1000));
			int re = (int) ((borrows.getReturnDate().getTime()) / (24 * 60 * 60 * 1000));
			//
			// System.out.println(q);
			// System.out.println(w);
			if (now >= re) {
				Overdues overdue = this.overdueService.findByBookName(borrows.getBookName());
				if (overdue == null) {
					Overdues overdues = new Overdues();
					overdues.setBookName(borrows.getBookName());
					overdues.setReaderName(borrows.getReaderName());
					overdues.setOverdueDate(now - re);
					this.overdueService.addOverdue(overdues);

				} else {

					overdue.setOverdueDate(now - re);
					this.overdueService.updateOverdue(overdue);
				}

			}

			this.borrowService.updateDate(borrows);
		}

		List<Rules> listR = this.ruleService.findAllRule();
		List<Infos> listI = this.infoService.findAllInfo();
		List<Overdues> listO = this.overdueService.findAllOverdue();

		System.out.println(listI);
		model.addAttribute("listR", listR);
		model.addAttribute("listI", listI);
		model.addAttribute("listO", listO);
		//return "redirect:/book/findAllBooks";
		return "userNotice";

	}
	
	
	
	@RequestMapping("/findUserBorrow/{readerId}")
	public String findUserBorrow(@PathVariable int readerId,Model model){
		Readers reader = this.borrowService.findReaderById(readerId);
		model.addAttribute("reader", reader);
		return "user";
	}
	

	
	
	
	
	@RequestMapping("/findUserBorrowBook/{readerId}")
	public String findUserBorrowBook(@PathVariable int readerId,Model model){
		
		
		
		List<Borrows> list = this.readerService.findBorrowBook(readerId);
		
		
		model.addAttribute("list", list);
		return "addUserBorrow";
	}
	
	
	
	

}
