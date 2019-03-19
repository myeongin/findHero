package com.findhero.service;

import java.util.List;

import com.findhero.dao.ChatDao;
import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

public class ChatServiceImpl implements ChatService {

	private ChatDao chatdao;
	public void setChatdao(ChatDao chatdao) {
		this.chatdao = chatdao;
	}
	
	@Override
	public List<ChatVo> selcetAllChat(int userNo) {
		
		List<ChatVo> chats = chatdao.selectAllChat(userNo);
		
		return chats;
	}

	@Override
	public List<ChatContentVo> selectAllContent(int chatNo) {
		
		List<ChatContentVo> contents = chatdao.selectUserContent(chatNo);
		
		return contents;
	}

	@Override
	public List<HeroVo> selectChatDetailHero(int userNo, int chatNo) {
		
		List<HeroVo> heros = chatdao.selectChatDetailHero(userNo, chatNo);
		
		return heros;
	}

	@Override
	public List<UserVo> selectChatDetailUser(int heroNo, int chatNo) {
		
		List<UserVo> users = chatdao.selectChatDetailUser(heroNo, chatNo);
		
		return users;
	}

	@Override
	public List<HeroVo> selectListChatHero(int heroNo) {
		
		List<HeroVo> heros = chatdao.selectListChatHero(heroNo);
		
		return heros;
	}

	@Override
	public List<ChatContentVo> selectListChatContent(int chatNo) {
		
		List<ChatContentVo> contents = chatdao.selectListChatContent(chatNo);
		
		return contents;
	}

	@Override
	public List<ChatVo> selectAllHeroChat(int heroNo) {
		
		List<ChatVo> chats = chatdao.selectAllHeroChat(heroNo);
		return chats;
	}

	@Override
	public List<UserVo> selectListChatUser(int userNo) {
		
		List<UserVo> users = chatdao.selectListChatUser(userNo);
		
		return users;
	}

	@Override
	public void contentUserWrite(ChatContentVo chatContent) {
		
		chatdao.insertContentUserWrite(chatContent);
		
	}

	@Override
	public void chatDelete(int chatNo) {
		
		chatdao.deleteChat(chatNo);
		
	}

	@Override
	public int searchChatNo(int userNo, int heroNo) {
		
		int chatNo = chatdao.selectChatNo(userNo, heroNo);
		
		return chatNo;
	}

	@Override
	public void insertChat(int userNo, int heroNo) {
		
		chatdao.insertChat(userNo, heroNo);
		
	}

	@Override
	public void chatUpdateDel(int chatNo) {
		
		chatdao.chatUpdateDel(chatNo);
		
	}

	@Override
	public int selectheroNo(int chatNo) {
		
		int heroNo = chatdao.selectChatDetailHeroNo(chatNo);
		
		return heroNo;
	}




	

}
