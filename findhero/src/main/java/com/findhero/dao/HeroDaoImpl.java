package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.HeroMapper;
import com.findhero.vo.HeroVo;

public class HeroDaoImpl implements HeroDao{
	
	private HeroMapper heroMapper;
	public void setHeroMapper(HeroMapper heroMapper) {
		this.heroMapper = heroMapper;
	}
	
	@Override
	public List<HeroVo> selectHeros(int from, int to) {
		
		HashMap<String, Object> page = new HashMap<>();
		page.put("from", from);
		page.put("to",to);
		page.put("del",1);
		
		List<HeroVo> heros = heroMapper.selectHeros(page);
		
		return heros;
	}

	@Override
	public int countHeros() {
		
		int herosCount = heroMapper.countHeros();
		
		return herosCount;
	}
	
	
}
