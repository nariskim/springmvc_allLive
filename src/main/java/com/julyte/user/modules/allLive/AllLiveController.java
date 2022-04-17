package com.julyte.user.modules.allLive;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.julyte.user.common.constants.Constants;
import com.julyte.user.modules.naver.NaverLoginBO;

@Controller
public class AllLiveController {

	@Autowired
	AllLiveServiceImpl service;

	@RequestMapping(value = "/allLive/allLiveMain")
	public String allLiveMain(AllLiveVo vo, Model model) throws Exception {

		model.addAttribute("listUploaded", service.selectListUploaded(vo));

		List<AllLive> list = service.selectListPd(vo);
		model.addAttribute("list", list);

		return "/allLive/allLiveMain";
	}

	@RequestMapping(value = "/allLive/allLiveMain2")
	public String allLiveMain2(AllLiveVo vo, Model model) throws Exception {

		List<AllLive> list = service.selectListUploaded(vo);
		model.addAttribute("listUploaded", list);

		List<AllLive> list2 = service.selectListPd(vo);
		model.addAttribute("list", list2);

		return "/allLive/allLiveMain2";
	}

	@RequestMapping(value = "/allLive/allLiveDetail")
	public String allLiveDetail(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		AllLive rt = service.selectOne(vo);
		model.addAttribute("item", rt);

		List<AllLive> list = service.selectListUploaded(vo);
		model.addAttribute("listUploaded", list);
		
		return "/allLive/allLiveDetail";
	}

	@RequestMapping(value = "/allLive/allLiveDetail2")
	public String allLiveDetail2(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		AllLive rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		List<AllLive> list = service.selectListUploaded(vo);
		model.addAttribute("listUploaded", list);
		
		return "/allLive/allLiveDetail2";
	}

	@RequestMapping(value = "/allLive/allLiveOrder")
	public String allLiveOrder() throws Exception {

		return "/allLive/allLiveOrder";
	}

	@RequestMapping(value = "/allLive/loginForm")
	public String loginForm() throws Exception {

		return "/allLive/loginForm";
	}

	@ResponseBody
	@RequestMapping(value = "/allLive/loginProc")
	public Map<String, Object> loginProc(AllLive dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		AllLive rtAllLive = service.selectOneLogin(dto);

		if (rtAllLive != null) {
			rtAllLive = service.selectOneLogin(dto);
			if (rtAllLive.getOymbSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);

				httpSession.setAttribute("sessSeq", rtAllLive.getOymbSeq());
				httpSession.setAttribute("sessId", rtAllLive.getOymbId());
				httpSession.setAttribute("sessName", rtAllLive.getOymbName());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody // 카카오 로그인
	@RequestMapping(value = "/allLive/KakaoProc")
	public Map<String, Object> KakaoProc(@RequestParam("oymbName") String name, AllLive dto, HttpSession httpSession)
			throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId", "카카오 회원입니다");
		httpSession.setAttribute("sessSeq", "카카오 회원입니다");

		returnMap.put("item", "success");

		return returnMap;
	}

	@ResponseBody // 구글 로그인
	@RequestMapping(value = "/allLive/GoogleProc")
	public Map<String, Object> GloginProc(@RequestParam("oymbName") String name, AllLive dto, HttpSession httpSession)
			throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId", "구글 회원입니다");
		httpSession.setAttribute("sessSeq", "구글 회원입니다");

		returnMap.put("rt", "success");

		return returnMap;

	}
	
	

	@ResponseBody
	@RequestMapping(value = "/allLive/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	   /* NaverLoginBO */
		private NaverLoginBO naverLoginBO;

		/* NaverLoginBO */
		@Autowired
		private void setNaverLoginBO(NaverLoginBO naverLoginBO){
			this.naverLoginBO = naverLoginBO;
		} 
		
		//로그인 첫 화면 요청 메소드
		   @RequestMapping(value = "/allLive/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
		   public String loginForm(Model model, HttpSession session) {
		       
		       /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
			   String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		       
		       System.out.println("네이버:" + naverAuthUrl);
		       
		       //네이버 
		       model.addAttribute("url", naverAuthUrl);

		       /* 생성한 인증 URL을 View로 전달 */
		       return "/allLive/loginForm";
		   }
		   
		  @RequestMapping(value = "/allLive/NaverProc", method = { RequestMethod.GET, RequestMethod.POST })	//네이버 로그인
		    public String NaverProc(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
				OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
				
				//로그인 사용자 정보를 읽어온다.
				String apiResult = naverLoginBO.getUserProfile(oauthToken);
//		      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
		        session.setAttribute("result", apiResult);
		        System.out.println("result"+apiResult);
		        
		        session.setAttribute("sessSeq", 0); //생략 가능
		        /* 네이버 로그인 성공 페이지 View 호출 */
		        return "redirect:/allLive/allLiveMain";
		    }	
		  
		  
	@RequestMapping(value = "/allLive/allLiveReg")
	public String allLiveReg(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		return "allLive/allLiveReg";
	}

	@RequestMapping(value = "/allLive/Map")
	public String allLiveReg2(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		return "allLive/Map";
	}

	@RequestMapping(value = "/allLive/allLiveInst")
	public String allLiveInst(Model model, AllLive dto, AllLiveVo vo, RedirectAttributes redirectAttributes)
			throws Exception {

		// MultipartFile multipartFile = dto.getFile0();
		// multipartFile.transferTo(new
		// File("C:/factory/ws_sts_4130/springmvc_allLive/src/main/webapp/resources/uploaded/"
		// + multipartFile.getOriginalFilename()));

		/*
		 * MultipartFile multipartFile = dto.getFile(); String fileName =
		 * multipartFile.getOriginalFilename(); String ext =
		 * fileName.substring(fileName.lastIndexOf(".") + 1); String uuid =
		 * UUID.randomUUID().toString(); String uuidFileName = uuid + "." + ext;
		 * 
		 * dto.setOriginalFilePd(fileName); dto.setUuidFilePd(uuidFileName);
		 * 
		 * multipartFile.transferTo(new File(
		 * "C:/factory/ws_sts_4130/springmvc_allLive/src/main/webapp/resources/uploaded/"
		 * + uuidFileName));
		 */

		dto.getSeq();

		service.insert(dto);

		vo.setOypdSeq(dto.getOypdSeq());

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/allLive/allLiveView";
	}

	@RequestMapping(value = "/allLive/allLiveView")
	public String allLiveView(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		AllLive rt = service.selectOne(vo);
		model.addAttribute("item", rt);

		List<AllLive> list = service.selectListUploaded(vo);
		model.addAttribute("listUploaded", list);
		
		return "allLive/allLiveView";
	}

	@RequestMapping(value = "/allLive/allLiveUpdt")
	public String durianUpdt(@ModelAttribute("vo") AllLive dto, AllLiveVo vo, Model model,
			RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		vo.setOypdSeq(dto.getOypdSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/allLive/allLiveView";
	}

}
