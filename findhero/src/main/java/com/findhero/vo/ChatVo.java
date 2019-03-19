package com.findhero.vo;

import java.util.List;

public class ChatVo {

	private int ChatNo;
	private int ChatDel;
	private int UserNo;
	private int HeroNo;
	
	private List<ChatContentVo> chatContents;
	private List<UserVo> userVo;
	private List<HeroVo> heroVo;
	private List<RequestVo> requestVo; 
	
	
	public int getChatNo() {
		return ChatNo;
	}
	public void setChatNo(int chatNo) {
		ChatNo = chatNo;
	}
	public int getChatDel() {
		return ChatDel;
	}
	public void setChatDel(int chatDel) {
		ChatDel = chatDel;
	}
	public int getUserNo() {
		return UserNo;
	}
	public void setUserNo(int userNo) {
		UserNo = userNo;
	}
	public int getHeroNo() {
		return HeroNo;
	}
	public void setHeroNo(int heroNo) {
		HeroNo = heroNo;
	}
	public List<ChatContentVo> getChatContents() {
		return chatContents;
	}
	public void setChatContents(List<ChatContentVo> chatContents) {
		this.chatContents = chatContents;
	}
	public List<UserVo> getUserVo() {
		return userVo;
	}
	public void setUserVo(List<UserVo> userVo) {
		this.userVo = userVo;
	}
	public List<HeroVo> getHeroVo() {
		return heroVo;
	}
	public void setHeroVo(List<HeroVo> heroVo) {
		this.heroVo = heroVo;
	}
	public List<RequestVo> getRequestVo() {
		return requestVo;
	}
	public void setRequestVo(List<RequestVo> requestVo) {
		this.requestVo = requestVo;
	}
	
		
	
	
}
