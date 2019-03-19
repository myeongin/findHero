package com.findhero.service;

import java.util.List;

import com.findhero.vo.ApplyVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface ContentsService {

	void registerLesson(RsVo rs);

	List<RsVo> viewList(int heroNo, int from, int to, String field);

	List<RsVo> viewListbyUser(int from, int to, String field, String rsdel);

	RsVo lessonDetail(int rsNo);

	HeroVo heroinfo(int rsNo);

	void updateContents(RsVo rsVo);

	void deleteContent(int rsNo);

	int selectcontentsCount(String field);

	void apply(ApplyVo apply);


	int selectUserNo();

	List<UserVo> userApplytoExpert(int rsNo);

	void reivewreg(ReviewVo review);

	List<ReviewVo> selectReviews(int rsNo);

	List<HeroVo> heroinfo2(int heroNo);

	int selectreviewCount(int heroNo);

	void updateAbout(HeroVo hero);

	float selectHeroAvg(int heroNo);

	float selectpro(int heroNo);

	int usercount(int rsNo);

	float selectsatisfied(int heroNo);

	float selectreliability(int heroNo);


}
