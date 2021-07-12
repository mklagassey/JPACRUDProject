package com.skilldistillery.fallout.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.fallout.data.FOCharacterDAO;
import com.skilldistillery.fallout.entities.FalloutCharacter;

@Controller
public class FOCharacterController {
	
	@Autowired
	private FOCharacterDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		return "index";	
	}
	@RequestMapping("search-character.do")
	public String search(Model model) {	
		return "search-character";
	}
	
	@RequestMapping("id-search.do")
	public String idSearch(Model model) {	
		return "id-search";
	}
	@RequestMapping("keyword-search.do")
	public String keywordSearch(Model model) {	
		return "keyword-search";
	}
	@RequestMapping("create-character.do")
	public String createCharacter(Model model) {	
		return "create-character";
	}
	
	@RequestMapping(path="GetByKeyword.do")
	public ModelAndView getCharByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<FalloutCharacter> characterList = dao.findCharBySearchString(keyword);
		System.out.println("in controller, list is empty " + characterList.isEmpty());
		if (characterList.isEmpty()) {
			mv.setViewName("error");
		} else {
			mv.setViewName("results");
		}
		try {
			mv.addObject("focharacters", characterList);
			System.out.println(mv.toString());
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("GetCharData.do")
	public ModelAndView results(int charId) {
		ModelAndView mv = new ModelAndView();
		FalloutCharacter foChar= dao.findById(charId);
		System.out.println(foChar == null);
		if (foChar == null) {
			mv.setViewName("error");
		} else {
			mv.setViewName("results");
		}
		try {
			mv.addObject("focharacter", foChar);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(path="AddChar.do", method=RequestMethod.POST)
	public ModelAndView addChar(FalloutCharacter foCharacter) {
		ModelAndView mv = new ModelAndView();	
						
		mv.setViewName("char-added");		
		
		try {
			mv.addObject("focharacter", dao.createCharacter(foCharacter));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(path="UpdateChar.do", method=RequestMethod.POST)
	public ModelAndView updateChar(FalloutCharacter foCharacter) {
		ModelAndView mv = new ModelAndView();	
		
		mv.setViewName("char-added");		
System.out.println(foCharacter.getPhoto());		
		try {
			mv.addObject("focharacter", dao.updateCharacter(foCharacter));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping(path="DeleteChar.do", method=RequestMethod.POST)
	public ModelAndView deleteChar(FalloutCharacter foCharacter) {
		ModelAndView mv = new ModelAndView();	
		
		mv.setViewName("char-deleted");		
//		foCharacter.getPrimarySkill().contains("strength");
		
		try {
			mv.addObject("focharacter", dao.deleteCharacter(foCharacter));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
}
