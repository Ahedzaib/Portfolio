package com.listener;

import java.util.ArrayList;
import java.util.List;

import com.modeclass.ToDo;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class MyListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
		System.out.println("Context created......");
		List<ToDo> list = new ArrayList<ToDo>();
		ServletContext context = sce.getServletContext();
		context.setAttribute("list",list);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	
	}
	
	

}
