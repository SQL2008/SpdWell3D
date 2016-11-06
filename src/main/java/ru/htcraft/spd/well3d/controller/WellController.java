package ru.htcraft.spd.well3d.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WellController {
        
	@RequestMapping(value = "/well/{id}", method = RequestMethod.GET)
	public String printMain(ModelMap model, @PathVariable("id") Integer id) {
		model.addAttribute("title", "Well Parameter page!");
		model.addAttribute("id", id);
		return "well";
	}      
}