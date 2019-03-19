package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.BlogMapper;
import com.findhero.vo.AttachVo;
import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;



public class BlogDaoImpl implements BlogDao{

	private BlogMapper blogMapper;
	public void setBlogMapper(BlogMapper blogMapper) {
		this.blogMapper = blogMapper;
	}
	
	@Override //블로그 목록 보기
	public List<BlogVo> selectBlog(int from,int to) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to",to);
		params.put("del",'1');
/*		params.put("blogNo", blogNo);*/
		
		List<BlogVo> blogs=blogMapper.selectBlog(params);
		
		return blogs;
	}

	@Override  //블로그등록
	public void insertBlog(BlogVo blog) {
		/*System.out.println(customer.getCuName());*/
		blogMapper.insertBlog(blog);
	}
	
	
	@Override //블로그 디테일 보기
	public BlogVo takeDetail(int blogNo) {	
		
		BlogVo blog = blogMapper.takeDetail(blogNo);
		return blog;
	}
	
	
	@Override //블로그 디테일 보기
	public HeroVo takeHero(int heroNo) {	
		
		HeroVo hero = blogMapper.takeHero(heroNo);
		return hero;
	}
	
/*	@Override //블로그 디테일 보기
	public List<BlogImgVo> takeimgs(int blogNo) {	
		
		List<BlogImgVo> imgs = blogMapper.takeimgs(blogNo);
		return imgs;
	}*/
	
	@Override
	public void insertImg(BlogImgVo attach) {
		blogMapper.insertBlogImg(attach);
		
	}
	
	@Override //블로그 목록 보기
	public List<BlogImgVo> selectImg(int blogNo) {	
		List<BlogImgVo> img = blogMapper.takeImg(blogNo);
		return img;
	}
	
	@Override //블로그 목록 보기
	public List<AttachVo> selectLessonImg(int rsNo) {	
		List<AttachVo> lessonImg = blogMapper.takeLessonImg(rsNo);
		return lessonImg;
	}
	
	@Override //블로그 목록 보기
	public List<BlogVo> takeBestList() {	
		List<BlogVo> bestBlog = blogMapper.takeBestList();
		return bestBlog;
	}
	
	@Override //블로그 목록 보기
	public List<BlogVo> blogList(int heroNo) {	
		List<BlogVo> blogList = blogMapper.blogList(heroNo);
		return blogList;
	}
	
	
	@Override
	public int selectBoardCount() {
		
		int boardCount = blogMapper.selectBoardCount();
		
		return boardCount;
	}
	
	@Override
	public int rsCount(int heroNo) {
		
		int rsCount = blogMapper.rsCount(heroNo);
		
		return rsCount;
	}

	
	
	@Override //블로그 디테일 보기
	public List<RsVo> takeLesson(int heroNo) {	
		
		List<RsVo> lesson = blogMapper.takeLesson(heroNo);
		return lesson;
	}
	
	
	@Override //고객 삭제
	public void deleteBlog(int blogNo) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("blogNo", blogNo);
		params.put("blogdel","1");
		
		blogMapper.deleteBlog(params);
		
	}
	
	
/*	@Override //블로그 디테일 보기
	public List<HeroVo> takeAllHero() {	
		
		List<HeroVo> heroes = blogMapper.takeAllHero();
		
		return heroes;
	}
	*/
	
}
