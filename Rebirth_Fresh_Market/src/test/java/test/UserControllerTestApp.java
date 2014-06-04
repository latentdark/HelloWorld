package test;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;


/*
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml",
		"servlet-context.xml"})
*/		

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"
	})	
public class UserControllerTestApp {
	
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
    
    public UserControllerTestApp() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___User_Controller_Call___");
    	System.out.println("__________________________");
	}
    
    @Test
    public void test(){
    	System.out.println("good");
    }
	//@Test
	public void signup() {
		
		User user=new User();
		user.setEmail("aaa@aaa.aaa");
		user.setPassword("12345");
		user.setPhoneNumber("010-123-4567");
		user.setNickname("쭈꾸미");
		
		userService.addUser(user);
		
		User findUser=new User();
		findUser=userService.findUser("aaa@aaa.aaa");
		
		System.out.println(findUser.getEmail());
		System.out.println(findUser.getPassword());
		System.out.println(findUser.getPhoneNumber());
		System.out.println(findUser.getNickname());
		System.out.println(findUser.getUserNo());
		System.out.println(findUser.getLocation().getGridX());
		System.out.println(findUser.getLocation().getGridY());
		
		
		System.out.println(userService.removeUser(findUser.getUserNo()));
		
		System.out.println(userService.findUser("aaa@aaa.aaa"));
		
		//ModelAndView modelAndView = new ModelAndView();
		//modelAndView.setViewName("/signup");
		//return modelAndView;
	}
    
    @RequestMapping("/login")
	public ModelAndView loginAction (
			@ModelAttribute("user") User user,
			HttpSession session ) throws Exception{
		
		System.out.println("_______________________________________________");
		System.out.println("==> User /login __call !!!");
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
    
}
