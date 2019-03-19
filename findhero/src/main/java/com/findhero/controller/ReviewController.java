package com.findhero.controller;

import java.net.Authenticator.RequestorType;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.findhero.service.ReviewService;
import com.findhero.vo.AttachVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.UserVo;
import com.findhero.vo.ReviewVo;
import com.findhero.vo.RsVo;

@Controller //컨트롤러임을 명시
@RequestMapping("/review") //기본주소 패턴
public class ReviewController {

	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;// Service 호출을 위한 객체생성
	
	
	//controller -> service(interface) -> ServiceImpl -> dao 
		//* Service : 유지보수와 로직프로세스를 유연하게 처리하기 위한 중간 단계.
		//- 프레임워크 디자인패턴에 들어가며, 프로젝트 규모가 커질수록 관리하기 용이함
		// @Inject   // 주입(심부름꾼) 명시
		// @RequestMapping   클라이언트는 URL로 요청을 전송하고,어노테이션은 URL을 컨트롤러의 메서드와 매핑할 때 사용
		//요청 URL을 어떤 메서드가 처리할지 여부를 결정하는 것이 바로 "@RequestMapping

		 // 주소 GET으로 heroNo, userNo) 가져오기, 뿌리기, jsp페이지수정 (별점 눌러서내려오게, 불필요한구문 삭제, 해당 HeroNo가져오기.) , 
	//1.뷰화면(완료)
	@RequestMapping(value="/review.action",method=RequestMethod.GET)
	public String review(Model model, int heroNo) {
		
		HeroVo hero = reviewService.selectHeros(heroNo); 	
		List<ReviewVo> reviewlist = reviewService.reviewListService(heroNo);	
		
			
//		List<UserVo> users = reviewService.reviewUserList(heroNo);
			
		model.addAttribute("reviewList", reviewlist);
//		model.addAttribute("users", users);
		model.addAttribute("hero", hero);
		
		return "review/review";
		
		
	}
	
//	
	
	//3.리뷰쓰기(완료)
	@RequestMapping(value="review.action",method=RequestMethod.POST,produces ="application/text; charset=utf8")
	@ResponseBody
	public String registerReview(ReviewVo reviewVo) {
		
		System.out.println(reviewVo.getUserNo());
		
		reviewService.registerReview(reviewVo); //Vo 가지고  들어가자
	
		return "입력완료";
	}
	
	
	
	
}
