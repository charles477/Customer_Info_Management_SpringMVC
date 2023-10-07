package com.org.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.CustomerDao;

import com.org.dto.Customer;



@Controller
public class CustomerController 
{
	

	@RequestMapping("/register")
	public ModelAndView saveEmployee(@ModelAttribute Customer c) {
		ModelAndView mav= new ModelAndView("home.jsp");
		boolean result =CustomerDao.saveCustomer(c);
		if(result) {
			mav.addObject("msg", "data saved successfully");
			
		}
		else
			mav.addObject("msg", "Ooops!!!! something went wrong");
		return mav;
		
	}
	
	
	@RequestMapping("/get")
	public String getEmployees(HttpSession hs) {
		
		
		List<Customer> custom= CustomerDao.getAllEmployees();
		hs.setAttribute("custom", custom);
	
		return "display.jsp";
		
		
	}
	@RequestMapping("/edit")
	public ModelAndView editCustomer(@RequestParam int id)
	{
			Customer c= CustomerDao.findbyId(id);
			ModelAndView mav= new ModelAndView("update.jsp");
			mav.addObject("cust", c);
			return mav;
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteCustomer(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("get");
		boolean res= CustomerDao.deleteCustomer(id);
		if(res) {
			mav.addObject("msg", "data deleted successfully");
		}
		//no else bcoz we are deleting from view as the data is present in the database
		
		return mav;
	}
	@RequestMapping("/update")
	public ModelAndView updateCustomer(@ModelAttribute Customer c)
	{
		ModelAndView mav = new ModelAndView("get");
		boolean ans= CustomerDao.updateCustomer(c);
		if(ans)
		mav.addObject("msg", "data updated successfully");
		else
			mav.addObject("msg", "data updation failed !!!!!!!!!!!!!!!!!!!!!!");
		return mav;
	}

}
