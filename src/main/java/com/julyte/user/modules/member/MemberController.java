package com.julyte.user.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.julyte.user.common.constants.Constants;
import com.julyte.user.common.util.UtilDateTime;
import com.julyte.user.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/member/memberList")
	public String durianList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		vo.setScOptionDate(vo.getScOptionDate() == null ? 1 : vo.getScOptionDate());
		vo.setScDateStart(vo.getScDateStart() == null
				? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
				: UtilDateTime.addStringTime(vo.getScDateStart()));
		vo.setScDateEnd(vo.getScDateEnd() == null ? UtilDateTime.nowString()
				: UtilDateTime.addNowTimeString(vo.getScDateEnd()));

		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);

		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);

		} else {
			// by pas
		}

		return "member/memberList";
	}

	@RequestMapping(value = "/member/memberForm")
	public String durianForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		List<Member> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

		return "member/memberForm";
	}

	@RequestMapping(value = "/member/memberInst")
	public String durianInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes)
			throws Exception {

		/*
		 * MultipartFile multipartFile = dto.getFile0(); String fileName =
		 * multipartFile.getOriginalFilename();
		 * 
		 * String ext = fileName.substring(fileName.lastIndexOf(".")+ 1); String uuid =
		 * UUID.randomUUID().toString(); String uuidFileName = uuid + "." + ext;
		 * 
		 * dto.setOriginalFileName(fileName); dto.setUuidFileName(uuidFileName);
		 * 
		 * 
		 * 
		 * multipartFile.transferTo(new File(
		 * "C:/factory/ws_sts_4130/springmvc_alone/src/main/webapp/resources/uploaded/"
		 * + uuidFileName));
		 * 
		 */

		dto.getSeq();
		service.insert(dto);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		List<Member> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

		vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberView";
	}

	@RequestMapping(value = "/member/memberView")
	public String durianView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Member> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

		return "member/memberView";
	}

	@RequestMapping(value = "/member/memberEdit")
	public String durianEdit(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Member> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

		model.addAttribute("codeGender", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", CodeServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", CodeServiceImpl.selectListCachedCode("11"));
		model.addAttribute("codeGrade", CodeServiceImpl.selectListCachedCode("19"));

		return "member/memberEdit";
	}

	@RequestMapping(value = "/member/memberUpdt")
	public String durianUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Member> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

		vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberView";
	}

	@RequestMapping(value = "/member/memberFelete")
	public String DurianFelete(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		service.uelete(vo);

		vo.setOymbSeq(dto.getOymbSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/memberDelete")
	public String DurianDelete(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/multiUele")
	public String multiUele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		String[] checkboxSeqArray = vo.getCheckboxSeqArray();

		for (String checkboxSeq : checkboxSeqArray) {
			vo.setOymbSeq(checkboxSeq);
			service.uelete(vo);
		}

		vo.setOymbSeq(dto.getOymbSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/multiDele")
	public String memberMultiDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		String[] checkboxSeqArray = vo.getCheckboxSeqArray();

		for (String checkboxSeq : checkboxSeqArray) {
			vo.setOymbSeq(checkboxSeq);
			service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/loginForm", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {

		return "/member/loginForm";
	}

	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtDurian = service.selectOneLogin(dto);

		if (rtDurian != null) {
			rtDurian = service.selectOneLogin(dto);
			if (rtDurian.getOymbSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);

				httpSession.setAttribute("sessSeq", rtDurian.getOymbSeq());
				httpSession.setAttribute("sessId", rtDurian.getOymbId());
				httpSession.setAttribute("sessName", rtDurian.getOymbName());

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
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

}
