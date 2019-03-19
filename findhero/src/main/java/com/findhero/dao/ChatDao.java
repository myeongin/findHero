package com.findhero.dao;

import java.util.List;

import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

public interface ChatDao {

	List<ChatVo> selectAllChat(int userNo);
	List<ChatVo> selectAllHeroChat(int heroNo);
	List<HeroVo> selectAllHero(int userNo);
	List<ChatContentVo> selectAllUserContent(int userNo);
	List<UserVo> selectAllUserChat(int heroNo);
	List<ChatContentVo> selectAllHeroContent(int chatNo);
	List<ChatContentVo> selectUserContent(int chatNo);
	List<HeroVo> selectChatDetailHero(int userNo, int chatNo);
	List<UserVo> selectChatDetailUser(int heroNo, int chatNo);
	int selectHeroNo(int userNo);
	List<HeroVo> selectListChatHero(int heroNo);
	List<ChatContentVo> selectListChatContent(int chatNo);
	List<UserVo> selectListChatUser(int userNo);
	void insertContentUserWrite(ChatContentVo chatContent);
	void deleteChat(int chatNo);
	int selectChatNo(int userNo, int heroNo);
	void insertChat(int userNo, int heroNo);
	void chatUpdateDel(int chatNo);
	int selectChatDetailHeroNo(int chatNo);






}
