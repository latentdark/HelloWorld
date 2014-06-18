package passion;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.freshmarket.service.ChatService;
import com.freshmarket.service.CommunicationService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"
	})
public class CommunicationControllerTestApp {
    
	@Autowired
	@Qualifier("communicationServiceImpl")
	private CommunicationService communicationService;

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
    public void setChatService(CommunicationService communicationService){
    	this.communicationService=communicationService;
    }
    
    public CommunicationControllerTestApp() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("communication_Controller_Call");
    	System.out.println("__________________________");
	}
    
}
