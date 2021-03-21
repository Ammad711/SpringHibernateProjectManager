package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.DataDAO;
import com.entities.Data;


@Controller
public class HomeController {
	
//	@Autowired
//	ServletContext context;
	
	@Autowired
	DataDAO dataDAO;
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		String str="home";
		m.addAttribute("page", str);	
//		List<Data> list=(List<Data>)context.getAttribute("list");
		List<Data> list=this.dataDAO.getall();
		m.addAttribute("data", list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String add(Model m)
	{
		Data data=new Data();
		m.addAttribute("page", "add");
		m.addAttribute("Data", data);
		return "home";
	}
	
	@RequestMapping(value="/savedata",method = RequestMethod.POST)
	public String save(@ModelAttribute("Data") Data data, Model m)
	{
		
		System.out.println(data);
		data.setDate(new Date());
//		List<Data> list=(List<Data>)context.getAttribute("list");
//		list.add(data);
		this.dataDAO.save(data); 
		m.addAttribute("msg", "successfully added...");
		return "home";
		
	}
	
	
}
