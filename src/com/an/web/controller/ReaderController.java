package com.an.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.commons.DataUtil;
import com.an.pojo.Borrows;
import com.an.pojo.Readers;
import com.an.service.BorrowService;
import com.an.service.ReaderService;

@Controller
@RequestMapping("/reader")
public class ReaderController {

	@Autowired
	private ReaderService readerService;
	@Autowired
	private BorrowService borrowService;
	
	@RequestMapping("/findReader")
	public String findReader(Model model){
		
		Date nowDate = new Date();
		List<Borrows> lists = this.borrowService.findAllBorrow();
		for (Borrows borrows : lists) {
			int now = (int) (nowDate.getTime() / (24 * 60 * 60 * 1000));
			int bo = (int) ((borrows.getBorrowDate().getTime()) / (24 * 60 * 60 * 1000));
			//
			// System.out.println(q);
			// System.out.println(w);
			borrows.setExpireDate(now-bo);
			
			this.borrowService.updateDate(borrows);
		}
		
		
		
		
		
		
		List<Readers> list = this.readerService.findAllReaders();
		
		model.addAttribute("list", list);
		return "reader";

	}
	@RequestMapping("/addReader")
	public String addReader(Readers reader){
		this.readerService.addReader(reader);
		return "redirect:/reader/findReader";
		
	}
	

	@RequestMapping("/addRegReader")
	public String addRegReader(Readers reader){
		this.readerService.addReader(reader);
		return "redirect:/login";
		
	}
	
	
	@ResponseBody
	@RequestMapping("/deleteReader")
	public String deleteReader(int readerId){
		this.readerService.deleteReader(readerId);
		
		return "success";
	}
	
	@RequestMapping("/findBorrowBook/{readerId}")
	public String findBorrowBook(@PathVariable int readerId,Model model){
		
		
		
		List<Borrows> list = this.readerService.findBorrowBook(readerId);
		
		
		model.addAttribute("list", list);
		return "borrow";
	}
	
	
	
	
	
}
