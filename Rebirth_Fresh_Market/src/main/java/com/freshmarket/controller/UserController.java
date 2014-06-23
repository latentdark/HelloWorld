package com.freshmarket.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;

@Controller
//@EnableWebMvc
//@SessionAttributes("user")
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
    
    //signup->signin 으로 교체
	@RequestMapping(value ="/signIn", produces="text/plain;charset=UTF-8")
    @ResponseBody 
    public String signIn (
  			@ModelAttribute("user") User user,
  			HttpSession session, Locale locale, Model model,
  			RedirectAttributes ra)
  					throws Exception{
  		
  		System.out.println("_______________________________________________");
  		System.out.println("==> User /signin __call !!!");
  		System.out.println("_______________________________________________");
  		//들어오는 주소 확인해서 다시 그주소로 보내기 위해서 사용했지만
  		//들어오는 주소가 /signin으로 떠서 망함
  		//System.out.println(request.getRequestURI());
  		
  		
  		User dbUser=userService.findUser(user.getEmail());
  		dbUser.setActive(true);
  		if(dbUser!=null && dbUser.getPassword().equals(user.getPassword()) ){
  			session.setAttribute("user", dbUser);
  			System.out.println("user_controller_session_hashcode_"+session.hashCode());
  			System.out.println("user_controller_session_getId_"+session.getId());
  			//model.addAttribute("user", dbUser);
  			//ra.addFlashAttribute("user", dbUser);
  			//System.out.println(dbUser.getNickname());
  			//List list=new ArrayList();
  			//list.add(dbUser);
  			//System.out.println(dbUser.toString());
  			
  			
  			return dbUser.toString();
  		}else{
  			return null;
  		}
  	}
    /*
       @RequestMapping("/signIn")
  	public ModelAndView signIn (
  			@ModelAttribute("user") User user,
  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
  					throws Exception{
  		
  		System.out.println("_______________________________________________");
  		System.out.println("==> User /signin __call !!!");
  		System.out.println("_______________________________________________");
  		//들어오는 주소 확인해서 다시 그주소로 보내기 위해서 사용했지만
  		//들어오는 주소가 /signin으로 떠서 망함
  		System.out.println(request.getRequestURI());
  		
  		
  		User dbUser=userService.findUser(user.getEmail());
  		dbUser.setActive(true);
  		if(dbUser!=null && dbUser.getPassword().equals(user.getPassword()) ){
  			session.setAttribute("user", dbUser);
  		}
  		
  		ModelAndView modelAndView = new ModelAndView();
  		//addObject 사용하면 로그인할 때 바로 이름 뜸 필요에 대한 검증 필요
  		//signin으로 들어온후 주소창 refresh 되게 만들어야함
  		modelAndView.addObject("user", dbUser);
  		//redirect 사용안하면 주소창에 주소가 /signin으로 됨
  		//modelAndView.setViewName("redirect:/home");
  		modelAndView.setViewName("forward:/itemMapView");
  		return modelAndView;
  	}
     */
    
    @RequestMapping("/signout")
    public String signout(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
    	HttpSession session=request.getSession();
		session.invalidate();
    	return "redirect:/home";
    }
    
    
    @RequestMapping("/signupForm")
    public String signupForm()throws Exception{
    	return "signupForm";
    }
	
//	@RequestMapping(value = "/signupSubmit")
//	public ModelAndView signupSubmit(
//			@ModelAttribute("user") User user,
//			HttpSession session, 
//			HttpServletRequest request,
//			HttpServletResponse response
//			){
	@RequestMapping(value = "/signupSubmit")
	public ModelAndView signupSubmit(Locale locale, Model model
			){
		//request.setCharacterEncoding("UTF-8");
		
		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("/signupSuccess");
		modelAndView.setViewName("web/signupSuccess");
		
		
//		System.out.println("___________/signupSubmit");
//		System.out.println(user.getEmail());
//		System.out.println(user.getNickname());
//		System.out.println("___________/signupSubmit");
//		
//		Integer temp;
//		temp=userService.addUser(user);
//		session.setAttribute("user", user);
		
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
	@RequestMapping(value="/smsForm")
	public String smsForm(Locale locale,Model model){
		return "smsForm";
	}
}

