package com.findhero.dao;

import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

public interface RequestDao {

	void requestRegister(RequestVo request);

	List<HeroVo> selectHerosByReqest(RequestVo request);

	void insertConfirm(int requestNo, int heroNo);

	List<ReviewVo> selectReviews(int from, int to);

	int countReviews();

	List<UserVo> selectUser(int userNo);

	List<HeroVo> selectHero(int heroNo);

}
