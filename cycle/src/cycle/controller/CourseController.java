package cycle.controller;

import java.io.IOException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import cycle.dao.CourseDao;
import cycle.model.CourseDto;

@Controller
public class CourseController {
	
	@Autowired
	CourseDao dao;

	
	@RequestMapping(value="course.do", method=RequestMethod.GET)
	public String course() {

		return "course.tiles";
	}
	
	
	@RequestMapping(value="courseSuggest.do", method=RequestMethod.GET)
	public String courseSuggest(Model model) {
		
		model.addAttribute("course", new CourseDto());
		return "courseSuggest.tiles";
	}
	
	@RequestMapping(value="courseSuggestAF.do", method=RequestMethod.POST)
	public String courseSuggestAF(@RequestParam("object") String obj) {
		
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		CourseDto dto = null;
		try {
			dto = objectMapper.readValue(obj, CourseDto.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("obj: " + dto.toString());
		
		boolean result = dao.submitCourse(dto);
		
		return "course.tiles";
	}
	

	// 국토종주인증센터?
	@RequestMapping(value = "Certifi.do", method = RequestMethod.GET)
	public String Certifi() {
		return "Certifi.tiles";
	}

	// 아라뱃길인증센터
	@RequestMapping(value = "Araba.do", method = RequestMethod.GET)
	public String Araba() {
		return "Araba.tiles";
	}

	// 한강인증센터
	@RequestMapping(value = "Han.do", method = RequestMethod.GET)
	public String Han() {
		return "Han.tiles";
	}

	// 남한강인증센터
	@RequestMapping(value = "NorthHan.do", method = RequestMethod.GET)
	public String NorthHan() {
		return "NorthHan.tiles";
	}
	
	// 북한강인증센터
	@RequestMapping(value = "Northbug.do", method = RequestMethod.GET)
	public String Northbug() {
		return "Northbug.tiles";
	}
	
	
	//새재인증센터
	@RequestMapping(value = "Thenew.do", method = RequestMethod.GET)
	public String Thenew() {
		return "Thenew.tiles";
	}
	
	// 낙동강인증센터
	@RequestMapping(value = "Nakdon.do", method = RequestMethod.GET)
	public String Nakdon() {
		return "Nakdon.tiles";
	}
	
	// 금강인증센터
	@RequestMapping(value = "Geumgang.do", method = RequestMethod.GET)
	public String Geumgang() {
		return "Geumgang.tiles";
	}
	
	// 영산강인증센터
	@RequestMapping(value = "Yeongsan.do", method = RequestMethod.GET)
	public String Yeongsan() {
		return "Yeongsan.tiles";
	}
	
	// 섬진강인증센터
	@RequestMapping(value = "Seomjin.do", method = RequestMethod.GET)
	public String Seomjin() {
		return "Seomjin.tiles";
	}
	
	// 오천인증센터
	@RequestMapping(value = "ocheon.do", method = RequestMethod.GET)
	public String ocheon() {
		return "ocheon.tiles";
	}
	
	// 동해안(강원)인증센터
	@RequestMapping(value = "EastCoast_Gangwon.do", method = RequestMethod.GET)
	public String EastCoast_Gangwon() {
		return "EastCoast_Gangwon.tiles";
	}
	
	// 동해안(경북)인증센터
	@RequestMapping(value = "EastCoast_Kyungbuk.do", method = RequestMethod.GET)
	public String EastCoast_Kyungbuk() {
		return "EastCoast_Kyungbuk.tiles";
	}
	
	// 제주도인증센터
	@RequestMapping(value = "jeju_Fantasy.do", method = RequestMethod.GET)
	public String jeju_Fantasy() {
		return "jeju_Fantasy.tiles";
	}
	
	
		
	
	
	
	
	
	

}
