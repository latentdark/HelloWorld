package com.freshmarket.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.freshmarket.domain.Item;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class TestController {
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	public TestController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Test_Controller_Call___");
    	System.out.println("__________________________");
	}
	
	@RequestMapping(value ="/dialog")
	public String home(Locale locale, Model model) {
		return "Test/Dialog";
	}
	
	@RequestMapping(value ="/itemMap")
	public String itemMap(Locale locale, Model model) {
		return "web/itemMap";
	}
	
	
	//제품 등록 테스트
    @RequestMapping("/itemregister")
  	public String itemRegister (
  			@ModelAttribute("Item") Item item,
  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
  					throws Exception{
  		
  		System.out.println("_______________________________________________");
  		System.out.println("==> 아이템 등록 테스트");
  		System.out.println("_______________________________________________");
  		//들어오는 주소 확인해서 다시 그주소로 보내기 위해서 사용했지만
  		//들어오는 주소가 /signin으로 떠서 망함
  		
  		/*System.out.println("아이템 이름 : "+item.getItemName());
  		System.out.println("아이템 가격 : "+item.getPrice());
  		System.out.println("상세 내용 : "+item.getItemInfo());
  		System.out.println("x좌표 : "+item.getGridX1());
  		System.out.println("y좌표 : "+item.getGridY1());
  		System.out.println("카테 대분류 : "+item.getCategory1());
  		System.out.println("카테 소분류 : "+item.getCategory2());
  		System.out.println("거래 상태 : "+item.getStateCode());
  		System.out.println("이미지 : "+item.getItemPicturePath1());
  		*/
  		
  		
  		String dir = request.getSession().getServletContext().getRealPath("/upload"); //폴더 얻기
  		int max = 5 * 640 * 480; //최대 업로드 크기는 5M까지만 허용
  		
	    MultipartRequest m = new MultipartRequest(request, dir, max, "utf-8",new DefaultFileRenamePolicy());
	    System.out.println("아이템 이름 : "+m.getParameter("itemName"));
  		System.out.println("아이템 가격 : "+m.getParameter("price"));
  		System.out.println("상세 내용 : "+m.getParameter("itemInfo"));
  		System.out.println("x좌표 : "+m.getParameter("gridX1"));
  		System.out.println("y좌표 : "+m.getParameter("gridY1"));
  		System.out.println("카테 대분류 : "+m.getParameter("category1"));
  		System.out.println("카테 소분류 : "+m.getParameter("category2"));
  		System.out.println("거래 상태 : "+m.getParameter("stateCode"));
  		System.out.println("이미지 : "+m.getParameter("itemPicturePath1"));
  		System.out.println(m.getFilesystemName("itemPicturePath1"));
  		System.out.println(m.getOriginalFileName("itemPicturePath1"));
  		return "redirect:/itemMapView";
  	}
	
	
	
}

	