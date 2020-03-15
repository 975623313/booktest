package com.an.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.pojo.Overdues;
import com.an.service.OverdueService;

@Controller
@RequestMapping("/overdue")
public class OverdueController {
	
	@Autowired
	private OverdueService overdueService;
	
	@ResponseBody
	@RequestMapping("/deleteOverdue")
	public String findAllOverduce(int overdueId){
		
		this.overdueService.deleteOverdue(overdueId);
		
		return "success";
		
	}

}
