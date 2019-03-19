package com.findhero.service;

import java.util.List;

import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

public interface ChatService {

	// List Chat
	List<ChatVo> selcetAllChat(int userNo);
	List<HeroVo> selectListChatHero(int heroNo);
	List<ChatContentVo> selectListChatContent(int chatNo);
	
	List<ChatVo> selectAllHeroChat(int heroNo);
	List<UserVo> selectListChatUser(int userNo);
	

	// Detail Chat
	List<ChatContentVo> selectAllContent(int chatNo);
	List<HeroVo> selectChatDetailHero(int userNo, int chatNo);
	List<UserVo> selectChatDetailUser(int heroNo, int chatNo);
	int selectheroNo(int chatNo);
	
	
	// Writer Content
	void contentUserWrite(ChatContentVo chatContent);
	
	// Delete Chat
	void chatDelete(int chatNo);
	
	// Search Chat
	int searchChatNo(int userNo, int heroNo);
	
	// insert Chat
	void insertChat(int userNo, int heroNo);
	
	// update del Chat
	void chatUpdateDel(int chatNo);
	
	
	
	
	
	
	






}
