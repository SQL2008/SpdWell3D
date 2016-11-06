package ru.htcraft.spd.well3d.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
        //main page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("title", "Spring 3 MVC Hello World");
		return "main";
	} 
        
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String printMain(ModelMap model) {
		model.addAttribute("title", "Spring 3 MVC Hello World");
		return "main";
	}     
        
	@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {
		ModelAndView model = new ModelAndView();
		model.setViewName("hello");
		model.addObject("name", name);
		return model;
	}
        
        @ExceptionHandler(CustomGenericException.class)
	public ModelAndView handleCustomException(CustomGenericException ex) {
		ModelAndView model = new ModelAndView("error");
		model.addObject("exception", ex);
		return model;
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
		ModelAndView model = new ModelAndView("error");
		return model;
	}

}