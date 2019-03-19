package com.findhero.service;

import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.UserVo;

public interface RequestService {

	int requestRegister(RequestVo request);

	List<ReviewVo> takeReviews(int from, int to);

	int countReviews();

	List<UserVo> selectUser(int userNo);

	List<HeroVo> selectHero(int heroNo);

}
