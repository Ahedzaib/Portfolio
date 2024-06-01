package com.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.modeclass.ToDo;

import jakarta.servlet.ServletContext;

@Controller
public class HomeController {

	@Autowired
	ServletContext context;
	
	@RequestMapping("/home")
	public String home(Model m) {		
		String string = "home";
		m.addAttribute("page", string);
		
		List<ToDo> list =  (List<ToDo>) context.getAttribute("list");	
		m.addAttribute("todos", list);
		
		return "Home";

	}

	@RequestMapping("/add")
	public String addTodo(Model m) {
		ToDo t = new ToDo();
		m.addAttribute("page", "add");
		m.addAttribute("todo", t);
		return "Home";
	}
	
	@RequestMapping(value="/saveTodo", method=RequestMethod.POST)
	public String saveTodo(@ModelAttribute("todo") ToDo t, Model m) {
		System.out.println(t);
		t.setTodoDate(new Date(0));
		
		List<ToDo> list =  (List<ToDo>) context.getAttribute("list");
		list.add(t);
		m.addAttribute("msg", "successfully added....");
		
		return "Home";
	}

}
