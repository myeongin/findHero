package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;





public interface ReviewMapper {
	
	
	List<ReviewVo> selectReview(HashMap<String,Object> selects);

	void writeReview(HashMap<String, Object> params);

	List<ReviewVo> reviewList(int userNo, int heroNo);

	ReviewVo getReview(int reviewNo);

	int getReviewNo(HashMap<String, Object> params);

	
	void insertReview(ReviewVo review);

	//리뷰쓰기
	void registerReview(ReviewVo review);
	
	
	
	//리뷰목록(나중에)
	List<ReviewVo> reviewListMapper(int heroNo, int reviewNo);
	
	void remove(int reviewNo);

	HeroVo selectHero(int heroNo);

	RsVo selectRs(int rsNo);

	UserVo selectUser(int userNo);

	List<ReviewVo> reviewList(HashMap<String, Object> review);

	List<UserVo> selectUserList(int heroNo);

	
	
	



}
