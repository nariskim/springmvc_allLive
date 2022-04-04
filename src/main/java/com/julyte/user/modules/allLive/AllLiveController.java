package com.julyte.user.modules.allLive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.julyte.user.common.constants.Constants;

@Controller
public class AllLiveController {

	@Autowired
	AllLiveServiceImpl service;

	@RequestMapping(value = "/allLive/allLiveMain")
	public String allLiveMain(AllLiveVo vo) throws Exception {

		return "/allLive/allLiveMain";
	}

	@RequestMapping(value = "/allLive/allLiveMain2")
	public String allLiveMain2( ) throws Exception {

		return "/allLive/allLiveMain2";
	}

	@RequestMapping(value = "/allLive/allLiveDetail")
	public String allLiveDetail( ) throws Exception {

		return "/allLive/allLiveDetail";
	}

	@RequestMapping(value = "/allLive/allLiveDetail2")
	public String allLiveDetail2( ) throws Exception {

		return "/allLive/allLiveDetail2";
	}

	@RequestMapping(value = "/allLive/allLiveOrder")
	public String allLiveOrder( ) throws Exception {

		return "/allLive/allLiveOrder";
	}

	@RequestMapping(value = "/allLive/loginForm")
	public String loginForm( ) throws Exception {

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

	@ResponseBody
	@RequestMapping(value = "/allLive/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	@RequestMapping(value = "/allLive/allLiveReg")
	public String allLiveReg(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		model.addAttribute("codeBrand", AllLiveServiceImpl.selectListCachedCode("16"));
		model.addAttribute("codeManufacturer", AllLiveServiceImpl.selectListCachedCode("101"));
		model.addAttribute("codeDistributor", AllLiveServiceImpl.selectListCachedCode("102"));
		model.addAttribute("codeCountry", AllLiveServiceImpl.selectListCachedCode("103"));
		List<AllLive> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "allLive/allLiveReg";
	}

	@RequestMapping(value = "/allLive/Map")
	public String allLiveReg2(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		List<AllLive> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "allLive/Map";
	}

	@RequestMapping(value = "/allLive/allLiveInst")
	public String allLiveInst(Model model, AllLive dto, AllLiveVo vo) throws Exception {

		service.insert(dto);

		vo.setOypdSeq(dto.getOypdSeq());

		return "redirect:/allLive/allLiveView";
	}
}
