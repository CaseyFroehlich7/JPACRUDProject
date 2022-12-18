package com.skilldistillery.nationalparks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.nationalparks.data.NationalParkDAO;
import com.skilldistillery.nationalparks.entities.NationalPark.NationalPark;

@Controller
public class NationalParkController {

	@Autowired
	private NationalParkDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String goToHome(Model model) {
		return "home";

	}

	@RequestMapping(path = {"updateresult.do"})
	public String update() {
		return "results";
	}
	
	@GetMapping(path = {"getParkToUpdate.do"}) 
	public ModelAndView getParkToUpdate(Integer parkId) {
		
		System.out.println("parkId" + parkId);
		ModelAndView mv = new ModelAndView();
		NationalPark parkToUpdate = dao.findById(parkId);
		mv.addObject("NationalPark", parkToUpdate);
		mv.setViewName("update");
		return mv;
	}
	
	//method being called after get mapping has been done, this method pushes update
	@RequestMapping(path = "updatepark.do", method = RequestMethod.POST)
	public ModelAndView updatePost(Integer parkId, NationalPark park) {
		System.out.println("parkId" + parkId);
		System.out.println("park" + park);
		ModelAndView mv = new ModelAndView();
		dao.update(parkId, park);
		mv.setViewName("updateresult");
		return mv;
	}

	
	
	@RequestMapping(path = { "createPark.do" })
	public String create() {
		
		return "create";
	}
	
	@RequestMapping(path = { "createPark.do" }, method = RequestMethod.POST)
	public String createPost(NationalPark park) {
		dao.create(park);
		return "createresult";
	}


	
	
	@RequestMapping(path = { "deletePark.do" })
	public String delete() {
		return "results";
	}
	
	@RequestMapping(path = { "deleteresult.do" })
	public String deleteResult(Model model, int parkId) {
		model.addAttribute("NationalPark", dao.delete(parkId));
		return "deleteresult";
	}

	@RequestMapping(path = { "explore.do" })
	public String explore(Model model) {
		model.addAttribute("parkList", dao.findAll());
		return "explore";
	}
	
	@RequestMapping(path = { "result.do" })
	public String results(Model model, int parkId) {
		model.addAttribute("NationalPark", dao.findById(parkId));
		return "result";
	}
	

}