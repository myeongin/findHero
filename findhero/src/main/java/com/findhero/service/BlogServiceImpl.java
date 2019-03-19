package com.findhero.service;


import java.util.List;



import com.findhero.dao.BlogDao;
import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;



public class BlogServiceImpl implements BlogService{
	
	private BlogDao blogDao;
	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}
	

	@Override
	public List<BlogVo> takeList(int from,int to) {
		List<BlogVo> blogs = blogDao.selectBlog(from,to);	
		/*List<Integer> blogNo = blogs.get*/
		for(BlogVo blog : blogs) {
			int blogNo = blog.getBlogNo();
			int heroNo = blog.getHeroNo();
			blog.setAttachments(blogDao.selectImg(blogNo));
			blog.setHeroes(blogDao.takeHero(heroNo));
		}
	/*	blogs.setAttachments(blogDao.selectImg(blogNo));*/
		return blogs;
	}

	@Override
	public BlogVo takeDetail(int blogNo) {
		BlogVo blog = blogDao.takeDetail(blogNo);
		blog.setAttachments(blogDao.selectImg(blogNo));
		return blog;
	}
	
	@Override
	public List<RsVo> takeLesson(int heroNo) {
		List<RsVo> lesson = blogDao.takeLesson(heroNo);
		for(RsVo rs : lesson) {
			int rsNo = rs.getRsNo();
			rs.setAttachments(blogDao.selectLessonImg(rsNo));
		}
			
		return lesson;
	}

	@Override
	public List<BlogVo> takeBestList() {
		List<BlogVo> bestBlog = blogDao.takeBestList();
		for(BlogVo blog : bestBlog) {
			int blogNo = blog.getBlogNo();
			int heroNo = blog.getHeroNo();
			blog.setAttachments(blogDao.selectImg(blogNo));
			blog.setHeroes(blogDao.takeHero(heroNo));}
		return bestBlog;
	}
	
	
	@Override
	public List<BlogVo> blogList(int heroNo) {
		List<BlogVo> blogList = blogDao.blogList(heroNo);
		
		return blogList;
	}

	
	@Override
	public int rsCount(int heroNo) {
		int rsCount = blogDao.rsCount(heroNo);
		return rsCount;
	}
	
	
/*	@Override
	public List<BlogImgVo> takeImgs(int blogNo) {
		List<BlogImgVo> imgs = blogDao.takeimgs(blogNo);		
		return imgs;
	}*/
	
	@Override
	public HeroVo takeHero(int heroNo) {
		HeroVo hero = blogDao.takeHero(heroNo);
		
		return hero;
	}
	
/*	@Override
	public List<HeroVo> takeAllHero() {
		List<HeroVo> heroes = blogDao.takeAllHero();
		return heroes;
	}*/

	@Override
	public void insertBlog(BlogVo blog) {
		
		blogDao.insertBlog(blog);
		
		System.out.println(blog.getBlogNo());
		
		//첨부파일 등록하는 구현
		for (BlogImgVo attach : blog.getAttachments()) {
			attach.setBlogNo(blog.getBlogNo());//위에서 등록한 글번호 저장
			blogDao.insertImg(attach);
		}
	}
	
	
	@Override
	public int findBoardCount() {
		int boardCount = blogDao.selectBoardCount();
		return boardCount;
	}
	
	@Override
	public void deleteBlog(int blogNo) {
		blogDao.deleteBlog(blogNo);
	}
	
	
	
	
/*	@Override
	public void insertBlogImg(BlogVo blog) {
		
		blogDao.insertBlogImg(blog);
		
	}*/
	
}
