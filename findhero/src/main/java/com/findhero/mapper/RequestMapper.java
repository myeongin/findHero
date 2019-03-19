package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

public interface RequestMapper {

	void requestRegister(RequestVo request);

	List<HeroVo> selectHerosByRequest(RequestVo request);

	void insertConfirm(HashMap<String, Object> number);

	List<ReviewVo> selectReviews(HashMap<String, Object> page);

	int countReviews();

	List<UserVo> selectUser(int userNo);

	List<HeroVo> selectHero(int heroNo);

}
