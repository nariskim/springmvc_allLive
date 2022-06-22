package com.julyte.user.modules.member;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.julyte.user.common.constants.Constants;
import com.julyte.user.common.util.UtilDateTime;
import com.julyte.user.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/member/memberView2") // 브라우저창에 입력하는 주소
	public String memberView2(Model model) throws Exception {

		// api 호출해서 데이터를 받아 온다.

		String apiUrl = "http://localhost:8080/rest/member/4342";

		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");

		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("final line:" + stringBuilder.append(line));

		ObjectMapper objectMapper = new ObjectMapper();
		Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);

		model.addAttribute("item", member);

		// json Object
		// json String

		// json object -> 객체로 변환
		// json string -> 객체로 변환

		return "/member/memberView2";
	}

	@RequestMapping(value = "/member/memberList2") // 브라우저창에 입력하는 주소
	public String memberList2(Model model) throws Exception {

//		api 호출해서 값을 가져온다.
		String apiUrl = "http://localhost:8080/rest/member";

		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");

		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line : " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("final line : " + stringBuilder.append(line));

		ObjectMapper objectMapper = new ObjectMapper();
		List<Member> memberList = objectMapper.readValue(stringBuilder.toString(), new TypeReference<List<Member>>() {
		});

		model.addAttribute("list", memberList);
//			json Object
//				json String, json객체가 아니다

//			json Object -> 객체로 변환 : convert
//			json String -> 객체로 변환

//		model 객체를 이용해서 jsp로 데이터를 넘겨준다
//			객체:Member

		return "/member/memberList2";
	}

	@RequestMapping(value = "/test/publicCoronaList")
	public String publicCoronaList(Model model) throws Exception {

		return "/test/publicCoronaList";
	}

	@RequestMapping(value = "/test/publicCorona1JsonNodeList")
	public String publicCorona1JsonNodeList(Model model) throws Exception {
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getMmCovidDagnsRgntExprtStusInq?serviceKey=W8GIRgS%2BfKQbnkbpNV2LabDb0D5ktz%2FhxYSOeroVhJbIQ0R4Pe4yerYX3siZrjZASAnATjsdpdCjH%2FPA5W2w6Q%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(stringBuilder.toString());
		
		System.out.println("node.get(\"header\").get(\"resultCode\").asText():" + node.get("header").get("resultCode").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText():" + node.get("header").get("resultMsg").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText():" + node.get("body").get("items").get(0).get("KIT_PROD_QTY").asText());
		
		model.addAttribute("node", node);
		
		
		return "/test/publicCorona1JsonNodeList";
	}

	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {

//		api 호출해서 값을 가져온다.
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getMmCovidDagnsRgntExprtStusInq?serviceKey=W8GIRgS%2BfKQbnkbpNV2LabDb0D5ktz%2FhxYSOeroVhJbIQ0R4Pe4yerYX3siZrjZASAnATjsdpdCjH%2FPA5W2w6Q%3D%3D&numOfRows=3&pageNo=1&type=json";

		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");

		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line : " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		/*
		 * // json object + array string -> java map
		 * 
		 * ObjectMapper objectMapper = new ObjectMapper(); Map<String, Object> map =
		 * objectMapper.readValue(stringBuilder.toString(), Map.class);
		 * 
		 * System.out.println("#####Map"); for(String key : map.keySet()) { // String
		 * value = (String)map.get(key); // String value = map.get(key).toString();
		 * String value = String.valueOf(map.get(key)); System.out.println("[key]: "+key
		 * + ", [value]: " + value); }
		 * 
		 * Map<String, Object> header = new HashMap<String, Object>(); header =
		 * (Map<String, Object>)map.get("header");
		 * 
		 * System.out.println("#####Header"); for(String key : header.keySet()) { String
		 * value = String.valueOf(header.get(key)); System.out.println("[key]: "+key +
		 * ", [value]: " + value); }
		 * System.out.println("header.get(\"resultCode\") : "+header.get("resultCode"));
		 * System.out.println("header.get(\"resultMsg\") : "+header.get("resultMsg"));
		 * 
		 * return "/test/publicCorona1List";
		 */
//		json object + array string -> java map

		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);

		System.out.println("#####Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}

		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");

		System.out.println("#####Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		System.out.println("header.get(\"resultCode\") : " + header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\") : " + header.get("resultMsg"));

		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");

		List<Member> items = new ArrayList<Member>();
		items = (List<Member>) body.get("items");

		System.out.println("items.size() : " + items.size());

		for (int i = 0; i < items.size(); i++) {

		}
//		map X

//		header -> java 객체 (Home)

//		body -> java 객체 (Home)

//		item -> java 객체 (Home)

		model.addAllAttributes(header);
		model.addAllAttributes(body);

		return "/test/publicCorona1List";
	}

	/* project */
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
	public String durianUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, Model model,
			RedirectAttributes redirectAttributes) throws Exception {

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
	
//	카카오로그인
	@ResponseBody //카카오 로그인
	@RequestMapping(value = "/member/KakaoProc", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> KakaoProc(@RequestParam("oymbName") String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("카카오 "+name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","카카오 회원입니다");
		httpSession.setAttribute("sessSeq","카카오 회원입니다");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
	
	/* oracle */
	@RequestMapping(value = "/member/memberListOracle")
	public String memberListOracle(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

			List<Member> list = service.selectListOracle(vo);
			model.addAttribute("list", list);

		return "member/memberListOracle";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		vo.setScOptionDate(vo.getScOptionDate() == null ? 1 : vo.getScOptionDate());
		vo.setScDateStart(vo.getScDateStart() == null
				? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
				: UtilDateTime.addNowTimeString(vo.getScDateStart()));
		vo.setScDateEnd(vo.getScDateEnd() == null ? UtilDateTime.nowString()
				: UtilDateTime.addNowTimeString(vo.getScDateEnd()));

		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
//			List<?> list = service.selectList(vo);

		
		
	//        Workbook wb = new HSSFWorkbook();
	        Workbook wb = new XSSFWorkbook();
	        Sheet sheet = wb.createSheet("첫번째 시트");
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
	
	        // Header
	        row = sheet.createRow(rowNum++);
	        cell = row.createCell(0);
	        cell.setCellValue("번호");
	        cell = row.createCell(1);
	        cell.setCellValue("이름");
	        cell = row.createCell(2);
	        cell.setCellValue("제목");
	
	        // Body
	        
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            cell = row.createCell(0);
	            cell.setCellValue(String.valueOf(list.get(i).getOymbSeq()));
	            cell = row.createCell(1);
	            cell.setCellValue(list.get(i).getOymbName());
	            cell = row.createCell(2);
	            cell.setCellValue(i+"_title");
	        }
	
	        // 컨텐츠 타입과 파일명 지정
	        httpServletResponse.setContentType("ms-vnd/excel");
	//        response.setHeader("Content-Disposition", "attachment;filename=example.xls");
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");
	
	        // Excel File Output
	        wb.write(httpServletResponse.getOutputStream());
	        wb.close();
		}
    }
}
