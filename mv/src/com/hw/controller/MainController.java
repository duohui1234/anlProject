package com.hw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
		
	@RequestMapping("/main.do")
	public String main(Model m) {
		return "main";
	}
	
	
	@RequestMapping("/manual.do")
	public String manual(Model m) {
		m.addAttribute("center","manual");
		return "main";
	}

	@RequestMapping("/anl.do")
	public String anl(Model m) {
		m.addAttribute("center","anl");
		return "main";
	}
	
	@RequestMapping("/about.do")
	public String about(Model m) {
		m.addAttribute("center","about");
		return "main";
	}
	
	@RequestMapping("/step1.do")
	public String step1(Model m) {
		m.addAttribute("center","step1");
		return "main";
	}
	
	@RequestMapping("/step2.do")
	public String step2(Model m,String FileName) {
		m.addAttribute("center","step2");
		m.addAttribute("data", FileName);
		return "main";
	}
	
}



