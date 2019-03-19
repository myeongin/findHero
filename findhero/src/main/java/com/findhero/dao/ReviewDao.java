package com.findhero.dao;

import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;

import com.findhero.vo.ReviewVo;

public interface ReviewDao {

	

	List<HeroVo> heroListDao(HeroVo vo);
	List<UserVo> userlistDao(UserVo vo);
	

	ReviewVo getReviewDao(int reviewNo);

	int getReviewNoDao(int userNo, int heroNo);
	void writeReview(int userNo, int heroNo);
	List<UserVo> userListDao(UserVo vo);
	void remove(int reviewNo);
	List<ReviewVo> selectallReview();
	ReviewVo selectbyreviewno(int reviewno);
	
	
	//리뷰목록
	List<ReviewVo> reviewListDao(int heroNo);
	
	
	
	void registerReview(ReviewVo review);
	void insertReview(ReviewVo review);
	
	
	
}
