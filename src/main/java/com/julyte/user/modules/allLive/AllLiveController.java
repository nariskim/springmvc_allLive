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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.julyte.user.common.constants.Constants;

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

		List<AllLive> list = service.selectListPd(vo);
		model.addAttribute("list", list);

		return "/allLive/allLiveMain2";
	}

	@RequestMapping(value = "/allLive/allLiveDetail")
	public String allLiveDetail() throws Exception {

		return "/allLive/allLiveDetail";
	}

	@RequestMapping(value = "/allLive/allLiveDetail2")
	public String allLiveDetail2() throws Exception {

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

		return "redirect:/allLive/allLiveView";
	}

	@RequestMapping(value = "/allLive/allLiveView")
	public String allLiveView(@ModelAttribute("vo") AllLiveVo vo, AllLive dto, Model model) throws Exception {

		AllLive rt = service.selectOne(vo);
		model.addAttribute("item", rt);

		return "allLive/allLiveView";
	}

	@RequestMapping(value = "/allLive/allLiveUpdt")
	public String durianUpdt(@ModelAttribute("vo") AllLive dto, AllLiveVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		vo.setOypdSeq(dto.getOypdSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/allLive/allLiveView";
	}
}
