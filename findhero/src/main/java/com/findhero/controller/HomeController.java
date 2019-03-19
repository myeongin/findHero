package com.findhero.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestParam;


import com.findhero.service.RequestService;
import com.findhero.ui.ThePager;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("requestService")
	private RequestService requestService;
	public void setRequestService(RequestService requestService) {
		this.requestService = requestService;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/","home.action"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model, @RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {
		
		int pagesize=6;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "home.action";
				
		List<ReviewVo> reviews = requestService.takeReviews(from,to);
		for(ReviewVo review : reviews) {
			int userNo = review.getUserNo();
			int heroNo = review.getHeroNo();
			//user 조회
			List<UserVo> user = requestService.selectUser(userNo);
			List<HeroVo> hero = requestService.selectHero(heroNo);
		}
		int reviewsCount = requestService.countReviews();
		
		ThePager pager = new ThePager(reviewsCount, pageNo, pagesize, pagersize, linkUrl);
		
		model.addAttribute("reviews", reviews);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);
		
		return "home";
	}
	
	@RequestMapping(value="findRegister.action",method=RequestMethod.POST)
	public String findRegisterUser(RequestVo request,String content1,String content2,String content3,RedirectAttributes re) {
		
		if(request.getUserNo() == 0) {
			String noUser = "일반회원으로 로그인 해주세요";
			re.addFlashAttribute("noUser", noUser );
			
		}else {
		
			String content = content1 + "/" +content2 + "/" + content3;
			request.setRequestContent(content);
			
			int countHeros = requestService.requestRegister(request);		
			re.addFlashAttribute("herosCount",countHeros);
		}
		
		return "redirect:/home.action";
	}
	
}
