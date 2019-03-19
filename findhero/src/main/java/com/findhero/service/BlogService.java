package com.findhero.service;

import java.util.List;

import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;


public interface BlogService {


	List<BlogVo> takeList(int from,int to);

	BlogVo takeDetail(int blogNo);

	void insertBlog(BlogVo blog);

/*	void insertBlogImg(BlogVo blog);
*/
	HeroVo takeHero(int heroNo);
	/*
	List<BlogImgVo> selectImg(int blogNo);
*/

	int findBoardCount();

	void deleteBlog(int blogNo);

	int rsCount(int heroNo);

	List<RsVo> takeLesson(int heroNo);

	List<BlogVo> takeBestList();

	List<BlogVo> blogList(int heroNo);

/*	List<BlogImgVo> takeImgs(int blogNo);*/



}
