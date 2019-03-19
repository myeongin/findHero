package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.ContentsMapper;
import com.findhero.mapper.ReviewMapper;
import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public class ContentsDaoImpl implements ContentsDao {

	private ContentsMapper contentsMapper;

	public void setContentsMapper(ContentsMapper contentsMapper) {
		this.contentsMapper = contentsMapper;
	}
	
	private ReviewMapper reviewMapper;

	public void setReviewMapper(ReviewMapper reviewMapper) {
		this.reviewMapper = reviewMapper;
	}

	@Override
	public void registerLesson(RsVo rs) {

		contentsMapper.registerLesson(rs);

	}

	@Override
	public List<RsVo> viewList(int heroNo, int from, int to, String field) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("heroNo", heroNo);
		params.put("from", from);
		params.put("to", to);
		params.put("field", field);
		
		List<RsVo> rs = contentsMapper.viewList(params);
		return rs;
	}

	@Override
	public List<RsVo> viewListbyUser(int from, int to, String field, String rsDel) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to", to);
		params.put("field", field);
		params.put("rsdel", rsDel);
		
		List<RsVo> rs = contentsMapper.viewListbyUser(params);
		return rs;
	}

	@Override
	public RsVo lessonDetail(int RsNo) {
		RsVo detail = contentsMapper.lessonDetail(RsNo);
		return detail;
	}

	@Override
	public HeroVo heroinfo(int rsNo) {
		HeroVo heros = contentsMapper.heroinfo(rsNo);
		return heros;
	}

	@Override
	public void updateContents(RsVo rsVo) {
		contentsMapper.updateContents(rsVo);
	}


	@Override
	public void deleteContent(int rsNo) {
		contentsMapper.deleteContent(rsNo);
		
	}

	@Override
	public int selectContentsCount(String field) {
		int conCount = contentsMapper.selectContentsCount(field);
		return conCount;
	}
	@Override
	public List<HeroVo> heroinfo2(int heroNo) {
		List<HeroVo> hero = contentsMapper.heroinfo2(heroNo);
		return hero;
	}

	@Override
	public void insertRsAttach(AttachVo attach) {
		contentsMapper.insertRsAttach(attach);
		
	}

	@Override
	public void apply(ApplyVo apply) {
		contentsMapper.apply(apply);
		
	}

	@Override
	public int selectUserNo() {
		int user = contentsMapper.selectUserNo();
		return user;
	}

	@Override
	public List<UserVo> userApplytoExpert(int rsNo) {
		List<UserVo> user = contentsMapper.userApplytoExpert(rsNo);
		return user;
	}

	@Override
	public void reviewreg(ReviewVo review) {
		contentsMapper.registerReview(review);
		
	}

	@Override
	public List<ReviewVo> reviewload(int rsNo) {
		List<ReviewVo> reviews = contentsMapper.reviewload(rsNo);
		return reviews;
	}

	@Override
	public int selectreviewCount(int heroNo) {
		int reviewcount = contentsMapper.selectreviewCount(heroNo);
		return reviewcount;
	}

	@Override
	public void updateAbout(HeroVo hero) {
		contentsMapper.updateAbout(hero);
		
	}

	@Override
	public Float selectHeroAvg(int heroNo) {
		
		Float heroavg = contentsMapper.selectHeroAvg(heroNo);
		return ( heroavg != null ? heroavg : 0F );
	}

	@Override
	public Float selectpro(int heroNo) {
		Float professional = contentsMapper.selectpro(heroNo);
		//return professional;
		return ( professional != null ? professional : 0F );
	}

	@Override
	public int usercount(int rsNo) {
		int usercount = contentsMapper.usercount(rsNo);
		return usercount;
	}

	@Override
	public Float selectsatisfied(int heroNo) {
		Float satisfied = contentsMapper.selectsatisfied(heroNo);
		return  ( satisfied != null ? satisfied : 0F );
	}

	@Override
	public Float selectreliability(int heroNo) {
		Float reliability = contentsMapper.selectreliability(heroNo);
		return (reliability != null ? reliability : 0F);
	}


}
