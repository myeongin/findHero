package com.findhero.vo;

import java.sql.Date;
import java.util.List;

public class RsVo {	//요청서, 서비스 등록 vo
	
	
private int RsNo;	//자동증가처리
private String RsTitle;	//제목
private String RsContent;	//내용
private String RsField1;	//분야1
private String RsField2;	//분야2
private String RsCount;	//인원수
private String RsDay; 	//요일
private String RsTerm; //기간
private String RsAdd1;	//도로명주소
private String RsAdd2;	// 동/읍/면
private String RsAdd3;	//상세주소
private int RsPrice;	//서비스가격
private Date RsRegDate; //등록날짜 (default설정)
private Date RsStart;	//시작날짜
private Date RsEnd;	//종료날짜
private String RsDel;	//?
private String RsType;	//?
private int HeroNo;	//외래키 hero

private HeroVo hero;
private List<UserVo> users;
private int applyCount;
private List<AttachVo> attachments;

public HeroVo getHero() {
	return hero;
}
public void setHero(HeroVo hero) {
	this.hero = hero;
}
public int getRsNo() {
	return RsNo;
}
public void setRsNo(int rsNo) {
	RsNo = rsNo;
}
public String getRsTitle() {
	return RsTitle;
}
public void setRsTitle(String rsTitle) {
	RsTitle = rsTitle;
}
public String getRsContent() {
	return RsContent;
}
public void setRsContent(String rsContent) {
	RsContent = rsContent;
}
public String getRsField1() {
	return RsField1;
}
public void setRsField1(String rsField1) {
	RsField1 = rsField1;
}
public String getRsField2() {
	return RsField2;
}
public void setRsField2(String rsField2) {
	RsField2 = rsField2;
}
public String getRsCount() {
	return RsCount;
}
public void setRsCount(String rsCount) {
	RsCount = rsCount;
}
public String getRsDay() {
	return RsDay;
}
public void setRsDay(String rsDay) {
	RsDay = rsDay;
}
public String getRsTerm() {
	return RsTerm;
}
public void setRsTerm(String rsTerm) {
	RsTerm = rsTerm;
}
public String getRsAdd1() {
	return RsAdd1;
}
public void setRsAdd1(String rsAdd1) {
	RsAdd1 = rsAdd1;
}
public String getRsAdd2() {
	return RsAdd2;
}
public void setRsAdd2(String rsAdd2) {
	RsAdd2 = rsAdd2;
}
public String getRsAdd3() {
	return RsAdd3;
}
public void setRsAdd3(String rsAdd3) {
	RsAdd3 = rsAdd3;
}
public int getRsPrice() {
	return RsPrice;
}
public void setRsPrice(int rsPrice) {
	RsPrice = rsPrice;
}
public Date getRsRegDate() {
	return RsRegDate;
}
public void setRsRegDate(Date rsRegDate) {
	RsRegDate = rsRegDate;
}
public Date getRsStart() {
	return RsStart;
}
public void setRsStart(Date rsStart) {
	RsStart = rsStart;
}
public Date getRsEnd() {
	return RsEnd;
}
public void setRsEnd(Date rsEnd) {
	RsEnd = rsEnd;
}
public String getRsDel() {
	return RsDel;
}
public void setRsDel(String rsDel) {
	RsDel = rsDel;
}
public String getRsType() {
	return RsType;
}
public void setRsType(String rsType) {
	RsType = rsType;
}
public int getHeroNo() {
	return HeroNo;
}
public void setHeroNo(int heroNo) {
	HeroNo = heroNo;
}
public List<UserVo> getUsers() {
	return users;
}
public void setUsers(List<UserVo> users) {
	this.users = users;
}
public List<AttachVo> getAttachments() {
	return attachments;
}
public void setAttachments(List<AttachVo> attachments) {
	this.attachments = attachments;
}
public int getApplyCount() {
	return applyCount;
}
public void setApplyCount(int applyCount) {
	this.applyCount = applyCount;
}

}
