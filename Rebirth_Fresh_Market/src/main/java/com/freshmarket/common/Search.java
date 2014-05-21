package com.freshmarket.common;
public class Search {
    //Field
	private Integer pageSize;
    private Integer currentPage;
    private String searchCondition;
    private String searchKeyword;
    private Integer startRowNum;
    private Integer endRowNum;

    //Constructor
    public Search() {
		// TODO Auto-generated constructor stub
	}
    
	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	
    public Integer getStartRowNum(){
    	return (getCurrentPage()-1)*getPageSize()+1;
    }
	
	public Integer getEndRowNum(){
    	return getCurrentPage()*getPageSize();
    }

}
