package com.findhero.dao;

import java.util.List;

import com.findhero.vo.AttachVo;
import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;


public interface BlogDao {



	List<BlogVo> selectBlog(int from,int to);

	BlogVo takeDetail(int blogNo);
/*
	List<HeroVo> takeAllHero();
*/

	void insertBlog(BlogVo blog);

	HeroVo takeHero(int heroNo);

	void insertImg(BlogImgVo attach);

	List<BlogImgVo> selectImg(int blogNo);

	int selectBoardCount();

	void deleteBlog(int blogNo);

	int rsCount(int heroNo);

	List<RsVo> takeLesson(int heroNo);

	List<BlogVo> takeBestList();

	List<BlogVo> blogList(int heroNo);

	List<AttachVo> selectLessonImg(int rsNo);

/*	List<BlogImgVo> takeimgs(int blogNo);*/



}
