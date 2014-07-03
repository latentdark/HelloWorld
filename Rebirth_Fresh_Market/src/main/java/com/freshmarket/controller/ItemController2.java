package com.freshmarket.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.SocketException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;
import com.freshmarket.domain.User;
import com.freshmarket.service.ItemService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class ItemController2 {
	
	@Autowired
	@Qualifier("itemServiceImpl")
    private ItemService itemService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

	
	//Field for ftp통신. by 정준호.
	private static final String SERVER_IP="119.205.211.176";
	private static final int PORT = 5001;
	private static final String ID ="imageserver";
	private static final String PASSWORD = "WeAre47th";
	private static final String UPLOAD_DIR = "freshmarket";
	
	
	
    public void setItemService(ItemService itemService){
    	this.itemService=itemService;
    }
    
    public ItemController2() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Item_Controller_Call___");
    	System.out.println("__________________________");
	}
    
    //@RequestMapping(value = "/itemMapView")
	@RequestMapping(value = "/")
	public ModelAndView googlemap(
			Locale locale, Model model,	HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		System.out.println("item_controller_session_hashcode_"+session.hashCode());
		System.out.println("item_controller_session_getId_"+session.getId());
		//session.
		Search search=new Search();
		/*
		search.setCurrentPage(1);
		search.setPageSize(1000);
		*/
		//search.setPageSize(500);
		
		//List itemList=itemService.findItemList(search);
		//modelAndView.addObject("itemList", itemService.findItemList(search));
		
		//System.out.println(itemList[0]);
		
		//modelAndView.addObject("test", "뽑아묵는교?");
		
		modelAndView.setViewName("web/itemMapView");
		return modelAndView;
	}
	
	@RequestMapping(value = "/itemList")
	@ResponseBody
	public List itemList(
			Locale locale, Model model,	HttpSession session) {
		
		
		System.out.println("item_controller_session_hashcode_"+session.hashCode());
		System.out.println("item_controller_session_getId_"+session.getId());
		
		List itemList=itemService.findItemList(null);
		return itemList;
	}
	
	@RequestMapping(value ="/ajaxTest")
	public @ResponseBody String ajaxTest(Locale locale, Model model) {
		return "success";
	}
	
	@RequestMapping(value ="/findMyItemList")
	public @ResponseBody List findMyItemList(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
		System.out.println("findMyItemList In__");
		
		System.out.println(userNo);
		List itemList=itemService.findMyItemList(userNo);
		/*
		List temp = new ArrayList();
		temp.add(new String("성공"));
		temp.add("흠");
		temp.add("음?");
		*/
		return itemList;
	}
	
    @RequestMapping(value={"/addItem","/itemregister"})
  	public String addItem (
  			@ModelAttribute("Item") Item item,
  			@ModelAttribute("user") User user,
  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
  					throws Exception{
  		
 		System.out.println("_______________________________________________");
  		System.out.println("==> 아이템 등록 테스트");
  		System.out.println("_______________________________________________");
 
  		//String dir="C:\\0_Revolution_Workspace\\Rebirth_Fresh_Market\\src\\main\\webapp\\resources\\itempictures";
  		String dir=request.getRealPath("/")+"resources/itempictures";
  		System.out.println("dir : " + dir);
  		//Console 출력창 확인. dir : C:\collaborationworkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Rebirth_Fresh_Market\resources/itempictures
  		int max = 5 * 640 * 480; //최대 업로드 크기는 5M까지만 허용
  		
	    MultipartRequest m = new MultipartRequest(request, dir, max, "utf-8",new DefaultFileRenamePolicy());
	   	 
	    /*
  		List<String> images=new ArrayList<String>();
  		if(m.getOriginalFileName("itemPicturePath1")!=null){
  			System.out.println("getOriginalName : "+m.getOriginalFileName("itemPicturePath1"));
  			//Console 출력창 확인.   
  			images.add(m.getOriginalFileName("itemPicturePath1"));
  		}
  		if(m.getOriginalFileName("itemPicturePath2")!=null){
  			System.out.println(m.getOriginalFileName("itemPicturePath2"));
  			//Console 출력창 확인. 
  			images.add(m.getOriginalFileName("itemPicturePath2"));
  		}
  		if(m.getOriginalFileName("itemPicturePath3")!=null){
  			System.out.println(m.getOriginalFileName("itemPicturePath3"));
  			//Console 출력창 확인. 
  			images.add(m.getOriginalFileName("itemPicturePath3"));
  		}
  		*/
	    
  		List<String> images=new ArrayList<String>();
  		if(m.getOriginalFileName("itemPicturePath1")!=null){
  			System.out.println("getOriginalName : "+m.getOriginalFileName("itemPicturePath1"));
  			//Console 출력창 확인. getOriginalName : IMG_1200.png
  			images.add(m.getOriginalFileName("itemPicturePath1"));
  		}
  		if(m.getOriginalFileName("itemPicturePath2")!=null){
  			System.out.println(m.getOriginalFileName("itemPicturePath2"));
  			//Console 출력창 확인. getOriginalName : IMG_1201.png
  			images.add(m.getOriginalFileName("itemPicturePath2"));
  		}
  		if(m.getOriginalFileName("itemPicturePath3")!=null){
  			System.out.println(m.getOriginalFileName("itemPicturePath3"));
  			//Console 출력창 확인. getOriginalName : IMG_1202.png
  			images.add(m.getOriginalFileName("itemPicturePath3"));
  		}
  		System.out.println("imageList : "+images);
  		//Console 출력창 확인. imageList : [IMG_1200.png, IMG_1201.png, IMG_1202.png]
  		
  		//파일명 변경
  		String fileName;
  		String[] extension;
  		String newFileName;
  		List<String> imageList = new ArrayList<String>();
  		ArrayList<File> imageFileList = new ArrayList<File>();//ftp 통신에 활용할 list.
  		
  		for (int i=0;i<images.size();i++){
	  		fileName=images.get(i);
	  		System.out.println("fileName : "+fileName);
	  		//Console 출력창 확인. fileName : IMG_1200.png 
		  	//Console 출력창 확인. fileName : IMG_1201.png
		  	//Console 출력창 확인. fileName : IMG_1202.png
	  		extension=fileName.split("\\.");
	  		newFileName=new SimpleDateFormat("yyyyMMddHmsS").format(new Date())+((int)(Math.random()*100))+"."+extension[1];
	  		
	  		if(!fileName.equals("")) {
	  		     // 원본이 업로드된 절대경로와 파일명를 구한다.
	  		     String fullFileName = dir + "/" + fileName;
	  		     File f1 = new File(fullFileName);
	  		     if(f1.exists()) {     // 업로드된 파일명이 존재하면 Rename한다.
	  		          File newFile = new File(dir + "/" + newFileName);
	  		          System.out.println(newFile.toString());
	  		          f1.renameTo(newFile);   // rename...
	  		          imageList.add(newFileName);
	  		          imageFileList.add(newFile);//ftp통신에 활용할 list.
	  		          System.out.println("imageList : " + imageList.get(i));
	  		          //Console 출력창 확인. 201407031535292868.png
		  		      //Console 출력창 확인. 201407031535293021.png
		  		      //Console 출력창 확인. 201407031535293261.png
	  		          System.out.println("imageFileList : "+imageFileList.get(i));
	  		          //Console 출력창 확인.
		  		      //Console 출력창 확인.
		  		      //Console 출력창 확인.
		  		          
	  		     }else{
	  		     System.out.println("아이템 등록 실패");
	  		     }
	  		}
  		}
  		
  		//아이템 채우기
  		if(imageList.size()==0){
  			item.setItemPicturePath1("noimage.gif");
  		}else if(imageList.size()==1){
  			item.setItemPicturePath1(imageList.get(0));			
  		}else if(imageList.size()==2){
  			item.setItemPicturePath1(imageList.get(0));
  			item.setItemPicturePath2(imageList.get(1));
  		}else if(imageList.size()==3){
  			item.setItemPicturePath1(imageList.get(0));
  			item.setItemPicturePath2(imageList.get(1));
  			item.setItemPicturePath3(imageList.get(2));
  		}
  		
  		
  		
  		user=(User)session.getAttribute("user");
  		item.setUserNo(user.getUserNo());
  		item.setItemName(m.getParameter("itemName"));
  		item.setPrice(Integer.parseInt(m.getParameter("price")));
  		item.setItemInfo(m.getParameter("itemInfo"));
  		item.setGridX1(Double.parseDouble(m.getParameter("gridX1")));
  		item.setGridY1(Double.parseDouble(m.getParameter("gridY1")));
  		item.setCategory1(Integer.parseInt(m.getParameter("category1")));
  		item.setCategory2(Integer.parseInt(m.getParameter("category2")));
  		item.setStateCode(Integer.parseInt(m.getParameter("stateCode")));
  		
  		//ftp통신.
  		FTPTransfer transfer = new FTPTransfer();
  		boolean result=transfer.insert(SERVER_IP, PORT, ID, PASSWORD, UPLOAD_DIR, null, imageFileList);
  		System.out.println("");
  		
  		//ftp통신이 완료되면, 로컬파일 시스템에 임시 저장된 이미지 파일들을 삭제.
  		if(result == true){
  			
  			for(int i=0;i<imageFileList.size();i++){
  				System.out.println("Local File System에 임시 저장된 이미지 파일 삭제를 위한 for문 실행......");
  				File file = new File(imageFileList.get(i).toString());
  				file.delete();
  				
  				if(file.exists()){
  					System.out.println("삭제 Failed......");
  				}
  				else{
  					System.out.println("삭제 Success!!!!!!");
  				}//end Of if
  			}//end Of for statement
  		}//end Of if
  		
  		
/*  		System.out.println("아이템 이름 : "+item.getItemName());
  		System.out.println("상세 내용 : "+item.getItemInfo());
  		System.out.println("가격 : "+item.getPrice());
  		System.out.println("x좌표 : "+item.getGridX1());
  		System.out.println("y좌표 : "+item.getGridY1());
  		System.out.println("대분류 : "+item.getCategory1());
  		System.out.println("소분류 : "+item.getCategory2());
  		System.out.println("사진 1 : "+item.getItemPicturePath1());
  		System.out.println("사진 2 : "+item.getItemPicturePath2());
  		System.out.println("사진 3 : "+item.getItemPicturePath3());
  		System.out.println("상태 : "+item.getStateCode());*/
  		
  		itemService.addItem(item);
  		
  		return "redirect:/";
  	}
	
	@RequestMapping("/removeItem")
    @ResponseBody
  	public String removeItem (
  			@RequestParam(value="ItemNo")Integer ItemNo)
  					throws Exception{
    	System.out.println("아이템 삭제!");
    	System.out.println(ItemNo);
    	Item item=itemService.findItem(ItemNo);
    	FTPTransfer transfer = new FTPTransfer();
    	System.out.println("item : " + item);
    	transfer.delete(SERVER_IP, PORT, ID, PASSWORD, UPLOAD_DIR ,item);
    	itemService.removeItem(ItemNo);
    	
    	return "removeItem success";
    }
	
	//제품 수정
    @RequestMapping("/updateItem")
  	public String updateItem (
  			@ModelAttribute("Item") Item item,
  			@ModelAttribute("user") User user,
  			HttpSession session, HttpServletRequest request, HttpServletResponse response)
  					throws Exception{
    	System.out.println("아이템 수정!");	
    	String dir="C:\\0_Revolution_Workspace\\Rebirth_Fresh_Market\\src\\main\\webapp\\resources\\itempictures";
  		int max = 5 * 640 * 480; //최대 업로드 크기는 5M까지만 허용
  		
	    MultipartRequest m = new MultipartRequest(request, dir, max, "utf-8",new DefaultFileRenamePolicy());
	   	  
  		List<String> images=new ArrayList<String>();
  		if(m.getOriginalFileName("itemPicturePath1")!=null){
  			images.add(m.getOriginalFileName("itemPicturePath1"));
  		}
  		if(m.getOriginalFileName("itemPicturePath2")!=null){
  			images.add(m.getOriginalFileName("itemPicturePath2"));
  		}
  		if(m.getOriginalFileName("itemPicturePath3")!=null){
  			images.add(m.getOriginalFileName("itemPicturePath3"));
  		}
  		
  		//파일명 변경
  		String fileName;
  		String[] extension;
  		String newFileName;
  		List<String> imageList = new ArrayList<String>();
  		
  		for (int i=0;i<images.size();i++){
	  		fileName=images.get(i);
	  		System.out.println(fileName);
	  		extension=fileName.split("\\.");
	  		newFileName=new SimpleDateFormat("yyyyMMddHmsS").format(new Date())+((int)(Math.random()*100))+"."+extension[1];
	  		
	  		if(!fileName.equals("")) {
	  		     // 원본이 업로드된 절대경로와 파일명를 구한다.
	  		     String fullFileName = dir + "/" + fileName;
	  		     File f1 = new File(fullFileName);
	  		     if(f1.exists()) {     // 업로드된 파일명이 존재하면 Rename한다.
	  		          File newFile = new File(dir + "/" + newFileName);
	  		          f1.renameTo(newFile);   // rename...
	  		          imageList.add(newFileName);
	  		          System.out.println(imageList.get(i));
	  		     }else{
	  		     System.out.println("아이템 등록 실패");
	  		     }
	  		}
  		}
  		
  		//아이템 채우기
  		if(imageList.size()==0){
  			item.setItemPicturePath1("noimage.gif");
  			item.setItemPicturePath1((m.getParameter("xItemPicture1")));
  			item.setItemPicturePath2((m.getParameter("xItemPicture2")));
  			item.setItemPicturePath3((m.getParameter("xItemPicture3")));
  		}else if(imageList.size()==1){
  			item.setItemPicturePath1(imageList.get(0));			
  		}else if(imageList.size()==2){
  			item.setItemPicturePath1(imageList.get(0));
  			item.setItemPicturePath2(imageList.get(1));
  		}else if(imageList.size()==3){
  			item.setItemPicturePath1(imageList.get(0));
  			item.setItemPicturePath2(imageList.get(1));
  			item.setItemPicturePath3(imageList.get(2));
  		}
  		
  		
  		
  		user=(User)session.getAttribute("user");
  		item.setUserNo(user.getUserNo());
  		item.setItemNo(Integer.parseInt(m.getParameter("itemNo")));
  		item.setItemName(m.getParameter("itemName"));
  		item.setPrice(Integer.parseInt(m.getParameter("price")));
  		item.setItemInfo(m.getParameter("itemInfo"));
  		item.setGridX1(Double.parseDouble(m.getParameter("gridX1")));
  		item.setGridY1(Double.parseDouble(m.getParameter("gridY1")));
  		item.setCategory1(Integer.parseInt(m.getParameter("category1")));
  		item.setCategory2(Integer.parseInt(m.getParameter("category2")));
  		item.setStateCode(Integer.parseInt(m.getParameter("stateCode")));
  		
  		
/*  	System.out.println("아이템 번호 : "+item.getItemNo());
  		System.out.println("아이템 이름 : "+item.getItemName());
  		System.out.println("상세 내용 : "+item.getItemInfo());
  		System.out.println("가격 : "+item.getPrice());
  		System.out.println("x좌표 : "+item.getGridX1());
  		System.out.println("y좌표 : "+item.getGridY1());
  		System.out.println("대분류 : "+item.getCategory1());
  		System.out.println("소분류 : "+item.getCategory2());
  		System.out.println("사진 1 : "+item.getItemPicturePath1());
  		System.out.println("사진 2 : "+item.getItemPicturePath2());
  		System.out.println("사진 3 : "+item.getItemPicturePath3());
  		System.out.println("상태 : "+item.getStateCode());*/
  		
  		itemService.updateItem(item);
  		itemService.updateItemPicture(item);
  		itemService.updateLocation(item);
    	return "redirect:/";
    }
	/*
	@RequestMapping(value ="/ajaxTest2")
	public @ResponseBody JSONObject ajaxTest2(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
		System.out.println("ajaxTest In__");
		System.out.println(userNo);
		//List temp = null;
		//temp.add(new String("성공"));
		//model.addAttribute("test","성공");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("test", 1234);
		//model.add("test",new String("성공"));
		return jsonObject;
	}
	*/
	/*
	@RequestMapping(value ="/ajaxTest2")
	public @ResponseBody Map<?,?> ajaxTest2(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
			Locale locale, ModelMap model) {
		System.out.println("ajaxTest In__");
		System.out.println(userNo);
		//List temp = null;
		//temp.add(new String("성공"));
		model.put("test", new String("성공"));
		//model.addAttribute("성공");
		//model.add("test",new String("성공"));
		return model;
	}
	 */
    
    class FTPTransfer{
    	
    	//Field
    	FTPClient ftp = null;
    	int reply = 0;
    	boolean result = false;
    	boolean isSuccess = false;
    	File uploadFile = null;
    	FileInputStream fis = null;
    	String fileToDelete = null;
    	
    	public boolean insert(String ip, int port, String id, String password, String uploaddir, String makedir, ArrayList<File> imageFileList){
    		
    		System.out.println("====================<ftp통신 이미지 파일 insert 시작...>====================");
    		
    		try {
    			ftp = new FTPClient();
				ftp.connect(ip, port);
				
				reply = ftp.getReplyCode();
				if(!FTPReply.isPositiveCompletion(reply)){
					System.out.println("Connection Failed......");
					ftp.disconnect();
					return result;
				}
				
				if(!ftp.login(id, password)){
					System.out.println("Could not login to server......");
					ftp.logout();
					return result;
				}
				
				ftp.setFileType(FTP.BINARY_FILE_TYPE);
				ftp.enterLocalPassiveMode();
				
				for(int i=0;i<imageFileList.size();i++){
					String sourceFile = imageFileList.get(i).toString();
					System.out.println("sourceFile : " + sourceFile);
					System.out.println("현재 ftp 디렉토리 : " + ftp.printWorkingDirectory());
					System.out.println("ftp 디렉토리 /freshmarket/itempictures로 이동중......");
					ftp.changeWorkingDirectory("/"+uploaddir);
					ftp.changeWorkingDirectory("/freshmarket/itempictures");
					System.out.println("이동 후 ftp 디렉토리 : "+ ftp.printWorkingDirectory());
					
					uploadFile = new File(sourceFile);
					try{
						fis = new FileInputStream(uploadFile);
						isSuccess = ftp.storeFile(uploadFile.getName(), fis);
						if(isSuccess){
							System.out.println(sourceFile + " 파일 FTP 업로드 성공!!!");
						}//end Of if
					 
					} catch(IOException e) {
			            	e.printStackTrace();
			        } finally {
			            if (fis != null) {
				           try { 
				             fis.close(); 
				           } catch(IOException e) {
				            	  e.printStackTrace();
				           }
			            }//end Of if
			          }//end Of finally
					}//end of for statement
				
				ftp.logout();
				result = true;
				
			} catch (SocketException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if(ftp != null && ftp.isConnected()){
					try {
						ftp.disconnect();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
				}//end Of if
			
			}//end Of finally
    		
    		System.out.println("====================<ftp통신 이미지 파일 insert 종료...>====================");	
    		return result;
    		
    	}//end Of Method
    	
    	public boolean delete(String ip, int port, String id, String password, String deletedir, Item item){
    		System.out.println("====================<ftp통신 이미지 파일 delete 시작...>====================");
    		
    		try {
    			ftp = new FTPClient();
				ftp.connect(ip, port);
				
				reply = ftp.getReplyCode();
				if(!FTPReply.isPositiveCompletion(reply)){
					System.out.println("Connection Failed......");
					ftp.disconnect();
					return result;
				}
				
				if(!ftp.login(id, password)){
					System.out.println("Could not login to server......");
		    		ftp.logout();
		    		return result;
				}
				
				System.out.println("getItemPicturePath1" + item.getItemPicturePath1());
				//Console 출력창 확인. 
				System.out.println("getItemPicturePath2" + item.getItemPicturePath2());
				//Console 출력창 확인. 
				System.out.println("getItemPicturePath3" + item.getItemPicturePath3());
				//Console 출력창 확인. 
				
				ArrayList<String> imageList = new ArrayList<String>();
				imageList.add(item.getItemPicturePath1());
				imageList.add(item.getItemPicturePath2());
				imageList.add(item.getItemPicturePath3());
				
				System.out.println("imageList : "+imageList);
				//Console 출력창 확인. 
				
				for(int i=0; i<imageList.size();i++){
					fileToDelete = "/" + deletedir + "/itempictures"+"/"+imageList.get(i);
					System.out.println("fileToDelete" + fileToDelete);
					//Console 출력창 확인.
					
					result = ftp.deleteFile(fileToDelete);
					
					if(result){
						System.out.println("Deleting file from imageserver success!!!!!!");
					}
					else{
						System.out.println("Could not delete file from imageserver......");
						return result;
					}//end Of if
				
				}//end Of for statement
				
			} catch (SocketException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    		return result;
    	
    	}//end Of Method
    
    }//end Of Inner Class 
    
}// end Of Class
