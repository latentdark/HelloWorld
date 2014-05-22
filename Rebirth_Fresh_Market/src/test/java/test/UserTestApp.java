package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;

import com.freshmarket.domain.Location;
import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;
import com.freshmarket.service.impl.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "config/context-aspect.xml",
		"config/context-common.xml",
		"config/context-mybatis.xml",
		"config/context-transaction.xml"})
public class UserTestApp {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@Test
	public void select() throws Exception {
		
		//userService.findUser(11);
		//System.out.println(userService.findUser(11));
		
		//Location location = new Location(37.494616, 127.027997);
		//User user = new User("aaa@aaa.aaa", "12345", "010-123-4567", "쭈꾸미1", location);
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
	}
}
