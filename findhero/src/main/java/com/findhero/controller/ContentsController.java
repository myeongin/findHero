package com.findhero.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.findhero.common.Util;
import com.findhero.service.ContentsService;
import com.findhero.ui.ThePager;
import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

@Controller
@RequestMapping("/contents/")
public class ContentsController {
	
	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }

	@Autowired
	@Qualifier("contentsService")
	private ContentsService contentsService;

	public void setContentsService(ContentsService contentsService) {
		this.contentsService = contentsService;
	}

	@RequestMapping(value = "lessonlist.action", method = RequestMethod.GET)
	public String lessonlist(Locale locale, Model model, HttpSession session, HeroVo hero, UserVo user,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo, RsVo rsvo,
			@RequestParam(value = "rsfield", required = false, defaultValue = "1") Integer rsfield) {

		String field = null;

		if (rsfield == 1) {
			field = "레슨";
		} else if (rsfield == 2) {
			field = "비즈니스";
		} else
			field = "디자인/개발";

		try {

			int pageSize = 6; // 한 페이지에 표시되는 데이터 개수
			int from = (pageNo - 1) * pageSize; // 해당 페이지에 포함된 시작 글번호
//		int to = from + pageSize; // 해당 페이지에 포함된 마지막 글번호 + 1
			int pagerSize = 5; // 한 번에 표시되는 페이지 번호 개수
			String linkUrl2 = "lessonlist.action"; // 페이지 번호를 눌렀을 때 이동할 경로

			int contentsCount = contentsService.selectcontentsCount(field);
			String rsdel = "접수중";

			hero = (HeroVo) session.getAttribute("hero");
			if (hero != null) {
//				int no = hero.getHeroNo();
				int no = rsfield;
				
				List<RsVo> rs = contentsService.viewList(hero.getHeroNo(), from, pageSize, field);
				List<HeroVo> hero2 = contentsService.heroinfo2(hero.getHeroNo());
				
				
				ThePager pager = new ThePager(contentsCount, pageNo, pageSize, pagerSize, linkUrl2, no, "rsfield");

				model.addAttribute("heroimg", hero2);
				model.addAttribute("rs", rs);
				model.addAttribute("pageNo", pageNo);
				model.addAttribute("pager", pager.toString2());
			}

				int no = rsfield;
				List<RsVo> rs2 = contentsService.viewListbyUser(from, pageSize, field, rsdel);
				ThePager pager2 = new ThePager(contentsCount, pageNo, pageSize, pagerSize, linkUrl2, no, "rsfield");
				
				ArrayList<HeroVo> heroes = new ArrayList<>();
				for (RsVo rs : rs2) {
					List<HeroVo> hero3 = contentsService.heroinfo2(rs.getHeroNo());
					heroes.add(hero3.get(0));
				}
				
				model.addAttribute("heroes", heroes);
				model.addAttribute("rs2", rs2);
				model.addAttribute("pageNo", pageNo);
				model.addAttribute("pager2", pager2.toString2());


		} catch (Exception e) {
			e.printStackTrace();
		}

		return "contents/lessonlist";
	}

	@RequestMapping(value = "lessonregister.action", method = RequestMethod.POST)
	public String lessonregister(RsVo rs, MultipartHttpServletRequest req, 
			String RsField1, HttpSession session,
			HeroVo hero, RedirectAttributes re,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo) {

		hero = (HeroVo) session.getAttribute("hero");

		int pageSize = 6;
		int from = (pageNo - 1) * pageSize + 1; 
		int rsfield = 0;
		
		if(RsField1.equals("레슨")) {
			rsfield = 1;
		}else if(RsField1.equals("비즈니스")) {
			rsfield = 2;
		}else rsfield = 3;
		
//		List<RsVo> rs1 = contentsService.viewList(hero.getHeroNo(), from, pageSize, RsField1);
		
		List<MultipartFile> fileList = req.getFiles("attach");
		ArrayList<AttachVo> attachments = new ArrayList<>();

		if (fileList != null && !fileList.isEmpty()) {
			for (MultipartFile mf : fileList) {
				String savedFileName = Util.makeUniqueFileName(mf.getOriginalFilename()); // 원본 파일 명
				String path = req.getServletContext().getRealPath("/resources/rsimg/" + savedFileName);

				try {
					mf.transferTo(new File(path));

					AttachVo attachment = new AttachVo();
					attachment.setSavedFileName(savedFileName);
					attachment.setUserFileName(mf.getOriginalFilename());

					attachments.add(attachment);

				} catch (IllegalStateException e) {

					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				re.addAttribute("rsfield", rsfield);
			}
		}

		rs.setAttachments(attachments);
		contentsService.registerLesson(rs);
		
	
		
//		model.addAttribute("rs", rs1);

		return "redirect:lessonlist.action";
//				+ "?heroNo="+ hero.getHeroNo() + "&pageNo=" + pageNo+ "&field="+rsfield;
	}

	@RequestMapping(value = "lessondetail.action", method = RequestMethod.GET)
	public String lessonDetail(Model model, int RsNo, HeroVo hero, HttpSession session) {

		RsVo rsdetail = contentsService.lessonDetail(RsNo);
		HeroVo heros = contentsService.heroinfo(RsNo);
//		List<ReviewVo> reviews = contentsService.selectReviews(RsNo);
		
//		List<ReviewVo> reviews = contentsService.selectReviews(heros.getHeroNo());
		int reviewcount = contentsService.selectreviewCount(heros.getHeroNo());
		
		/*
		 * List<UserVo> users = contentsService.selectUserNo();
		 * 
		 * List<Integer> userNos= new ArrayList<>();
		 * 
		 * for(UserVo user:users) { userNos.add(user.getUserNo()); }
		 */
		
		
		float heroavg = contentsService.selectHeroAvg(heros.getHeroNo());	
		float professional = contentsService.selectpro(heros.getHeroNo());
		float satisfied = contentsService.selectsatisfied(heros.getHeroNo());
		float reliability = contentsService.selectreliability(heros.getHeroNo());

		List<UserVo> users = contentsService.userApplytoExpert(RsNo);
		int usercount = contentsService.usercount(RsNo);

	
		if (rsdetail == null) {
			return "redirect:lessonlist.action";
		}

		model.addAttribute("rsdetail", rsdetail);
		model.addAttribute("heros", heros);
		model.addAttribute("applylist", users);
//		model.addAttribute("review", reviews);
		model.addAttribute("reviewcount", reviewcount);	
		model.addAttribute("heroavg", heroavg);
		model.addAttribute("professional", professional);
		model.addAttribute("usercount", usercount);
		model.addAttribute("satisfied", satisfied);
		model.addAttribute("reliability", reliability);

		return "contents/lessondetail";
	}

	@RequestMapping(value = "contentupdate.action", method = RequestMethod.POST)
	public String contentsupdate(Model model, RsVo rsVo, HttpSession session, HeroVo hero, String RsField1,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo) {

		hero = (HeroVo) session.getAttribute("hero");
		contentsService.updateContents(rsVo);
		
//		int pageSize = 6; 
//		int from = (pageNo - 1) * pageSize; 
//		int rsfield = 0;
//		
//		if(RsField1.equals("레슨")) {
//			rsfield = 1;
//		}else if(RsField1.equals("비즈니스")) {
//			rsfield = 2;
//		}else rsfield = 3;
//		
//		
//		List<RsVo> rs1 = contentsService.viewList(hero.getHeroNo(), from, pageSize, RsField1);
		
//		model.addAttribute("rs", rs1);

		return "redirect:lessonlist.action";
//		return String.format("redirect:lessonlist.action?heroNo=%s&field=%s", hero.getHeroNo(), RsField1);
	}

	@RequestMapping(value = "contentDelete.action", method = RequestMethod.GET)
	public String delcontent(int RsNo, int heroNo, int pageNo, String RsField1, HeroVo hero,
			HttpSession session, Model model) {
	
//		int rsfield = 0;
//		
//		if(RsField1.equals("레슨")) {
//			rsfield = 1;
//		}else if(RsField1.equals("비즈니스")) {
//			rsfield = 2;
//		}else rsfield = 3;
		
		try {
			hero = (HeroVo)session.getAttribute("hero");
			contentsService.deleteContent(RsNo);
//			int pageSize = 6; 
//			int from = (pageNo - 1) * pageSize + 1; 
//
//			List<RsVo> rs1 = contentsService.viewList(hero.getHeroNo(), from, pageSize, RsField1);
//			
//			model.addAttribute("rs", rs1);
		
		} catch (Exception e) {

		}
		return "redirect:lessonlist.action";
	}

//	public void deletetoafterweek() {
//		RsVo rsvo = rsvo.getRsNo();
//		int rsno = rsvo;
//		
//		contentsService.deletetoafterweek(rsno);
//	}

	@RequestMapping(value = "/apply.action", method = RequestMethod.POST)
	@ResponseBody
	public String apply(ApplyVo apply) {

		contentsService.apply(apply);

		return "success";
	}

	@RequestMapping(value = "/reviewregister.action", method = RequestMethod.POST)
	@ResponseBody
	public String reviewreg(ReviewVo review) {
		contentsService.reivewreg(review);
		return "success";
	}

	@RequestMapping(value = "/reviewload.action", method = RequestMethod.POST)
	@ResponseBody
	public String reviewload(int RsNo, Model model) {

		List<ReviewVo> reviews = contentsService.selectReviews(RsNo);
//		ReviewVo reviewcount = contentsService.selectreviewCount(RsNo);
		model.addAttribute("review", reviews);

		return "contents/contentsreviews";
	}
	
	@RequestMapping(value = "aboutupdate.action", method=RequestMethod.POST)
	public String aboutupdate(HeroVo hero) {
		contentsService.updateAbout(hero);
		
		return "redirect:lessonlist.action";
	}
	

}
