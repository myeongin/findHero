package com.findhero.service;

import java.util.List;

import com.findhero.dao.RequestDao;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

public class RequestServiceImpl implements RequestService {

	private RequestDao requestDao;
	public void setRequestDao(RequestDao requestDao) {
		this.requestDao = requestDao;
	}
	@Override
	public int requestRegister(RequestVo request) {
		
		int countHeros = 0;
		
		requestDao.requestRegister(request);
		
		List<HeroVo> heros=requestDao.selectHerosByReqest(request);
		
		for(HeroVo hero : heros) {
			requestDao.insertConfirm(request.getRequestNo(),hero.getHeroNo());
		}
		
		if(heros.size() != 0) {			
			countHeros = heros.size();			
		}
					
		return countHeros;
	}
	
	@Override
	public List<UserVo> selectUser(int userNo) {
		List<UserVo> user = requestDao.selectUser(userNo);
		
		return user;
	}
	@Override
	public List<HeroVo> selectHero(int heroNo) {
		List<HeroVo> hero = requestDao.selectHero(heroNo);
		
		return hero;
	}
	
	@Override
	public List<ReviewVo> takeReviews(int from, int to) {
		
		List<ReviewVo> reviews = requestDao.selectReviews(from,to);
		
		return reviews;
	}

	@Override
	public int countReviews() {
		
		int reviewsCount = requestDao.countReviews();
		
		return reviewsCount;
	}

}
