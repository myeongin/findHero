package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.AttachVo;
import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;





public interface BlogMapper {
	

	List<BlogVo> selectBlog(HashMap<String,Object> params);

	BlogVo takeDetail(int blogNo);

	void insertBlog(BlogVo blog);


	HeroVo takeHero(int heroNo);

	void insertBlogImg(BlogImgVo attach);

	List<BlogImgVo> takeImg(int blogNo);

	int selectBoardCount();

	void deleteBlog(HashMap<String, Object> params);

	int rsCount(int heroNo);

	List<RsVo> takeLesson(int heroNo);

	List<BlogVo> takeBestList();

	List<BlogVo> blogList(int heroNo);

	List<AttachVo> takeLessonImg(int rsNo);

/*	List<BlogImgVo> takeimgs(int blogNo);*/

/*	List<HeroVo> takeAllHero();
*/


}
