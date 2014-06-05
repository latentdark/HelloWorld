package passion;

import java.util.Locale;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.test.AssertThrows;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;
import com.freshmarket.service.ItemService;

import static org.junit.Assert.*;
import static org.junit.matchers.JUnitMatchers.*;
import static org.hamcrest.CoreMatchers.*;

//import org.junit.Test;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"
	})
public class ItemControllerTestApp {
	
	@Autowired
	@Qualifier("itemServiceImpl")
    private ItemService itemService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setItemService(ItemService itemService){
    	this.itemService=itemService;
    }
    
    public ItemControllerTestApp() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Item_Controller_Call___");
    	System.out.println("__________________________");
	}
    
    @Test
    public void testWithMatchers() {
        assertThat("this string", is("this string"));
        assertThat(123, is(123));
    }
    
    @Test
	public void crud() throws Exception {
    	//addItem
		Item item = new Item();
		item.setUserNo(1);
		item.setStateCode(1);
		item.setItemName("\"Mini Fan 4\" usb type");
		item.setPrice(50000);
		item.setItemInfo("국내 최저 소음: 36dB 조용한 1단 / 시원한 2단");
		item.setCategory1(14);
		item.setCategory2(11);
		item.setGridX1(37.633735);
		item.setGridY1(127.198934);
		item.setItemPicturePath1("jjuggumi.jpg");
		
		System.out.println("insert 결과 : "+itemService.addItem(item));
		
		assertThat(itemService.addItem(item), is(3));
		
		
		//findItemNo
		item.setItemNo(itemService.findItemNo(item));
		System.out.println("지금 등록한 제품의 번호는 " + item.getItemNo());
		System.out.println(item);
		
		//findItem
		System.out.println("selectOne 결과 : "+itemService.findItem(300));
		
		//findItemList
		Search search = new Search();
		search.setPageSize(10);
		search.setCurrentPage(1);
		//search.setSearchCondition("2");
		//search.setSearchKeyword("5000");
		System.out.println("selectList 결과 : "+itemService.findItemList(search));
		
		//updateItem --> 가격변경
		item.setPrice(45000);
		item.setItemInfo(item.getItemInfo()+" 아오!안팔려서 가격내립니다.");
		System.out.println("update 결과 : " +itemService.updateItem(item));
		System.out.println(item);
		
		//updateItem --> 판매중 -> 거래중
		item.setStateCode(3);
		System.out.println("update 결과 : " +itemService.updateItem(item));
		System.out.println(item);
		
		//removeItem
		//System.out.println("delete 결과 : "+itemService.removeItem(414));
		//System.out.println("select 결과 : "+itemService.findItem(414));
	}
    
}
