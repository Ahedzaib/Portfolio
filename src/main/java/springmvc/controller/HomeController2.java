package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController2 {

	@RequestMapping("/home")
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
}
