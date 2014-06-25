package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.freshmarket.domain.Comment;
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
		
		//System.out.println("insert 결과 : "+communicationService.addInquire(userNo, itemNo, content));
		
		
		//findInquireList
		System.out.println("selectList 결과 : "+communicationService.findInquireList(userNo));
		
		//removeInquire
		System.out.println("delete 결과 : "+communicationService.removeInquire(userNo, itemNo));
		System.out.println("select 결과 : "+communicationService.findInquireList(userNo));
		
		//updateComment
		Comment comment = new Comment();
		comment.setCommentNo(22);
		Integer commentNo = comment.getCommentNo();
		content = "완전짱짱비쌈 깎아주세요";
		System.out.println("update 결과 : "+communicationService.updateComment(commentNo, content));
		
		//addReply
		user.setUserNo(5);
		userNo = user.getUserNo();
		content = "안되욤";
		//System.out.println("insert 결과 : "+communicationService.addReply(commentNo, userNo, content));
		
		//findComment
		System.out.println("selectList 결과: "+communicationService.findComment(itemNo));
		
		//updateReply
		comment.setReplyNo(12);
		content = "네 안되욤";
		Integer replyNo = comment.getReplyNo();
		System.out.println("update 결과 : "+communicationService.updateReply(replyNo, content));
		
		//removeComment
		System.out.println("delete 결과 : "+communicationService.removeComment(commentNo));
		
		//removeReply
		System.out.println("delete 결과 : "+communicationService.removeReply(replyNo));
	}
}
