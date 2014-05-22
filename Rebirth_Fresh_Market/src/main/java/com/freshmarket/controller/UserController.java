package com.freshmarket.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
    private UserService userService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setUserService(UserService userService){
    	this.userService=userService;
    }
    
    public UserController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___User_Controller_Call___");
    	System.out.println("__________________________");
	}
    
    @RequestMapping("/signup")
  	public ModelAndView signup (
  			@ModelAttribute("user") User user,
  			HttpSession session ) throws Exception{
  		
  		System.out.println("_______________________________________________");
  		System.out.println("==> User /signup __call !!!");
  		System.out.println("_______________________________________________");
  		
  		
  		User dbUser=userService.findUser(user.getEmail());
  		dbUser.setActive(true);
  		if(dbUser!=null && dbUser.getPassword().equals(user.getPassword()) ){
  			session.setAttribute("user", dbUser);
  		}
  		
  		ModelAndView modelAndView = new ModelAndView();
  		modelAndView.setViewName("/home");

  		return modelAndView;
  	}
    @RequestMapping("/signupForm")
    public String signupForm()throws Exception{
    	return "signupForm";
    }
	
	@RequestMapping(value = "/signupSubmit")
	public ModelAndView signupSubmit(
			@ModelAttribute("user") User user,
			HttpSession session 
			){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/signupSuccess");
		
		System.out.println("___________/signupSubmit");
		System.out.println(user.getEmail());
		System.out.println(user.getNickname());
		System.out.println("___________/signupSubmit");
		
		/*
		System.out.println(userService.addUser(user));
		session.setAttribute("user", user);
		*/
		return modelAndView;
	}
	
  
	/*
	
	@RequestMapping("/logout")
	public ModelAndView logoutAction(HttpSession session) throws Exception {
		System.out.println("_______________________________________________");
		System.out.println("==> User /logout __call !!!");
		System.out.println("_______________________________________________");
		
		
		
		session.invalidate();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/home");
		
		return modelAndView;
	}
	*/
    
}
