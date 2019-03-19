package com.findhero.vo;

import java.util.Date;
import java.util.List;




public class BlogVo {

	private int blogNo;
	private String blogName;
	private String blogAnswer1;
	private String blogAnswer2;
	private String blogAnswer3;
	private String blogAnswer4;
	private String blogAnswer5;
	private Boolean blogDel;
	private Date regDate;
	private int heroNo;
	private String blogImg;
	
	//BlogVo - BlogImgVo 사이의 1:Many 관계를 구현하는 필드
	private List<BlogImgVo> attachments;
	
	private HeroVo heroes;
	
	
	
	public HeroVo getHeroes() {
		return heroes;
	}
	public void setHeroes(HeroVo heroes) {
		this.heroes = heroes;
	}
	public List<BlogImgVo> getAttachments() {
		return attachments;
	}
	public void setAttachments(List<BlogImgVo> attachments) {
		this.attachments = attachments;
	}
	public String getBlogImg() {
		return blogImg;
	}
	public void setBlogImg(String blogImg) {
		this.blogImg = blogImg;
	}
	public int getBlogNo() {
		return blogNo;
	}
	public void setBlogNo(int blogNo) {
		this.blogNo = blogNo;
	}
	public String getBlogName() {
		return blogName;
	}
	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}
	public String getBlogAnswer1() {
		return blogAnswer1;
	}
	public void setBlogAnswer1(String blogAnswer1) {
		this.blogAnswer1 = blogAnswer1;
	}
	public String getBlogAnswer2() {
		return blogAnswer2;
	}
	public void setBlogAnswer2(String blogAnswer2) {
		this.blogAnswer2 = blogAnswer2;
	}
	public String getBlogAnswer3() {
		return blogAnswer3;
	}
	public void setBlogAnswer3(String blogAnswer3) {
		this.blogAnswer3 = blogAnswer3;
	}
	public String getBlogAnswer4() {
		return blogAnswer4;
	}
	public void setBlogAnswer4(String blogAnswer4) {
		this.blogAnswer4 = blogAnswer4;
	}
	public String getBlogAnswer5() {
		return blogAnswer5;
	}
	public void setBlogAnswer5(String blogAnswer5) {
		this.blogAnswer5 = blogAnswer5;
	}
	public Boolean getBlogDel() {
		return blogDel;
	}
	public void setBlogDel(Boolean blogDel) {
		this.blogDel = blogDel;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getHeroNo() {
		return heroNo;
	}
	public void setHeroNo(int heroNo) {
		this.heroNo = heroNo;
	}
	

	
}
