package passion;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.freshmarket.service.ChatService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"
	})
public class ChatControllerTestApp {
    
	@Autowired
	@Qualifier("chatServiceImpl")
	private ChatService chatService;

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
    public void setChatService(ChatService chatService){
    	this.chatService=chatService;
    }
    
    public ChatControllerTestApp() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("___Chat_Controller_Call___");
    	System.out.println("__________________________");
	}
    
}
