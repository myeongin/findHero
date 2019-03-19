package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.ChatMapper;
import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

public class ChatDaoImpl implements ChatDao{
	
	private ChatMapper chatmapper;
	public void setChatmapper(ChatMapper chatmapper) {
		this.chatmapper = chatmapper;
	}
	
	@Override
	public List<ChatVo> selectAllChat(int userNo) {
		
		HashMap<String, Object> user = new HashMap<>();
		user.put("userno",userNo);
		
		List<ChatVo> chats = chatmapper.selectAllChat(user);
		
		return chats;
	}

	@Override
	public List<HeroVo> selectAllHero(int userNo) {
		
		HashMap<String, Object> hero = new HashMap<>();
		hero.put("userno", userNo);
		
		List<HeroVo> heros = chatmapper.selectAllHero(hero);
		
		return heros;
	}

	@Override
	public List<ChatContentVo> selectAllUserContent(int userNo) {
		
		HashMap<String, Object> content = new HashMap<>();
		content.put("userno", userNo);
		
		List<ChatContentVo> contents = chatmapper.selectAllUserContent(content);
		
		return contents;
	}

	@Override
	public List<ChatVo> selectAllHeroChat(int heroNo) {
		
		HashMap<String, Object> hero = new HashMap<>();
		hero.put("herono", heroNo);
		
		List<ChatVo> chats = chatmapper.selectAllHeroChat(hero);
		
		return chats;
	}

	@Override
	public List<UserVo> selectAllUserChat(int heroNo) {
		
		HashMap<String, Object> hero = new HashMap<>();
		hero.put("herono", heroNo);
		
		List<UserVo> users = chatmapper.selectAllUserChat(hero);
		
		return users;
	}

	@Override
	public List<ChatContentVo> selectAllHeroContent(int chatNo) {
		
		HashMap<String, Object> content = new HashMap<>();
		content.put("chatno", chatNo);
		
		List<ChatContentVo> contents = chatmapper.selectAllHeroContent(content);
		return contents;
	}

	@Override
	public List<ChatContentVo> selectUserContent(int chatNo) {

		HashMap<String, Object> content = new HashMap<>();
		content.put("chatno", chatNo);
		
		List<ChatContentVo> contents = chatmapper.selectChatUserDetailContent(content);
		return contents;
	}

	@Override
	public List<HeroVo> selectChatDetailHero(int userNo, int chatNo) {
		
		HashMap<String, Object> content = new HashMap<>();
		content.put("userno", userNo);
		content.put("chatno", chatNo);
		
		List<HeroVo> heros = chatmapper.selectChatDetailHero(content);
		return heros;
	}

	@Override
	public List<UserVo> selectChatDetailUser(int heroNo, int chatNo) {
		
		HashMap<String, Object> content = new HashMap<>();
		content.put("herono", heroNo);
		content.put("chatno", chatNo);
		
		List<UserVo> users = chatmapper.selectChatDetailUser(content);
		return users;
	}

	@Override
	public int selectHeroNo(int userNo) {
		
		int heroNo = chatmapper.selectHeroNo(userNo);
		return heroNo;
	}

	@Override
	public List<HeroVo> selectListChatHero(int heroNo) {
		HashMap<String, Object> chats = new HashMap<>();
		chats.put("herono", heroNo);
		
		List<HeroVo> heros = chatmapper.selectListChatHero(chats);
		
		return heros;
	}

	@Override
	public List<ChatContentVo> selectListChatContent(int chatNo) {
		
		HashMap<String, Object> chats = new HashMap<>();
		chats.put("chatno", chatNo);
		
		List<ChatContentVo> contents = chatmapper.selectListChatContent(chats);
		
		return contents;
	}

	@Override
	public List<UserVo> selectListChatUser(int userNo) {
		
		HashMap<String, Object> chats = new HashMap<>();
		chats.put("userno", userNo);
		
		List<UserVo> users = chatmapper.selectListChatUser(chats);
		
		return users;
	}

	@Override
	public void insertContentUserWrite(ChatContentVo chatContent) {
		
		chatmapper.insertContentUserWrite(chatContent);
		
	}

	@Override
	public void deleteChat(int chatNo) {
		
		chatmapper.deleteChat(chatNo);
		
	}

	@Override
	public int selectChatNo(int userNo, int heroNo) {
		
		HashMap<String, Object> account = new HashMap<>();
		account.put("userno",userNo);
		account.put("herono",heroNo);
		
		Integer chatNo = chatmapper.selectChatNo(account);
		if (chatNo ==null) {
			chatNo = 0;
		}
		
		return chatNo;
	}

	@Override
	public void insertChat(int userNo, int heroNo) {
		
		HashMap<String, Object> account = new HashMap<>();
		account.put("userno", userNo);
		account.put("herono", heroNo);
		
		chatmapper.insertChat(account);
		
	}

	@Override
	public void chatUpdateDel(int chatNo) {
		
		chatmapper.updateChatDel(chatNo);
		
	}

	@Override
	public int selectChatDetailHeroNo(int chatNo) {
		
		int heroNo = chatmapper.selectChatDetailHeroNo(chatNo);
		
		return heroNo;
	}

	
	


}
