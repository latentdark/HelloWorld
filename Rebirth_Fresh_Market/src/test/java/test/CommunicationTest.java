package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;
import com.freshmarket.domain.User;
import com.freshmarket.service.CommunicationService;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "config/context-aspect.xml",
//									"config/context-common.xml",
//									"config/context-mybatis.xml",
//									"config/context-transaction.xml" })
public class CommunicationTest {

	//@Autowired
	//@Qualifier("itemServiceImpl")
	private CommunicationService communicationService;
	
	@Test
	public void test() throws Exception {
		
		ApplicationContext context = new GenericXmlApplicationContext( new String[] {   "config/context-aspect.xml",
																						"config/context-common.xml",
																						"config/context-mybatis.xml",
																						"config/context-transaction.xml" });
		this.communicationService = context.getBean("communicationServiceImpl", CommunicationService.class);

		//addInquire
		Item item = new Item();
		User user = new User();
		item.setItemNo(419);
		user.setUserNo(1);
		Integer itemNo = item.getItemNo();
		Integer userNo = user.getUserNo();
		String content = "너무비싸요 깎아주세요";
		
		System.out.println("insert 결과 : "+communicationService.addInquire(userNo, itemNo, content));
		
		
		//findInquireList
		System.out.println("selectList 결과 : "+communicationService.findInquireList(userNo));
		
		//removeInquire
		System.out.println("delete 결과 : "+communicationService.removeInquire(userNo, itemNo));
		System.out.println("select 결과 : "+communicationService.findInquireList(userNo));
	}
}
