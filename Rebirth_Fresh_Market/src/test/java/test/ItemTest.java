package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;
import com.freshmarket.service.ItemService;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "config/context-aspect.xml",
//									"config/context-common.xml",
//									"config/context-mybatis.xml",
//									"config/context-transaction.xml" })
public class ItemTest {

//	@Autowired
//	@Qualifier("itemServiceImpl")
	private ItemService itemService;
	
	@Test
	public void test() throws Exception {
		
		ApplicationContext context = new GenericXmlApplicationContext( new String[] {   "config/context-aspect.xml",
																						"config/context-common.xml",
																						"config/context-mybatis.xml",
																						"config/context-transaction.xml" });
		this.itemService = context.getBean("itemServiceImpl", ItemService.class);
		
		//addItem
		Item item = new Item();
		item.setUserNo(1);
		item.setStateCode(1);
		item.setItemName("\"Mini Fan 4\" usb type");
		item.setPrice(50000);
		item.setItemInfo("국내 최저 소음: 36dB 조용한 1단 / 시원한 2단");
		item.setCategory1(14);
		item.setCategory2(11);
		
		System.out.println(item);
		//System.out.println("insert 결과 : "+itemService.addItem(item));
		
		//findItem
		System.out.println("selectOne 결과 : "+itemService.findItem(300));
		
		//findItemList
		Search search = new Search();
		search.setPageSize(10);
		search.setCurrentPage(2);
		System.out.println(search.getEndRowNum());
		System.out.println(search.getStartRowNum());
		search.setSearchCondition("2");
		search.setSearchKeyword("5000");
		//System.out.println(search);
		System.out.println("selectList 결과 : "+itemService.findItemList(search));
		
		//removeItem
		//System.out.println("delete 결과 : "+itemService.removeItem(414));
		//System.out.println("select 결과 : "+itemService.findItem(414));
	}
}
