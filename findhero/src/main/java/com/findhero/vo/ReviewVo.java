package com.findhero.vo;

import java.util.Date;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

public class ReviewVo {
	
	
//	댓글번호  - ReviewNo
//	댓글내용 - ReviewContent varchar(2000)
//	전문성 - Pro Int
//	만족도 - Satisfied  INT
//	신뢰성 - Reliability INT
//	작성날짜 - RegDate (DATETIME)      ㅡㅡ current_timestamp()
//	회원번호 - UserNo 
//	전문가번호 - HeroNo
	
	private int reviewNo;
	private String reviewContent;
	private int pro;
	private int satisfied;
	private int reliability;
	private Date regDate;
	private int userNo;
	private int heroNo;
	private String userName;
	
	private List<UserVo> users;
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getPro() {
		return pro;
	}
	public void setPro(int pro) {
		this.pro = pro;
	}
	public int getSatisfied() {
		return satisfied;
	}
	public void setSatisfied(int satisfied) {
		this.satisfied = satisfied;
	}
	public int getReliability() {
		return reliability;
	}
	public void setReliability(int reliability) {
		this.reliability = reliability;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getHeroNo() {
		return heroNo;
	}
	public void setHeroNo(int heroNo) {
		this.heroNo = heroNo;
	}
	public List<UserVo> getUsers() {
		return users;
	}
	public void setUsers(List<UserVo> users) {
		this.users = users;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
		
	
	
}
	
