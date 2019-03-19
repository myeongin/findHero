package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

public interface ChatMapper {

	List<ChatVo> selectAllChat(HashMap<String, Object> user);
	List<HeroVo> selectAllHero(HashMap<String, Object> hero);
	List<ChatContentVo> selectAllUserContent(HashMap<String, Object> content);
	List<ChatVo> selectAllHeroChat(HashMap<String, Object> hero);
	List<UserVo> selectAllUserChat(HashMap<String, Object> hero);
	List<ChatContentVo> selectAllHeroContent(HashMap<String, Object> content);
	List<ChatContentVo> selectChatUserDetailContent(HashMap<String, Object> content);
	List<HeroVo> selectChatDetailHero(HashMap<String, Object> content);
	List<UserVo> selectChatDetailUser(HashMap<String, Object> content);
	int selectHeroNo(int userNo);
	List<HeroVo> selectListChatHero(HashMap<String, Object> chats);
	List<ChatContentVo> selectListChatContent(HashMap<String, Object> chats);
	List<UserVo> selectListChatUser(HashMap<String, Object> chats);
	void insertContentUserWrite(ChatContentVo chatContent);
	void deleteChat(int chatNo);
	Integer selectChatNo(HashMap<String, Object> account);
	void insertChat(HashMap<String, Object> account);
	void updateChatDel(int chatNo);
	int selectChatDetailHeroNo(int chatNo);






}
