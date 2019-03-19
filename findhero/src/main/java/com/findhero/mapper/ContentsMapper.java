package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface ContentsMapper {

	void registerLesson(RsVo rs);

	List<RsVo> viewList(HashMap<String, Object> params);

	List<RsVo> viewListbyUser(HashMap<String, Object> params);

	RsVo lessonDetail(int rsNo);

	HeroVo heroinfo(int rsNo);

	void updateContents(RsVo rsVo);

	void deleteContent(int rsNo);

	int selectContentsCount(String field);

	void insertRsAttach(AttachVo attach);

	void apply(ApplyVo apply);

	List<RsVo> Fieldlist(String field);

	int selectUserNo();

	List<UserVo> userApplytoExpert(int rsNo);

	void registerReview(ReviewVo review);

	List<ReviewVo> reviewload(int rsNo);

	List<HeroVo> heroinfo2(int heroNo);

	int selectreviewCount(int heroNo);

	void updateAbout(HeroVo hero);

	Float selectHeroAvg(int heroNo);

	Float selectpro(int heroNo);

	int usercount(int rsNo);

	Float selectsatisfied(int heroNo);

	Float selectreliability(int heroNo);



}
