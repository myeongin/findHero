package com.findhero.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.findhero.service.ChatService;
import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

@Controller
@RequestMapping("/chat/")
public class ChatController {
	
	@Autowired
	@Qualifier("chatService")
	private ChatService chatservice;
	public void setChatservice(ChatService chatservice) {
		this.chatservice = chatservice;
	}

	// 채팅 전체 리스트
	@RequestMapping(value = "/chats.action", method = RequestMethod.GET)
	public String listChat(HttpSession session, HeroVo hero, UserVo user, Model model) {
		
		user = (UserVo) session.getAttribute("user");
		hero = (HeroVo) session.getAttribute("hero");
		
		if (user != null) {
			
			List<ChatVo> chats = chatservice.selcetAllChat(user.getUserNo());
			
			for ( int x = 0; x < chats.size(); x ++) {
				
				ChatVo chat = chats.get(x);
				int chatNo = chat.getChatNo();
				
				List<HeroVo> heroes = chatservice.selectListChatHero(chat.getHeroNo());
				List<ChatContentVo> contents = chatservice.selectListChatContent(chatNo);
				
				chat.setHeroVo(heroes);
				chat.setChatContents(contents);
				
			}
			
			model.addAttribute("chats", chats);
			model.addAttribute("userNo", user.getUserNo());
	
			return "chat/chats";
		
		} else if (hero != null ) {
			
			List<ChatVo> chats = chatservice.selectAllHeroChat(hero.getHeroNo());
			
			for ( int x = 0; x < chats.size(); x ++) {
				
				ChatVo chat = chats.get(x);
				int chatNo = chat.getChatNo();
			
				List<UserVo> users = chatservice.selectListChatUser(chat.getUserNo());
				List<ChatContentVo> contents = chatservice.selectListChatContent(chatNo);
				
				chat.setUserVo(users);
				chat.setChatContents(contents);
				
			}
			
			model.addAttribute("chats", chats);
			model.addAttribute("heroNo", hero.getHeroNo());
			
			return  "chat/chats";
			
		} else {
			
			return "home";
		}
	}
	
	
	//////////////////////////////////////////////////////////////////////////
	
	
	// 채팅방 디테일
	@RequestMapping(value = "/content.action", method = RequestMethod.GET)
	public String detailChat(HttpSession session, HeroVo hero, UserVo user,
			@RequestParam(value = "chatNo", required = false, defaultValue = "0")int chatNo,
			@RequestParam(value = "userNo", required = false, defaultValue = "0")int userNo,
			@RequestParam(value = "heroNo", required = false, defaultValue = "0")int heroNo,
			Model model) {
		
		user = (UserVo) session.getAttribute("user");
		hero = (HeroVo) session.getAttribute("hero");
		
		if ( user != null ) {
			
			List<ChatContentVo> contents = chatservice.selectAllContent(chatNo);
			List<HeroVo> heros = chatservice.selectChatDetailHero(user.getUserNo(), chatNo);
			heroNo = chatservice.selectheroNo(chatNo);
			
			model.addAttribute("heros", heros);
			model.addAttribute("contents", contents);
			model.addAttribute("userNo", user.getUserNo());
			model.addAttribute("chatNo", chatNo);
			model.addAttribute("heroNo", heroNo);
			
			return "chat/content";
			
		} else if ( hero != null ) {
			
			List<ChatContentVo> contents = chatservice.selectAllContent(chatNo);
			List<UserVo> users = chatservice.selectChatDetailUser(hero.getHeroNo(), chatNo);
			
			model.addAttribute("users", users);
			model.addAttribute("contents", contents);
			model.addAttribute("heroNo", hero.getHeroNo());
			model.addAttribute("chatNo", chatNo);
				
			return "chat/content";
			
		} else {
			
		return "home";
		}
	}
	
	// 채팅방 디테일
	@RequestMapping(value = "/content2.action", method = RequestMethod.GET)
	public String detailChat2(
			@RequestParam(value = "chatNo", required = false, defaultValue = "0")int chatNo,
			@RequestParam(value = "userNo", required = false, defaultValue = "0")int userNo,
			@RequestParam(value = "heroNo", required = false, defaultValue = "0")int heroNo,
			Model model) {
		
			List<ChatContentVo> contents = chatservice.selectAllContent(chatNo);
			
			model.addAttribute("contents", contents);
			
			return "chat/content2";
 
		}
	
	
	// 채팅 입력
	@RequestMapping(value = "/content.action", method = RequestMethod.POST)
	@ResponseBody
	public String contentWrite(ChatContentVo chatContent) {
		
		chatservice.contentUserWrite(chatContent);
		
		return "success";
		
	}
	
	// 채팅방 삭제
	@RequestMapping(value = "/delete.action", method = RequestMethod.GET)
	public String contentDelete( 
			@RequestParam(value = "chatNo", required = false, defaultValue = "0")int chatNo,
			@RequestParam(value = "userNo", required = false, defaultValue = "0")int userNo,
			@RequestParam(value = "heorNo", required = false, defaultValue = "0")int heroNo,
			Model model) {
		
		chatservice.chatDelete(chatNo);
		
		model.addAttribute("userNo", userNo);
		model.addAttribute("heroNo", heroNo);
		
		return "redirect:/chat/chats.action";
	}
	
	// 채팅방 만들기
	@RequestMapping(value = "/insert.action", method = RequestMethod.GET)
	public String insertChat(
			@RequestParam(value = "userNo", required = false, defaultValue = "0")int userNo,
			@RequestParam(value = "heroNo", required = false, defaultValue = "0")int heroNo,
			@RequestParam(value = "heorNo", required = false, defaultValue = "0")int chatNo,
			Model model) {
		
		chatNo = chatservice.searchChatNo(userNo, heroNo); 
		
		if (chatNo > 0) {
			
			chatservice.chatUpdateDel(chatNo);
			
			model.addAttribute("chatNo", chatNo);
			model.addAttribute("userNo", userNo);
			model.addAttribute("heroNo", heroNo);
			
			return "redirect:/chat/content.action";
			
		} else if (chatNo == 0){
			
			chatservice.insertChat(userNo, heroNo);
			
			chatNo = chatservice.searchChatNo(userNo, heroNo);
			
			model.addAttribute("chatNo", chatNo);
			model.addAttribute("userNo", userNo);
			model.addAttribute("heroNo", heroNo);
			
			return "redirect:/chat/content.action";
			
		} else {
			
			return "home";
		}
		
	}
}
