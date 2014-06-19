package test;

import java.sql.Time;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.freshmarket.domain.Deal;
import com.freshmarket.domain.Item;
import com.freshmarket.domain.Location;
import com.freshmarket.domain.User;
import com.freshmarket.service.DealService;

public class DealTest {

	private DealService dealService;
	
	@Test
	public void crudTest(){
		ApplicationContext context = new GenericXmlApplicationContext( new String[] {   "config/context-aspect.xml",
				"config/context-common.xml",
				"config/context-mybatis.xml",
				"config/context-transaction.xml" });
		
		this.dealService = context.getBean("dealServiceImpl", DealService.class);
		
		//addWish
		Item item = new Item();
		User user = new User();
		item.setItemNo(419);
		user.setUserNo(1);
		Integer itemNo = item.getItemNo();
		Integer userNo = user.getUserNo();
				
		System.out.println("insert 결과 : "+dealService.addWish(userNo, itemNo));
				
				
		//findWishList
		System.out.println("selectList 결과 : "+dealService.findWishList(userNo));
				
		//removeWish
		System.out.println("delete 결과 : "+dealService.removeWish(userNo, itemNo));
		System.out.println("select 결과 : "+dealService.findWishList(userNo));
		
		
	}
}
