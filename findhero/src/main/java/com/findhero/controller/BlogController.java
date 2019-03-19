package com.findhero.controller;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.findhero.common.Util;
import com.findhero.service.BlogService;
import com.findhero.ui.ThePager;
import com.findhero.vo.BlogImgVo;
import com.findhero.vo.BlogVo;
import com.findhero.vo.ChatContentVo;
import com.findhero.vo.ChatVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;





@Controller
@RequestMapping("/blog/")
public class BlogController {
	
	@Autowired
	@Qualifier("blogService")
	private BlogService blogService;
	
		
	@RequestMapping(value="blog.action",method=RequestMethod.GET)
	public String listBlog(@RequestParam(value="pageno",required = false,defaultValue ="1")int pageno, HeroVo hero, Model model) {
	
		
		int pageSize=6;
		int from=(pageno-1)*pageSize +1;
		int to =from+pageSize;
		int pagerSize = 5;
		String linkUrl = "blog.action";
		int boardCount = blogService.findBoardCount();
		ThePager pager = new ThePager(pageno, boardCount, pageSize, pagerSize, linkUrl);
		List<BlogVo> blogs=blogService.takeList(from,to);
		
		model.addAttribute("blogs", blogs);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageno);
		
		

		return "blog/blog";
	}
	
	//블로그 상세
	@RequestMapping(value="blogSingle.action",method=RequestMethod.GET)
	public String blogDetail(int blogNo, HeroVo hero, Model model) {
		
		
	
		BlogVo blog = blogService.takeDetail(blogNo);
		
		int heroNo = blog.getHeroNo();
		hero = blogService.takeHero(heroNo);
		int rsCount = blogService.rsCount(heroNo);
		List<RsVo> lesson = blogService.takeLesson(heroNo);
		List<BlogVo> bestBlog=blogService.takeBestList();
		List<BlogVo> bloglist=blogService.blogList(heroNo);

		model.addAttribute("blog", blog);
		model.addAttribute("hero", hero);
		model.addAttribute("rsCount", rsCount);
		model.addAttribute("lesson", lesson);
		model.addAttribute("bestBlog", bestBlog);
		model.addAttribute("bloglist", bloglist);
		

		return "blog/blogSingle";
	}
	
	//인터뷰작성페이지
		@RequestMapping(value="writePage.action",method=RequestMethod.GET)
		public String writePage() {
						
			return "blog/blogWrite";
		}
		
		

	//인터뷰작성
	@RequestMapping(value="writePage.action",method=RequestMethod.POST)
	public String blogWrite(BlogVo blog, MultipartHttpServletRequest req) {
		
		MultipartFile attach1 = req.getFile("attach1");
		MultipartFile attach2 = req.getFile("attach2");
		MultipartFile attach3 = req.getFile("attach3");
		 
		ArrayList<BlogImgVo> attachments = new ArrayList<>();
		if (attach1 != null && !attach1.isEmpty()) {
			//파일 저장
			String imgSavedName = Util.makeUniqueFileName(attach1.getOriginalFilename()); //고유 파일명 만들기
			String path = 
				req.getServletContext().getRealPath("/resources/blog-img/" + imgSavedName);//저장 경로 만들기
			
			try {
				attach1.transferTo(new File(path)); //파일 저장하기
				
				//데이터베이스에 저장할 데이터로 VO 객체 만들기
				BlogImgVo attachment = new BlogImgVo();
				attachment.setImgSavedName(imgSavedName);
				attachment.setImgName(attach1.getOriginalFilename());
				
				attachments.add(attachment);
			} catch (Exception ex) {	
				
			}
		}
		
		if (attach2 != null && !attach2.isEmpty()) {
			//파일 저장
			String imgSavedName = Util.makeUniqueFileName(attach2.getOriginalFilename()); //고유 파일명 만들기
			String path = 
				req.getServletContext().getRealPath("/resources/blog-img/" + imgSavedName);//저장 경로 만들기
			
			try {
				attach2.transferTo(new File(path)); //파일 저장하기
				
				//데이터베이스에 저장할 데이터로 VO 객체 만들기
				BlogImgVo attachment = new BlogImgVo();
				attachment.setImgSavedName(imgSavedName);
				attachment.setImgName(attach2.getOriginalFilename());
				
				attachments.add(attachment);
			} catch (Exception ex) {	
				
			}
		}
		
		if (attach3 != null && !attach3.isEmpty()) {
			//파일 저장
			String imgSavedName = Util.makeUniqueFileName(attach3.getOriginalFilename()); //고유 파일명 만들기
			String path = 
				req.getServletContext().getRealPath("/resources/blog-img/" + imgSavedName);//저장 경로 만들기
			
			try {
				attach3.transferTo(new File(path)); //파일 저장하기
				
				//데이터베이스에 저장할 데이터로 VO 객체 만들기
				BlogImgVo attachment = new BlogImgVo();
				attachment.setImgSavedName(imgSavedName);
				attachment.setImgName(attach3.getOriginalFilename());
				
				attachments.add(attachment);
			} catch (Exception ex) {	
				
			}
		}
		
		
		blog.setAttachments(attachments);
		
		blogService.insertBlog(blog);
		
		
		return "redirect:/blog/blog.action";
	}
	
	
	@RequestMapping(value="blogDel.action",method=RequestMethod.GET)
	public String customerDelete(int blogNo,Model model) {
		

		blogService.deleteBlog(blogNo);
		
		return "redirect:/blog/blog.action";
	}
	
	
/*	@RequestMapping(value="blogImg.action",method=RequestMethod.POST)
	@ResponseBody
	public String blogImg(BlogVo blog,MultipartHttpServletRequest req,HttpSession session) {

			
			MultipartFile img = req.getFile("img");
			String img2 = null;
			
			if(img !=null && !img.isEmpty()) {
				String savedname = Util.makeUniqueFileName(img.getOriginalFilename());
				String path = req.getServletContext().getRealPath("/resources/product-img/" + savedname);

				
				try {
					img.transferTo(new File(path));
					img2 = savedname;
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
			
			blog.setBlogImg(img2);
			blogService.insertBlogImg(blog);
			
			BlogVo blog=(BlogVo)session.getAttribute("blog");
			loginuser.setUserImage(img2);
			
			return img2;
		}*/
}

