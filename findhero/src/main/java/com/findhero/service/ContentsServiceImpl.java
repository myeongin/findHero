package com.findhero.service;

import java.util.HashMap;
import java.util.List;

import com.findhero.dao.ContentsDao;
import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public class ContentsServiceImpl implements ContentsService {

	private ContentsDao contentsDao;

	public void setContentsDao(ContentsDao contentsDao) {
		this.contentsDao = contentsDao;
	}

	@Override
	public void registerLesson(RsVo rs) {
		
		contentsDao.registerLesson(rs);
		
		for(AttachVo attach : rs.getAttachments()) {
			attach.setRsNo(rs.getRsNo());
			contentsDao.insertRsAttach(attach);
		}
	}

	@Override
	public List<RsVo> viewList(int heroNo, int from, int to, String field) {

		List<RsVo> rs = contentsDao.viewList(heroNo, from, to, field);
	
		return rs;
	}

	@Override
	public List<RsVo> viewListbyUser(int from, int to, String field, String rsdel) {
		List<RsVo> rs2 = contentsDao.viewListbyUser(from, to, field, rsdel);
	
		return rs2;
	}

	@Override
	public RsVo lessonDetail(int RsNo) {
		RsVo detail = contentsDao.lessonDetail(RsNo);
		return detail;
	}

	@Override
	public HeroVo heroinfo(int rsNo) {
		HeroVo heros = contentsDao.heroinfo(rsNo);
		return heros;
	}

	@Override
	public void updateContents(RsVo rsVo) {
		contentsDao.updateContents(rsVo);
	}

	@Override
	public void deleteContent(int rsNo) {
		
		contentsDao.deleteContent(rsNo);
		
	}

	@Override
	public int selectcontentsCount(String field) {
		int conCount = contentsDao.selectContentsCount(field);
		return conCount;
	}

	@Override
	public void apply(ApplyVo apply) {
		contentsDao.apply(apply);
		
	}


	@Override
	public int selectUserNo() {
		int user = contentsDao.selectUserNo();
		return user;
	}

	@Override
	public List<UserVo> userApplytoExpert(int rsNo) {
		
		List<UserVo> users = contentsDao.userApplytoExpert(rsNo);
		
		return users;
	}

	@Override
	public void reivewreg(ReviewVo review) {
		
		contentsDao.reviewreg(review);
		
	}

	@Override
	public List<ReviewVo> selectReviews(int rsNo) {
		List<ReviewVo> reviews = contentsDao.reviewload(rsNo);
		return reviews;
	}

	@Override
	public List<HeroVo> heroinfo2(int heroNo) {
		List<HeroVo> hero = contentsDao.heroinfo2(heroNo);
		return hero;
	}

	@Override
	public int selectreviewCount(int heroNo) {
		int reviewcount = contentsDao.selectreviewCount(heroNo);
		return reviewcount;
	}

	@Override
	public void updateAbout(HeroVo hero) {
		contentsDao.updateAbout(hero);
		
	}

	@Override
	public float selectHeroAvg(int heroNo) {
		float heroavg = contentsDao.selectHeroAvg(heroNo);
		return heroavg;
	}

	@Override
	public float selectpro(int heroNo) {
		float professional = contentsDao.selectpro(heroNo);
		return professional;
	}

	@Override
	public int usercount(int rsNo) {
		int usercount = contentsDao.usercount(rsNo);
		return usercount;
	}

	@Override
	public float selectsatisfied(int heroNo) {
		float satisfied = contentsDao.selectsatisfied(heroNo);
		return satisfied;
	}

	@Override
	public float selectreliability(int heroNo) {
		float reliability = contentsDao.selectreliability(heroNo);
		return reliability;
	}


}
