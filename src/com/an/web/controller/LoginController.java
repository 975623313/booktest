package com.an.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.an.commons.ObjectUtils;
import com.an.pojo.Readers;
import com.an.service.ReaderService;

@Controller
@RequestMapping("/ll")
public class LoginController {
	
	@Autowired
	private ReaderService readerService;
	
	@RequestMapping(value="/toLogin",method=RequestMethod.POST)
	public String loginToJudge(Readers reader,HttpSession session){
		
		
		
		Readers readers = this.readerService.loginFind(reader.getAccount(),reader.getPassword());
		System.out.println(readers);
		ObjectUtils objU = new ObjectUtils();
		if(objU.isNotEmpty(readers)&&objU.isNotNull(readers)){
		if(readers.getStatusCode()==100){
			session.setAttribute("readers", readers);

			return "redirect:/user/findUserBorrow/"+readers.getReaderId();
		}else if(readers.getStatusCode()==200){
			session.setAttribute("readers", readers);
			return "redirect:/index";
		}else{
			return "redirect:/login";
		}
		}else{
			return "redirect:/login";
		}
		
		
		
		
		
		

	}
	@RequestMapping("/exitLogin")
	public String exitLogin(){
		 return "redirect:/login";
	}

}
