package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.findhero.mapper.ReviewMapper;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;


@Repository("reviewDao")
public class ReviewDaoImpl implements ReviewDao{

	@Autowired
	@Qualifier("reviewMapper")
	private ReviewMapper reviewMapper;
	public void setReviewMapper(ReviewMapper reviewMapper) {
		this.reviewMapper = reviewMapper;
	}


	@Override  //1.리뷰등록
	public void insertReview(ReviewVo review) {

		reviewMapper.registerReview(review);
	}
	
	@Override //2.리뷰목록 부르기
	public List<ReviewVo> reviewListDao(int heroNo) {
		
		HashMap<String, Object> review = new HashMap<>();
		review.put("heroNo", heroNo);
		List<ReviewVo> reviewlist = reviewMapper.reviewList(review);
				
		return reviewlist;
	}


	
	
	
	
	
	
	
	
//	public List<ReviewVo> selectallReview(int reviewNo) {
//		List<ReviewVo> reviews = reviewMapper.reviewList(reviewNo);
//		return reviews;
//	}

	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public void writeReview(int userNo, int heroNo) {
		
		HashMap<String,Object> params=new HashMap<>();
		params.put("userNo",userNo);
		params.put("heroNo",heroNo);
		
		
		reviewMapper.writeReview(params);
		
		
	}
	
	@Override
	public void remove(int reviewNo) {
		
		reviewMapper.remove(reviewNo);
	}
	

	

	@Override
	public ReviewVo getReviewDao(int reviewNo) {
		ReviewVo vo = reviewMapper.getReview(reviewNo);
		return vo;
	}

	@Override
	public int getReviewNoDao(int userNo, int heroNo) {
		HashMap<String,Object> params = new HashMap<>();
		params.put("userNo",userNo);
		params.put("heroNo",heroNo);
		int reviewNo = reviewMapper.getReviewNo(params);
		return reviewNo;
	}

	@Override
	public List<HeroVo> heroListDao(HeroVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVo> userlistDao(UserVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVo> userListDao(UserVo vo) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<ReviewVo> selectallReview() {
		// TODO Auto-generated method stub
		return null;
	}



//	@Override
//	public void insertReview(ReviewVo review) {
//		// TODO Auto-generated method stub
//		
//	}



	@Override
	public ReviewVo selectbyreviewno(int reviewno) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void registerReview(ReviewVo review) {
		// TODO Auto-generated method stub
		
	}


	public HeroVo selectHero(int heroNo) {
		
		 HeroVo hero = reviewMapper.selectHero(heroNo);
		
		return hero;
	}


	public RsVo selectRs(int rsNo) {
			
			RsVo rs = reviewMapper.selectRs(rsNo);
		return rs;
	}


	public UserVo selectUser(int userNo) {
		 UserVo user = reviewMapper.selectUser(userNo);
		 
		return user;
	}


	public List<UserVo> reviewUserList(int heroNo) {
		List<UserVo> users = reviewMapper.selectUserList(heroNo);
		return users;
	}




	
//	@Override
//	public void registerReview(ReviewVo review) {
//		// TODO Auto-generated method stub
//		
//	}



	
	
	

	//필요없는거 같으니 일단 보류.
//	@Override
//	public List<HeroVo> heroListDao(HeroVo vo) {
//		List<HeroVo> herolist = reviewMapper.heroList(vo);
//		return herolist;
//	}
//	
//	@Override
//	public List<UserVo> userListDao(UserVo vo) {
//		List<UserVo> userlist = reviewMapper.userList(vo);
//		return userlist;
//	}
//	

}
