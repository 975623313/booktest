package com.an.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.an.pojo.Borrows;
import com.an.pojo.Infos;
import com.an.pojo.Notices;
import com.an.pojo.Overdues;
import com.an.pojo.Rules;
import com.an.service.BorrowService;
import com.an.service.InfoService;
import com.an.service.NoticeService;
import com.an.service.OverdueService;
import com.an.service.RuleService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

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
	
	@RequestMapping("/findAllNotice")
	public String findAllNotice(Model model){
		
		
		Date nowDate = new Date();
		List<Borrows> lists = this.borrowService.findAllBorrow();
		
		
		
		
		
		for (Borrows borrows : lists) {
			
			int now = (int) (nowDate.getTime() / (24 * 60 * 60 * 1000));
			int re = (int) ((borrows.getReturnDate().getTime()) / (24 * 60 * 60 * 1000));
			//
			// System.out.println(q);
			// System.out.println(w);
			if(now>=re){
				Overdues overdue = this.overdueService.findByBookName(borrows.getBookName());
				if(overdue==null){
					Overdues overdues = new Overdues();
					overdues.setBookName(borrows.getBookName());
					overdues.setReaderName(borrows.getReaderName());
					overdues.setOverdueDate(now-re);
					this.overdueService.addOverdue(overdues);
					
				}else{
					
					overdue.setOverdueDate(now-re);
					this.overdueService.updateOverdue(overdue);
				}
				
				
			}
			
			this.borrowService.updateDate(borrows);
		}
		
		
		
		
		
		
		
		
		List<Rules> listR = this.ruleService.findAllRule();
		List<Infos> listI = this.infoService.findAllInfo();
		List<Overdues> listO = this.overdueService.findAllOverdue();
		
		
	
		
		model.addAttribute("listR", listR);
		model.addAttribute("listI", listI);
		model.addAttribute("listO", listO);
		return "notice";
		
	}
	@RequestMapping("/insertNotice")
	public String insertNotice(Notices notice){
		this.noticeService.addNotices(notice);
		
		
		
		return "redirect:/notice/findAllNotice";
	}
}
