package com.findhero.vo;

import java.util.Date;
import java.util.List;

public class RequestVo {
	
	private int requestNo;
	private String requestContent;
	private String requestField1;
	private String requestField2;
	private String requestAdd1;
	private String requestAdd2;
	private String requestAdd3;
	private String requestTerm;
	private String requestDay;
	private Date requestRegDate;
	private int userNo;
	
	private List<HeroVo> heros; 
	private int consentCount;
	private int confirmCount;
	private int confirmYCount;
	
	public int getConfirmCount() {
		return confirmCount;
	}
	public void setConfirmCount(int confirmCount) {
		this.confirmCount = confirmCount;
	}
	public int getConfirmYCount() {
		return confirmYCount;
	}
	public void setConfirmYCount(int confirmYCount) {
		this.confirmYCount = confirmYCount;
	}
	public int getRequestNo() {
		return requestNo;
	}
	public void setRequestNo(int requestNo) {
		this.requestNo = requestNo;
	}
	public String getRequestContent() {
		return requestContent;
	}
	public void setRequestContent(String requestContent) {
		this.requestContent = requestContent;
	}
	public String getRequestField1() {
		return requestField1;
	}
	public void setRequestField1(String requestField1) {
		this.requestField1 = requestField1;
	}
	public String getRequestField2() {
		return requestField2;
	}
	public void setRequestField2(String requestField2) {
		this.requestField2 = requestField2;
	}
	public String getRequestAdd1() {
		return requestAdd1;
	}
	public void setRequestAdd1(String requestAdd1) {
		this.requestAdd1 = requestAdd1;
	}
	public String getRequestAdd2() {
		return requestAdd2;
	}
	public void setRequestAdd2(String requestAdd2) {
		this.requestAdd2 = requestAdd2;
	}
	public String getRequestAdd3() {
		return requestAdd3;
	}
	public void setRequestAdd3(String requestAdd3) {
		this.requestAdd3 = requestAdd3;
	}
	public String getRequestTerm() {
		return requestTerm;
	}
	public void setRequestTerm(String requestTerm) {
		this.requestTerm = requestTerm;
	}
	public String getRequestDay() {
		return requestDay;
	}
	public void setRequestDay(String requestDay) {
		this.requestDay = requestDay;
	}
	public Date getRequestRegDate() {
		return requestRegDate;
	}
	public void setRequestRegDate(Date requestRegDate) {
		this.requestRegDate = requestRegDate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public List<HeroVo> getHeros() {
		return heros;
	}
	public void setHeros(List<HeroVo> heros) {
		this.heros = heros;
	}
	public int getConsentCount() {
		return consentCount;
	}
	public void setConsentCount(int consentCount) {
		this.consentCount = consentCount;
	}
	
	
	
}
