//package com.freshmarket.controller;
//
//import java.io.File;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//import java.util.Locale;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.freshmarket.common.Search;
//import com.freshmarket.domain.Item;
//import com.freshmarket.domain.User;
//import com.freshmarket.service.ItemService;
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//
//@Controller
//public class ItemController {
//	
//	@Autowired
//	@Qualifier("itemServiceImpl")
//    private ItemService itemService;
//	
//	@Value("#{commonProperties['pageUnit']}")
//	//@Value("#{commonProperties['pageUnit'] ?: 3}")
//	int pageUnit;
//	
//	@Value("#{commonProperties['pageSize']}")
//	//@Value("#{commonProperties['pageSize'] ?: 2}")
//	int pageSize;
//
//    public void setItemService(ItemService itemService){
//    	this.itemService=itemService;
//    }
//    
//    public ItemController() {
//		// TODO Auto-generated constructor stub
//		System.out.println("__________________________");
//    	System.out.println("___Item_Controller_Call___");
//    	System.out.println("__________________________");
//	}
//    
//    //@RequestMapping(value = "/itemMapView")
//	@RequestMapping(value = "/")
//	public ModelAndView googlemap(
//			Locale locale, Model model,	HttpSession session) {
//		ModelAndView modelAndView = new ModelAndView();
//		
//		System.out.println("item_controller_session_hashcode_"+session.hashCode());
//		System.out.println("item_controller_session_getId_"+session.getId());
//		//session.
//		Search search=new Search();
//		/*
//		search.setCurrentPage(1);
//		search.setPageSize(1000);
//		*/
//		//search.setPageSize(500);
//		
//		//List itemList=itemService.findItemList(search);
//		//modelAndView.addObject("itemList", itemService.findItemList(search));
//		
//		//System.out.println(itemList[0]);
//		
//		//modelAndView.addObject("test", "뽑아묵는교?");
//		
//		modelAndView.setViewName("web/itemMapView");
//		return modelAndView;
//	}
//	
//	@RequestMapping(value = "/itemList")
//	@ResponseBody
//	public List itemList(
//			Locale locale, Model model,	HttpSession session) {
//		
//		
//		System.out.println("item_controller_session_hashcode_"+session.hashCode());
//		System.out.println("item_controller_session_getId_"+session.getId());
//		
//		List itemList=itemService.findItemList(null);
//		return itemList;
//	}
//	
//	@RequestMapping(value ="/ajaxTest")
//	public @ResponseBody String ajaxTest(Locale locale, Model model) {
//		return "success";
//	}
//	
//	@RequestMapping(value ="/findMyItemList")
//	public @ResponseBody List findMyItemList(
//			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
//		System.out.println("findMyItemList In__");
//		
//		System.out.println(userNo);
//		List itemList=itemService.findMyItemList(userNo);
//		/*
//		List temp = new ArrayList();
//		temp.add(new String("성공"));
//		temp.add("흠");
//		temp.add("음?");
//		*/
//		return itemList;
//	}
//	
//    @RequestMapping(value={"/addItem","/itemregister"})
//  	public String addItem (
//  			@ModelAttribute("Item") Item item,
//  			@ModelAttribute("user") User user,
//  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
//  					throws Exception{
//  		
// 		System.out.println("_______________________________________________");
//  		System.out.println("==> 아이템 등록 테스트");
//  		System.out.println("_______________________________________________");
// 
//  		String dir="C:\\0_Revolution_Workspace\\Rebirth_Fresh_Market\\src\\main\\webapp\\resources\\itempictures";
//  		int max = 5 * 640 * 480; //최대 업로드 크기는 5M까지만 허용
//  		
//	    MultipartRequest m = new MultipartRequest(request, dir, max, "utf-8",new DefaultFileRenamePolicy());
//	   	  
//  		List<String> images=new ArrayList<String>();
//  		if(m.getOriginalFileName("itemPicturePath1")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath1"));
//  		}
//  		if(m.getOriginalFileName("itemPicturePath2")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath2"));
//  		}
//  		if(m.getOriginalFileName("itemPicturePath3")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath3"));
//  		}
//  		
//  		//파일명 변경
//  		String fileName;
//  		String[] extension;
//  		String newFileName;
//  		List<String> imageList = new ArrayList<String>();
//  		
//  		for (int i=0;i<images.size();i++){
//	  		fileName=images.get(i);
//	  		System.out.println(fileName);
//	  		extension=fileName.split("\\.");
//	  		newFileName=new SimpleDateFormat("yyyyMMddHmsS").format(new Date())+((int)(Math.random()*100))+"."+extension[1];
//	  		
//	  		if(!fileName.equals("")) {
//	  		     // 원본이 업로드된 절대경로와 파일명를 구한다.
//	  		     String fullFileName = dir + "/" + fileName;
//	  		     File f1 = new File(fullFileName);
//	  		     if(f1.exists()) {     // 업로드된 파일명이 존재하면 Rename한다.
//	  		          File newFile = new File(dir + "/" + newFileName);
//	  		          f1.renameTo(newFile);   // rename...
//	  		          imageList.add(newFileName);
//	  		          System.out.println(imageList.get(i));
//	  		     }else{
//	  		     System.out.println("아이템 등록 실패");
//	  		     }
//	  		}
//  		}
//  		
//  		//아이템 채우기
//  		if(imageList.size()==0){
//  			item.setItemPicturePath1("noimage.gif");
//  		}else if(imageList.size()==1){
//  			item.setItemPicturePath1(imageList.get(0));			
//  		}else if(imageList.size()==2){
//  			item.setItemPicturePath1(imageList.get(0));
//  			item.setItemPicturePath2(imageList.get(1));
//  		}else if(imageList.size()==3){
//  			item.setItemPicturePath1(imageList.get(0));
//  			item.setItemPicturePath2(imageList.get(1));
//  			item.setItemPicturePath3(imageList.get(2));
//  		}
//  		
//  		
//  		
//  		user=(User)session.getAttribute("user");
//  		item.setUserNo(user.getUserNo());
//  		item.setItemName(m.getParameter("itemName"));
//  		item.setPrice(Integer.parseInt(m.getParameter("price")));
//  		item.setItemInfo(m.getParameter("itemInfo"));
//  		item.setGridX1(Double.parseDouble(m.getParameter("gridX1")));
//  		item.setGridY1(Double.parseDouble(m.getParameter("gridY1")));
//  		System.out.println("["+m.getParameter("category1")+"]");
//  		System.out.println("["+m.getParameter("category2")+"]");
//  		System.out.println(m.getParameter("itemName"));
//  		if(!(m.getParameter("category1").equals("default"))){
//  			item.setCategory1(Integer.parseInt(m.getParameter("category1")));
//  		}
//  		if(!(m.getParameter("category2").equals("default"))){
//  			item.setCategory2(Integer.parseInt(m.getParameter("category2")));
//  		}
//  		System.out.println("지나가자");
//  		item.setStateCode(Integer.parseInt(m.getParameter("stateCode")));
//  		
//  		
///*  		System.out.println("아이템 이름 : "+item.getItemName());
//  		System.out.println("상세 내용 : "+item.getItemInfo());
//  		System.out.println("가격 : "+item.getPrice());
//  		System.out.println("x좌표 : "+item.getGridX1());
//  		System.out.println("y좌표 : "+item.getGridY1());
//  		System.out.println("대분류 : "+item.getCategory1());
//  		System.out.println("소분류 : "+item.getCategory2());
//  		System.out.println("사진 1 : "+item.getItemPicturePath1());
//  		System.out.println("사진 2 : "+item.getItemPicturePath2());
//  		System.out.println("사진 3 : "+item.getItemPicturePath3());
//  		System.out.println("상태 : "+item.getStateCode());*/
//  		
//  		itemService.addItem(item);
//  		
//  		return "redirect:/";
//  	}
//	
//	@RequestMapping("/removeItem")
//    @ResponseBody
//  	public String removeItem (
//  			@RequestParam(value="ItemNo")Integer ItemNo)
//  					throws Exception{
//    	System.out.println("아이템 삭제!");
//    	System.out.println(ItemNo);
//    	itemService.removeItem(ItemNo);
//    	return "removeItem success";
//    }
//	
//	//제품 수정
//    @RequestMapping("/updateItem")
//  	public String updateItem (
//  			@ModelAttribute("Item") Item item,
//  			@ModelAttribute("user") User user,
//  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
//  					throws Exception{
//    	System.out.println("아이템 수정!");	
//    	String dir="C:\\0_Revolution_Workspace\\Rebirth_Fresh_Market\\src\\main\\webapp\\resources\\itempictures";
//  		int max = 5 * 640 * 480; //최대 업로드 크기는 5M까지만 허용
//  		
//	    MultipartRequest m = new MultipartRequest(request, dir, max, "utf-8",new DefaultFileRenamePolicy());
//	   	  
//  		List<String> images=new ArrayList<String>();
//  		if(m.getOriginalFileName("itemPicturePath1")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath1"));
//  		}
//  		if(m.getOriginalFileName("itemPicturePath2")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath2"));
//  		}
//  		if(m.getOriginalFileName("itemPicturePath3")!=null){
//  			images.add(m.getOriginalFileName("itemPicturePath3"));
//  		}
//  		
//  		//파일명 변경
//  		String fileName;
//  		String[] extension;
//  		String newFileName;
//  		List<String> imageList = new ArrayList<String>();
//  		
//  		for (int i=0;i<images.size();i++){
//	  		fileName=images.get(i);
//	  		System.out.println(fileName);
//	  		extension=fileName.split("\\.");
//	  		newFileName=new SimpleDateFormat("yyyyMMddHmsS").format(new Date())+((int)(Math.random()*100))+"."+extension[1];
//	  		
//	  		if(!fileName.equals("")) {
//	  		     // 원본이 업로드된 절대경로와 파일명를 구한다.
//	  		     String fullFileName = dir + "/" + fileName;
//	  		     File f1 = new File(fullFileName);
//	  		     if(f1.exists()) {     // 업로드된 파일명이 존재하면 Rename한다.
//	  		          File newFile = new File(dir + "/" + newFileName);
//	  		          f1.renameTo(newFile);   // rename...
//	  		          imageList.add(newFileName);
//	  		          System.out.println(imageList.get(i));
//	  		     }else{
//	  		     System.out.println("아이템 등록 실패");
//	  		     }
//	  		}
//  		}
//  		
//  		//아이템 채우기
//  		if(imageList.size()==0){
//  			item.setItemPicturePath1("noimage.gif");
//  			item.setItemPicturePath1((m.getParameter("xItemPicture1")));
//  			item.setItemPicturePath2((m.getParameter("xItemPicture2")));
//  			item.setItemPicturePath3((m.getParameter("xItemPicture3")));
//  		}else if(imageList.size()==1){
//  			item.setItemPicturePath1(imageList.get(0));			
//  		}else if(imageList.size()==2){
//  			item.setItemPicturePath1(imageList.get(0));
//  			item.setItemPicturePath2(imageList.get(1));
//  		}else if(imageList.size()==3){
//  			item.setItemPicturePath1(imageList.get(0));
//  			item.setItemPicturePath2(imageList.get(1));
//  			item.setItemPicturePath3(imageList.get(2));
//  		}
//  		
//  		
//  		
//  		user=(User)session.getAttribute("user");
//  		item.setUserNo(user.getUserNo());
//  		item.setItemNo(Integer.parseInt(m.getParameter("itemNo")));
//  		item.setItemName(m.getParameter("itemName"));
//  		item.setPrice(Integer.parseInt(m.getParameter("price")));
//  		item.setItemInfo(m.getParameter("itemInfo"));
//  		item.setGridX1(Double.parseDouble(m.getParameter("gridX1")));
//  		item.setGridY1(Double.parseDouble(m.getParameter("gridY1")));
//  		item.setCategory1(Integer.parseInt(m.getParameter("category1")));
//  		item.setCategory2(Integer.parseInt(m.getParameter("category2")));
//  		item.setStateCode(Integer.parseInt(m.getParameter("stateCode")));
//  		
//  		
///*  	System.out.println("아이템 번호 : "+item.getItemNo());
//  		System.out.println("아이템 이름 : "+item.getItemName());
//  		System.out.println("상세 내용 : "+item.getItemInfo());
//  		System.out.println("가격 : "+item.getPrice());
//  		System.out.println("x좌표 : "+item.getGridX1());
//  		System.out.println("y좌표 : "+item.getGridY1());
//  		System.out.println("대분류 : "+item.getCategory1());
//  		System.out.println("소분류 : "+item.getCategory2());
//  		System.out.println("사진 1 : "+item.getItemPicturePath1());
//  		System.out.println("사진 2 : "+item.getItemPicturePath2());
//  		System.out.println("사진 3 : "+item.getItemPicturePath3());
//  		System.out.println("상태 : "+item.getStateCode());*/
//  		
//  		itemService.updateItem(item);
//  		itemService.updateItemPicture(item);
//  		itemService.updateLocation(item);
//    	return "redirect:/";
//    }
//	/*
//	@RequestMapping(value ="/ajaxTest2")
//	public @ResponseBody JSONObject ajaxTest2(
//			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
//		System.out.println("ajaxTest In__");
//		System.out.println(userNo);
//		//List temp = null;
//		//temp.add(new String("성공"));
//		//model.addAttribute("test","성공");
//		JSONObject jsonObject = new JSONObject();
//		jsonObject.put("test", 1234);
//		//model.add("test",new String("성공"));
//		return jsonObject;
//	}
//	*/
//	/*
//	@RequestMapping(value ="/ajaxTest2")
//	public @ResponseBody Map<?,?> ajaxTest2(
//			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
//			Locale locale, ModelMap model) {
//		System.out.println("ajaxTest In__");
//		System.out.println(userNo);
//		//List temp = null;
//		//temp.add(new String("성공"));
//		model.put("test", new String("성공"));
//		//model.addAttribute("성공");
//		//model.add("test",new String("성공"));
//		return model;
//	}
//	 */
//    
//}
