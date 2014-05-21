package com.freshmarket.common;
public class Page {
    
	//Field
	private Integer currentPage;
    private Integer totalCount;
    private Integer pageUnit;
    private Integer pageSize;
    private Integer maxPage;
    private Integer beginUnitPage;
    private Integer endUnitPage;
    
    //Constructor
  	public Page() {
  	}
  	public Page( int currentPage, int totalCount,	int pageUnit, int pageSize ) {
  		this.totalCount = totalCount;
  		this.pageUnit = pageUnit;
  		this.pageSize = pageSize;
  		
  		this.maxPage = (pageSize == 0) ? totalCount :  (totalCount-1)/pageSize +1;
  		this.currentPage = ( currentPage > maxPage) ? maxPage : currentPage;
  		
  		this.beginUnitPage = ( (currentPage-1) / pageUnit ) * pageUnit +1 ;
  		
  		if( maxPage <= pageUnit ){
  			this.endUnitPage = maxPage;
  		}else{
  			this.endUnitPage = beginUnitPage + (pageUnit -1);
  			if( maxPage <= endUnitPage){
  				this.endUnitPage = maxPage;
  			}
  		}
  	}
  	
  	// getter - setter
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(Integer pageUnit) {
		this.pageUnit = pageUnit;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(Integer maxPage) {
		this.maxPage = maxPage;
	}
	public Integer getBeginUnitPage() {
		return beginUnitPage;
	}
	public void setBeginUnitPage(Integer beginUnitPage) {
		this.beginUnitPage = beginUnitPage;
	}
	public Integer getEndUnitPage() {
		return endUnitPage;
	}
	public void setEndUnitPage(Integer endUnitPage) {
		this.endUnitPage = endUnitPage;
	}
  	
}
