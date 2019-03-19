package com.findhero.ui;

import java.util.Date;

public class ThePager {
	
	private int pageSize;//한 페이지당 데이터 개수
	private int pagerSize;//번호로 보여주는 페이지 Link 개수
	private int dataCount;//총 데이터 수	
	private int currentPage;//현재 페이지 번호
	private int pageCount;//총 페이지 수
	
	private int no;
	private String data;
	
	private String linkUrl;//페이저가 포함되는 페이지의 주소
	
	public ThePager(int dataCount, int currentPage, 
		int pageSize, int pagerSize, String linkUrl) {
				
		this.linkUrl = linkUrl;		
		this.dataCount = dataCount;
		this.pageSize = pageSize;
		this.pagerSize = pagerSize;
		this.currentPage = currentPage;		
		pageCount = 
			(dataCount / pageSize) + ((dataCount % pageSize) > 0 ? 1 : 0); 
	}
	
	public ThePager(int dataCount, int currentPage, 
			int pageSize, int pagerSize, String linkUrl,int no,String data) {
						
			this.linkUrl = linkUrl;		
			this.dataCount = dataCount;
			this.pageSize = pageSize;
			this.pagerSize = pagerSize;
			this.currentPage = currentPage;	
			this.no= no;
			this.data=data;
			
			pageCount = 
				(dataCount / pageSize) + ((dataCount % pageSize) > 0 ? 1 : 0); 
		}
	
	public String toString(){
		StringBuffer linkString = new StringBuffer();
		
		if (currentPage > 1) {
			linkString.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s?pageNo=%d\"><span class=\"ion-ios-arrow-back\"></span></a></li>", linkUrl, currentPage - 1));
		}			
		
		//2. 페이지 번호 Link 만들기
		int pagerBlock = (currentPage - 1) / pagerSize;
		int start = (pagerBlock * pagerSize) + 1;
		int end = start + pagerSize;
		for (int i = start; i < end; i++) {
			if (i > pageCount) break;
			if(i == currentPage) {
				linkString.append(String.format("<li class=\"page-item active\"><a class=\"page-link\">%s</a></li>", i));
			} else { 
				linkString.append(String.format(					
				"<li class=\"page-item\"><a class=\"page-link\" href=\"%s?pageNo=%d\">%d</a></li>" , linkUrl,i,i));
			}
//			linkString.append("&nbsp;");
		}
		
		if (currentPage < pageCount) {
			linkString.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s?pageNo=%d\"><span class=\"ion-ios-arrow-forward\"></span></a></li>",linkUrl, currentPage + 1));
		}
		
		return linkString.toString();
	}

	
	
	public String toString2(){
		StringBuffer linkString2 = new StringBuffer();
		
		if (currentPage > 1) {
			linkString2.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s?pageNo=%d&%s=%d\"><span class=\"ion-ios-arrow-back\"></span></a></li>", linkUrl, currentPage - 1,data,no));
		}			
		
		//2. 페이지 번호 Link 만들기
		int pagerBlock = (currentPage - 1) / pagerSize;
		int start = (pagerBlock * pagerSize) + 1;
		int end = start + pagerSize;
		for (int i = start; i < end; i++) {
			if (i > pageCount) break;
			if(i == currentPage) {
				linkString2.append(String.format("<li class=\"page-item active\"><a class=\"page-link\">%s</a></li>", i));
			} else { 
				linkString2.append(String.format(					
				"<li class=\"page-item\"><a class=\"page-link\" href=\"%s?pageNo=%d&%s=%d\">%d</a></li>" , linkUrl,i,data,no,i));
			}
//			linkString.append("&nbsp;");
		}
		
		if (currentPage < pageCount) {
			linkString2.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s?pageNo=%d&%s=%d\"><span class=\"ion-ios-arrow-forward\"></span></a></li>",linkUrl, currentPage + 1,data,no));
		}
		
		return linkString2.toString();
	}
	
	public String toString3(){
		StringBuffer linkString3 = new StringBuffer();
		
		if (currentPage > 1) {
			linkString3.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s?pageNo=%d\"><span class=\"ion-ios-arrow-back\"></span></a></li>", linkUrl, currentPage - 1));
		}			
		
		//2. 페이지 번호 Link 만들기
		int pagerBlock = (currentPage - 1) / pagerSize;
		int start = (pagerBlock * pagerSize) + 1;
		int end = start + pagerSize;
		for (int i = start; i < end; i++) {
			if (i > pageCount) break;
			if(i == currentPage) {
				linkString3.append(String.format("<li class=\"page-item active\"><a class=\"page-link\">%s</a></li>", i));
			} else { 
				linkString3.append(String.format(					
				"<li class=\"page-item\"><a class=\"page-link\" href=\"%s&pageNo=%d\">%d</a></li>" , linkUrl,i,i));
			}
//			linkString.append("&nbsp;");
		}
		
		if (currentPage < pageCount) {
			linkString3.append(String.format(
					"<li class=\"page-item next\"><a class=\"page-link\" href=\"%s&pageNo=%d\"><span class=\"ion-ios-arrow-forward\"></span></a></li>",linkUrl, currentPage + 1));
		}
		
		return linkString3.toString();
	}
}














