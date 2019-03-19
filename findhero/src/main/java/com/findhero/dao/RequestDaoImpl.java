package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.RequestMapper;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

public class RequestDaoImpl implements RequestDao{

	private RequestMapper requestMapper;
	public void setRequestMapper(RequestMapper requestMapper) {
		this.requestMapper = requestMapper;
	}
	@Override
	public void requestRegister(RequestVo request) {
		
		requestMapper.requestRegister(request);
		
	}
	
	@Override
	public List<HeroVo> selectHerosByReqest(RequestVo request) {
		
		List<HeroVo> heros= requestMapper.selectHerosByRequest(request);
		
		return heros;
	}
	
	@Override
	public void insertConfirm(int requestNo, int heroNo) {
		
		HashMap<String, Object> number = new HashMap<>();
		number.put("requestNo", requestNo);
		number.put("heroNo",heroNo);
		
		requestMapper.insertConfirm(number);
		
	}
	
	@Override
	public List<UserVo> selectUser(int userNo) {
		List<UserVo> user = requestMapper.selectUser(userNo);
		return user;
	}
	@Override
	public List<HeroVo> selectHero(int heroNo) {
		List<HeroVo> hero = requestMapper.selectHero(heroNo);
		return hero;
	}
	
	@Override
	public List<ReviewVo> selectReviews(int from, int to) {
		
		HashMap<String, Object> page = new HashMap<>();
		page.put("from", from);
		page.put("to",to);
		page.put("del",1);
		
		List<ReviewVo> reviews = requestMapper.selectReviews(page);
		
		return reviews;
	}

	@Override
	public int countReviews() {
		
		int reviewsCount = requestMapper.countReviews();
		
		return reviewsCount;
	}
}
