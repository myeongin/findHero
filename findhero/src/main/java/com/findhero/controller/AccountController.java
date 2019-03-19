package com.findhero.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.RequestPartServletServerHttpRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.findhero.common.Util;
import com.findhero.service.AccountService;
import com.findhero.ui.ThePager;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

@Controller
@RequestMapping("/account/")
public class AccountController {
	
	 @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
	        dateFormat.setLenient(false);
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	    }
	
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	@RequestMapping(value="memberRegister.action",method=RequestMethod.POST)
	public String memberRegister(UserVo user) {
		
		accountService.registerUser(user);
					
		return "redirect:/home.action";
	}
	
	@RequestMapping(value="heroRegister.action",method=RequestMethod.POST)
	public String heroRegister(HeroVo hero) {
		
		accountService.registerHero(hero);
					
		return "redirect:/home.action";
	}
	
	@RequestMapping(value="login.action",method = RequestMethod.POST)
	public String login(UserVo user,HttpSession session) {
				
		UserVo loginUser = accountService.loginUser(user);	
				
		
		if(loginUser == null) {
			HeroVo loginUser2 = accountService.loginUser2(user);
			
			if(loginUser2 == null) {
				
			}
			
			session.setAttribute("hero", loginUser2);
			return "redirect:/home.action";
			
		}
		
		session.setAttribute("user", loginUser);
		
		return "redirect:/home.action";
	}
	
	@RequestMapping(value="logout.action",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.removeAttribute("user");
		session.removeAttribute("hero");
		
		return "redirect:/home.action";
	}
	
	////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value="accountInfo.action",method = RequestMethod.GET)
	public String accountInfo() {
				
		return "account/accountInfo";
	}
	
	@RequestMapping(value="userRewrite.action",method = RequestMethod.POST)
	public String userReWrite(UserVo user,HttpSession session) {
		
		accountService.reWriteUser(user);
		UserVo loginuser = (UserVo)session.getAttribute("user");
		loginuser.setUserName(user.getUserName());
		loginuser.setUserEmail(user.getUserEmail());
		loginuser.setUserPhone(user.getUserPhone());
		
		return "redirect:/account/accountInfo.action";		
	}
	
	@RequestMapping(value="heroRewrite.action",method = RequestMethod.POST)
	public String heroReWrite(HeroVo hero,HttpSession session) {
		
		accountService.reWriteHero(hero);
		HeroVo loginuser=(HeroVo)session.getAttribute("hero");
		
		loginuser.setHeroName(hero.getHeroName());
		loginuser.setHeroEmail(hero.getHeroEmail());
		loginuser.setHeroPhone(hero.getHeroPhone());
		loginuser.setHeroAdd1(hero.getHeroAdd1());
		loginuser.setHeroAdd2(hero.getHeroAdd2());
		loginuser.setHeroAdd3(hero.getHeroAdd3());
		loginuser.setHeroField(hero.getHeroField());
		loginuser.setHeroField2(hero.getHeroField2());
		loginuser.setHeroAbout(hero.getHeroAbout());
		
		return "redirect:/account/accountInfo.action";	
	}
	
	@RequestMapping(value="userImgUpload.action",method=RequestMethod.POST)
	@ResponseBody
	public String userImgUpload(UserVo user,MultipartHttpServletRequest req,HttpSession session) {

			
			MultipartFile img = req.getFile("img");
			String img2 = null;
			
			if(img !=null && !img.isEmpty()) {
				String savedname = Util.makeUniqueFileName(img.getOriginalFilename());
				String path = req.getServletContext().getRealPath("/resources/user-img/" + savedname);

				
				try {
					img.transferTo(new File(path));
					img2 = savedname;
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
			
			user.setUserImage(img2);
			accountService.setUserImage(user);
			
			UserVo loginuser=(UserVo)session.getAttribute("user");
			loginuser.setUserImage(img2);
			
			return img2;
		}
	
	@RequestMapping(value="heroImgUpload.action",method=RequestMethod.POST,produces="application/text;charset=utf8")
	@ResponseBody
	public String heroImgUpload(HeroVo hero,MultipartHttpServletRequest req,HttpSession session) {
		
		
			MultipartFile img = req.getFile("img");
			String img2 = null;
			
			if(img !=null && !img.isEmpty()) {
				String savedname = Util.makeUniqueFileName(img.getOriginalFilename());
				String path = req.getServletContext().getRealPath("/resources/hero-img/" + savedname);

				
				try {
					img.transferTo(new File(path));
					img2 = savedname;
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
			
			hero.setHeroImage(img2);
			accountService.setHeroImage(hero);
			
			HeroVo loginuser=(HeroVo)session.getAttribute("hero");
			loginuser.setHeroImage(img2);
			
			return img2;
		}
	
	/////////////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value="serviceList.action",method=RequestMethod.GET)
	public String serviceList(@RequestParam(value="userNo",required = false,defaultValue ="0")int userNo,
							  @RequestParam(value="heroNo",required = false,defaultValue ="0")int heroNo,
							  @RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,
							  Model model) {
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "serviceList.action";		
		
		if(userNo == 0) {
																				
			List<RsVo> rss = accountService.takeAllRssByHeroNo(heroNo,from,pagesize);		
			int rssCount = accountService.countRss(heroNo);						
			int[] monthPrices = accountService.takePricesByMonth2(heroNo);						
			
			ThePager pager = new ThePager(rssCount, pageNo, pagesize, pagersize, linkUrl,heroNo,"heroNo");
			
			model.addAttribute("prices",monthPrices);
			model.addAttribute("rss", rss);
			model.addAttribute("pager", pager.toString2());
			model.addAttribute("pageNo",pageNo);
			
			return "account/serviceList";
			
		}else {
			
			List<HashMap<String, Object>> rss = accountService.takeAllRssByUeroNo(userNo,from,pagesize);
			int[] monthPrices = accountService.takePricesByMonth(userNo);
			int applyCount = accountService.countApply(userNo);
			
			int[] fieldCount = accountService.takeFieldCount(userNo);
			List<HashMap<String, Object>> field2Count = accountService.takeField2Count(userNo);
			
			ThePager pager = new ThePager(applyCount, pageNo, pagesize, pagersize, linkUrl,userNo,"userNo");						
			
			model.addAttribute("fieldCount", fieldCount);
			model.addAttribute("prices",monthPrices);
			model.addAttribute("rss", rss);
			model.addAttribute("pager", pager);
			model.addAttribute("pageNo", pageNo);
			
			return "account/serviceList";
		}
				
	}
	
	
	@RequestMapping(value="rslist.action",method=RequestMethod.POST)
	public String serviceList(
							  @RequestParam(value="heroNo",required = false,defaultValue ="0")int heroNo,
							  @RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,
							  Model model) {
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "serviceList.action";						
																				
			List<RsVo> rss = accountService.takeAllRssByHeroNo(heroNo,from,pagesize);		
			int rssCount = accountService.countRss(heroNo);						
			int[] monthPrices = accountService.takePricesByMonth2(heroNo);						
			
			ThePager pager = new ThePager(rssCount, pageNo, pagesize, pagersize, linkUrl,heroNo,"heroNo");
			
			model.addAttribute("prices",monthPrices);
			model.addAttribute("rss", rss);			
			
			return "account/rsList";			
	}
	
	
	@RequestMapping(value="serviceDel.action",method = RequestMethod.POST,produces="application/text;charset=utf8")
	@ResponseBody
	public String serviceType(int rsNo,String type) {
				
		
		if(type.equals("접수중")) {
			type="진행중";
			accountService.changeServiceDel(rsNo,type);			
		}else if(type.equals("진행중")){
			type="종료";
			accountService.changeServiceDel2(rsNo,type);
		}else {
			type="접수중";
			accountService.changeServiceDel3(rsNo,type);
		}
		
		return type;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value="requestList.action",method = RequestMethod.GET)
	public String requestList(@RequestParam(value="userNo",required = false,defaultValue ="0")int userNo,
			  				  @RequestParam(value="heroNo",required = false,defaultValue ="0")int heroNo,
			  				  @RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,
			  				  Model model) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "requestList.action";
		
		if(heroNo == 0) {
			
			List<RequestVo> requests  = accountService.takeAllRequestByuserNo(userNo,from,pagesize); 			
			int requestCount = accountService.countRequest(userNo);
			
			List<HashMap<String, Object>> checkOks = accountService.takeCheckOks(userNo);
			
			ThePager pager = new ThePager(requestCount, pageNo, pagesize, pagersize, linkUrl,userNo,"userNo");
			
			if(checkOks.size() != 0) {				
				model.addAttribute("oks", checkOks);
			}
			
			model.addAttribute("requests",requests);
			model.addAttribute("pager", pager.toString2());
			model.addAttribute("pageNo",pageNo);
			
			return "account/requestList";
			
						
		}else {
			
			List<HashMap<String, Object>> requests = accountService.takeAllRequestByHeroNo(heroNo,from,pagesize);			
			int confirmCount = accountService.countConfirm(heroNo);
			
			int newRequests = accountService.countNewRequest(heroNo);
			accountService.updateCon(heroNo);
			
			ThePager pager = new ThePager(confirmCount, pageNo, pagesize, pagersize, linkUrl,heroNo,"heroNo");
					
			model.addAttribute("newRequests", newRequests);
			model.addAttribute("requests",requests);
			model.addAttribute("pager", pager.toString2());
			model.addAttribute("pageNo",pageNo);
			
			return "account/requestList";
			
		}				
	}
	
	@RequestMapping(value="consent.action",method = RequestMethod.POST,produces="application/text;charset=utf8")
	@ResponseBody
	public String choiceConfirm(int confrimNo,String consent) {				
		
		accountService.choiceConfirm(confrimNo,consent);
		
		return consent;
	}
	
/*	@RequestMapping(value="consentlist.action",method = RequestMethod.GET)
	public String consentlist(@RequestParam(value="userNo",required = false,defaultValue ="0")int userNo,
			  				  @RequestParam(value="heroNo",required = false,defaultValue ="0")int heroNo,
			  				  @RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,
			  				  Model model) {
		
			int pagesize=10;
			int from=(pageNo-1)*pagesize +1;
			int to =from+pagesize;
			int pagersize = 5;
			String linkUrl = "requestList.action";					
			
			List<RequestVo> requests  = accountService.takeAllRequestByuserNo(userNo,from,pagesize); 									
			model.addAttribute("requests",requests);
			
			
			return "account/consentList";
	
	}*/
	
	
	
	@RequestMapping(value="requestregister.action",method = RequestMethod.POST)
	public String requestRegister(MultipartHttpServletRequest req,RsVo rs,int requestNo,RedirectAttributes re) {
		
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
			}
		}

		rs.setAttachments(attachments);
		accountService.insertRequestRs(rs,requestNo);
		re.addAttribute("heroNo", rs.getHeroNo());
		
		return "redirect:/account/requestList.action";		
	}
	
	@RequestMapping(value="changeOkY",method=RequestMethod.POST)
	public String changeOkY(int okNo,int userNo,int rsNo,RedirectAttributes re) {
		
		accountService.changeOkY(okNo);
		accountService.changeRsDelYByOk(rsNo);
		accountService.insertApply(userNo,rsNo);
		
		re.addAttribute("userNO",userNo);
		return "redirect:/account/requestList.action";
	}
	
	@RequestMapping(value="changeOkN",method=RequestMethod.POST)
	public String changeOkN(int okNo,int userNo,int rsNo,RedirectAttributes re) {
		
		accountService.changeOkN(okNo);
		accountService.changeRsDelNByOK(rsNo);
		
		re.addAttribute("userNo", userNo);
		return "redirect:/account/requestList.action";
	}
	
}
