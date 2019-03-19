package com.findhero.service;

import java.util.List;

import com.findhero.dao.HeroDao;
import com.findhero.vo.HeroVo;

public class HeroServiceImpl implements HeroService{
	
	private HeroDao heroDao;
	public void setHeroDao(HeroDao heroDao) {
		this.heroDao = heroDao;
	}

	@Override
	public List<HeroVo> takeHeros(int from, int to) {
		
		List<HeroVo> heros = heroDao.selectHeros(from,to);
		
		return heros;
	}

	@Override
	public int countHeros() {
		
		int herosCount = heroDao.countHeros();
		
		return herosCount;
	}
	
	
	
}
