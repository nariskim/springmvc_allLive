package com.julyte.user.modules.allLive;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.julyte.user.common.constants.Constants;

@Controller
public class AllLiveController {

	@Autowired
	AllLiveServiceImpl service;

	@RequestMapping(value = "/allLive/allLiveMain", method = RequestMethod.GET)
	public String allLiveMain() {

		return "/allLive/allLiveMain";
	}

	@RequestMapping(value = "/allLive/allLiveDetail", method = RequestMethod.GET)
	public String allLiveDetail() {

		return "/allLive/allLiveDetail";
	}

	@RequestMapping(value = "/allLive/allLiveOrder", method = RequestMethod.GET)
	public String allLiveOrder() {

		return "/allLive/allLiveOrder";
	}

	@RequestMapping(value = "/allLive/allLiveReg", method = RequestMethod.GET)
	public String allLiveReg() {

		return "/allLive/allLiveReg";
	}

	@RequestMapping(value = "/allLive/loginForm", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {

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

}
