package com.skilldistillery.fallout.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.fallout.data.FOCharacterDAO;

@Controller
public class FOCharacterController {
	
	@Autowired
	private FOCharacterDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		System.out.println("In the controller");
		model.addAttribute("focharacter", dao.findById(1));
		System.out.println(dao.findById(1));
		
		return "index";
		
		
	}
	
}
