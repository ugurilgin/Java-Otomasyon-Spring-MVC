package net.codejava.firma.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



import net.codejava.firma.dao.FirmaDAO;
import net.codejava.firma.model.Company;

@Controller
public class MainController {
	@Autowired
	private FirmaDAO companyDAO;
	
	@RequestMapping(value="/")
	public String home(){
	  return "index";
	  }
	@RequestMapping(value="/index")
	public String index(){
	  return "index";
	  }
	
	@RequestMapping(value="/viewer")
	public  ModelAndView listCompany(ModelAndView model)  {
		List<Company> listCompany=companyDAO.list();
		model.addObject("listCompany",listCompany);
		model.setViewName("viewer");
		return model;
		
	}
	
	@RequestMapping(value="/new",method=RequestMethod.GET)
	public  ModelAndView newCompany (ModelAndView model)  {
		Company newCompany=new Company();
		model.addObject("company",newCompany);
		model.setViewName("addCompany");
		return model;
		
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public ModelAndView saveCompany(@ModelAttribute Company company) {
		if(company.getId()==null)
		{companyDAO.save(company);}
		else
		{companyDAO.update(company);}
		return  new ModelAndView("redirect:/viewer");
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public ModelAndView editCompany(HttpServletRequest request) {
		String a=	request.getParameter("id");
		Integer id= Integer.parseInt(a);
			
		Company company=companyDAO.get(id);
		ModelAndView model=new ModelAndView();
		model.addObject("company",company);
		model.setViewName("addCompany");

		return model;
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public ModelAndView deleteCompany(HttpServletRequest request) {
		String a=	request.getParameter("id");
		Integer id= Integer.parseInt(a);
		companyDAO.delete(id);
		return  new ModelAndView("redirect:/viewer");
	}
	
	
}
