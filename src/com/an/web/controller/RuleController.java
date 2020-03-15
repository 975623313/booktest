package com.an.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.pojo.Rules;
import com.an.service.RuleService;

@Controller
@RequestMapping("/rule")
public class RuleController {
	@Autowired
	private RuleService ruleService;
	
//	@RequestMapping("/findAll")
//	public String findAll(Model model){
//		return
//	}
	@RequestMapping("/insertRule")
	public String addRule(Rules rules){
		System.out.println(rules.getRuleId());
		System.out.println(rules.getRuleContent());
		this.ruleService.addRules(rules);
		
		
		return "redirect:/notice/findAllNotice";

	}
	@ResponseBody
	@RequestMapping("/deleteRule")
	public String deleteRule(int ruleId){
		
		this.ruleService.deleteRules(ruleId);
		return "success";
	}
	
	@RequestMapping("/showupdateRule/{ruleId}")
	public String showupdateRule(@PathVariable int ruleId,Model model){
		

		Rules rule = this.ruleService.findById(ruleId);
		model.addAttribute("rule", rule);		
		return "updateRule";
	
	}
	@RequestMapping("/updateRule")
	public String updateRule(Rules rule){
		
		this.ruleService.updateRule(rule);
		
		return "redirect:/notice/findAllNotice";
		
		
	}
	
	
	

}
