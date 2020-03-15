package com.an.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.an.pojo.Infos;
import com.an.service.InfoService;

@Controller
@RequestMapping("/info")
public class InfoController {

	@Autowired
	private InfoService infoService;
	
	
	@RequestMapping("/insertInfo")
	public String addInfo(Infos infos){
		this.infoService.addInfos(infos);
		return "redirect:/notice/findAllNotice";
		
	}
	
	
	@ResponseBody
	@RequestMapping("/deleteInfo")
	public String deleteRule(int infoId){
		
		this.infoService.deleteInfos(infoId);
		return "success";
	}
	
	@RequestMapping("/showupdateInfo/{infoId}")
	public String showupdateInfo(@PathVariable int infoId,Model model){
		Infos info = this.infoService.findById(infoId);
		model.addAttribute("info", info);
		return "updateInfo";
	}
	@RequestMapping("/updateInfo")
	public String updateInfo(Infos info){
		this.infoService.updateInfo(info);
		
		
		return "redirect:/notice/findAllNotice";
	}
	
	
	
}
