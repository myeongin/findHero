package com.findhero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.findhero.service.HeroService;
import com.findhero.ui.ThePager;
import com.findhero.vo.HeroVo;


@Controller
@RequestMapping("/hero/")
public class HeroController {
	
	@Autowired
	@Qualifier("heroService")
	private HeroService heroService;			
	public void setHeroService(HeroService heroService) {
		this.heroService = heroService;
	}


	@RequestMapping(value="findhero.action",method=RequestMethod.GET)
	public String findhero(Model model,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {
		
		int pagesize=6;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "findhero.action";
				
		List<HeroVo> heros = heroService.takeHeros(from,to);
		int herosCount = heroService.countHeros();
		
		ThePager pager = new ThePager(herosCount, pageNo, pagesize, pagersize, linkUrl);
		
		
		model.addAttribute("heros", heros);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);
		
		return "hero/findhero";
	}
	
}
