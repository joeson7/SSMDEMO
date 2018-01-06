package org.lanqiao.controller;


import javax.servlet.http.HttpServletRequest;

import org.lanqiao.service.StudentsService;
import org.lanqiao.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StuController {
	
	@Autowired
	StudentsService stuService;
	
	@RequestMapping("index")
	public String getAllStudent(Model model,HttpServletRequest request){
		model.addAttribute("stuList", stuService.getAllStudents());
		String IP = StringUtil.getIP(request);
		System.out.println("IP地址为:" + IP);
		return "index";
	}
}
