package com.findhero.service;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface ReviewService {



	int getReviewNoService(int userNo, int heroNo);

	void writeReview(int userNo, int heroNo);

	
	//리뷰목록 부르기
	List<ReviewVo> reviewListService(int heroNo);

	
	
	
	
	
	List<HeroVo> heroListService(HeroVo vo);

	List<UserVo> userListService(UserVo vo);

	ReviewVo getReviewService(int reviewNo);

	void remove(int reviewNo);

	
	
	void registerReview(ReviewVo review);
	
	
	
	
	List<ReviewVo> findallreview();

	ReviewVo selectbyreviewno(int reviewno);

	static void insertReview(ReviewVo review) {
		// TODO Auto-generated method stub
		
	}

	HeroVo selectHeros(int heroNo);

	RsVo selectRs(int rsNo);

	UserVo selectUsers(int userNo);

	List<ReviewVo> findallvisitor();
	
	
	
	
	
	
	
	
	void reviewRegisterService(ReviewVo vo);

	List<ReviewVo> reviewListService();

	List<UserVo> reviewUserList(int heroNo);
	
	int getUserCountByUserNoAndHeroNo(int userNo, int heroNo);


	
	
	

}
