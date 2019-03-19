package com.findhero.vo;

import java.util.Date;
import java.util.List;

public class ChatContentVo {
	
	private int chatCountNo;
	private Date time;
	private String content;
	private int user;
	private int chatNo;
	
	List<ChatVo> chats;
	
	
	public int getChatCountNo() {
		return chatCountNo;
	}
	public void setChatCountNo(int chatCountNo) {
		this.chatCountNo = chatCountNo;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public int getChatNo() {
		return chatNo;
	}
	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}
	public List<ChatVo> getChats() {
		return chats;
	}
	public void setChats(List<ChatVo> chats) {
		this.chats = chats;
	}
	
	

}
