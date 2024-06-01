package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Starter")
public class HomeController {

	@RequestMapping(path="/home", method = RequestMethod.GET)
	public String Home(Model model) {	
		model.addAttribute("name","Abdul Muntaqim laghari");
		model.addAttribute("value",12345);

		List<String> bike_name = new ArrayList<String>();
		bike_name.add("CD 70 Honda model 2017");
		bike_name.add("125 bike Honda");
		bike_name.add("SuperSatar china");
		bike_name.add("YBR");
		bike_name.add("YAMAHA");
		model.addAttribute("bike", bike_name);
		
		System.out.println("this is home url");
		return "index";
	}

	
	@RequestMapping("/laghari")
	public String about() {
		System.out.println("this is about");
		return"about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
	
		System.out.println("this is help controller");
		ModelAndView mav= new ModelAndView();
		mav.addObject("Department","Computer");
		mav.addObject("Name","Mushtaque bugti");
		LocalDateTime time = LocalDateTime.now();
		mav.addObject("date",time);
		//marks
		
		
		  List<Integer> marks = new ArrayList<Integer>();
		  marks.add(75);
		  marks.add(88);
		  marks.add(45); 
		  marks.add(99); 
		  marks.add(68);
		 marks.add(0000000);
		  
		  mav.addObject("list",marks);
		 
		mav.setViewName("help");
		return mav;
	}
}

