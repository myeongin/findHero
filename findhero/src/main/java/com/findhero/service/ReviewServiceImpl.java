package com.findhero.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.findhero.dao.ReviewDao;
import com.findhero.dao.ReviewDaoImpl;
import com.findhero.vo.UserVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;


public class ReviewServiceImpl implements ReviewService{
	@Autowired
	@Qualifier("reviewDao")
	private ReviewDaoImpl reviewDao;

	public void setReviewDao(ReviewDaoImpl reviewDao) {
		this.reviewDao = reviewDao;
	}
	
	
	//리뷰작성
	@Override
	public void registerReview(ReviewVo review) {
		reviewDao.insertReview(review);
	}
	
	//리뷰목록부르기

	@Override
	public List<ReviewVo> reviewListService(int heroNo) {
		List<ReviewVo> reviewlist = reviewDao.reviewListDao(heroNo);		
		
		return reviewlist;
	}

	
	
	
	
	
	
	
	
	@Override
	public List<ReviewVo> findallreview() {
		List<ReviewVo>reviews = reviewDao.selectallReview();
		return reviews;
		
	}	
	
	
	
	
	
	
	
	@Override
	public List<HeroVo> heroListService(HeroVo vo) {
		List<HeroVo> herolist = reviewDao.heroListDao(vo);
		return herolist;
	}

	public List<UserVo> userListService(UserVo vo) {
		List<UserVo> userlist = reviewDao.userListDao(vo);
		return userlist;
	}

	
	
	
	
	@Override
	public void writeReview(int userNo, int heroNo) {
		reviewDao.writeReview(userNo, heroNo);		
	}

	

	@Override
	public ReviewVo getReviewService(int reviewNo) {
		ReviewVo vo = reviewDao.getReviewDao(reviewNo);
		return vo;
	}

	@Override
	public int getReviewNoService(int userNo, int heroNo) {
		int reviewNo = reviewDao.getReviewNoDao(userNo,heroNo);
		return reviewNo;
	}

	@Override
	public void remove(int reviewNo) {
		// TODO Auto-generated method stub
		
	}

	
	//번호지정
	@Override
	public ReviewVo selectbyreviewno(int reviewno) {
		ReviewVo review=reviewDao.selectbyreviewno(reviewno);
		return review;
	}


	@Override
	public HeroVo selectHeros(int heroNo) {
		HeroVo hero = reviewDao.selectHero(heroNo);
				

		return hero;
	}


	@Override
	public RsVo selectRs(int rsNo) {
		RsVo rs = reviewDao.selectRs(rsNo);
		
		return rs;
	}


	@Override
	public UserVo selectUsers(int userNo) {
		 UserVo user = reviewDao.selectUser(userNo);
		 
		return user;
	}


	@Override
	public List<ReviewVo> findallvisitor() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void reviewRegisterService(ReviewVo vo) {
		// TODO Auto-generated method stub
		
	}


	


	@Override
	public List<ReviewVo> reviewListService() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<UserVo> reviewUserList(int heroNo) {
		List<UserVo> users = reviewDao.reviewUserList(heroNo);
		return users;
	}


	@Override
	public int getUserCountByUserNoAndHeroNo(int userNo, int heroNo) {
		// TODO Auto-generated method stub
		return reviewDao.selectUserCountByUserNoAndHeroNo(userNo, heroNo);
	}

	
}
