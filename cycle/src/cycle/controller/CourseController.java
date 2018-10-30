package cycle.controller;

import java.io.IOException;
import java.util.List;

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
	
	private void addMemberCourse(Model model) {
		List<CourseDto> list = dao.getMemberCourseList();
		
		model.addAttribute("list", list);
	}

	
	@RequestMapping(value="course.do", method=RequestMethod.GET)
	public String course(Model model) {
		
		addMemberCourse(model);

		return "course.tiles";
	}

	
	
	@RequestMapping(value="memberCourse.do", method=RequestMethod.GET)
	public String courseConfirm(Model model, @RequestParam("seq") int seq) {
		
		addMemberCourse(model);
		
		System.out.println("seq: "+  seq);
		
		CourseDto dto = dao.getMemberCouseDetail(seq);
		

		model.addAttribute("dto", dto);
		
		System.out.println("coursedetail: " + dto.toString());
		
		
		return "memberCourse.tiles";
		
	}
	
	
	@RequestMapping(value="courseSuggest.do", method=RequestMethod.GET)
	public String courseSuggest(Model model) {
		
		addMemberCourse(model);
		
		model.addAttribute("course", new CourseDto());
		return "courseSuggest.tiles";
	}
	
	@RequestMapping(value="courseSuggestAF.do", method=RequestMethod.POST)
	public String courseSuggestAF(@RequestParam("object") String obj, Model model) {
		
		addMemberCourse(model);
		
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
	public String Certifi(Model model) {
		addMemberCourse(model);
		return "Certifi.tiles";
	}

	// 아라뱃길인증센터
	@RequestMapping(value = "Araba.do", method = RequestMethod.GET)
	public String Araba(Model model) {
		addMemberCourse(model);
		return "Araba.tiles";
	}

	// 한강인증센터
	@RequestMapping(value = "Han.do", method = RequestMethod.GET)
	public String Han(Model model) {
		addMemberCourse(model);
		return "Han.tiles";
	}

	// 남한강인증센터
	@RequestMapping(value = "NorthHan.do", method = RequestMethod.GET)
	public String NorthHan(Model model) {
		addMemberCourse(model);
		return "NorthHan.tiles";
	}
	
	// 북한강인증센터
	@RequestMapping(value = "Northbug.do", method = RequestMethod.GET)
	public String Northbug(Model model) {
		addMemberCourse(model);
		return "Northbug.tiles";
	}
	
	
	//새재인증센터
	@RequestMapping(value = "Thenew.do", method = RequestMethod.GET)
	public String Thenew(Model model) {
		addMemberCourse(model);
		return "Thenew.tiles";
	}
	
	// 낙동강인증센터
	@RequestMapping(value = "Nakdon.do", method = RequestMethod.GET)
	public String Nakdon(Model model) {
		addMemberCourse(model);
		return "Nakdon.tiles";
	}
	
	// 금강인증센터
	@RequestMapping(value = "Geumgang.do", method = RequestMethod.GET)
	public String Geumgang(Model model) {
		addMemberCourse(model);
		return "Geumgang.tiles";
	}
	
	// 영산강인증센터
	@RequestMapping(value = "Yeongsan.do", method = RequestMethod.GET)
	public String Yeongsan(Model model) {
		addMemberCourse(model);
		return "Yeongsan.tiles";
	}
	
	// 섬진강인증센터
	@RequestMapping(value = "Seomjin.do", method = RequestMethod.GET)
	public String Seomjin(Model model) {
		addMemberCourse(model);
		return "Seomjin.tiles";
	}
	
	// 오천인증센터
	@RequestMapping(value = "ocheon.do", method = RequestMethod.GET)
	public String ocheon(Model model) {
		addMemberCourse(model);
		return "ocheon.tiles";
	}
	
	// 동해안(강원)인증센터
	@RequestMapping(value = "EastCoast_Gangwon.do", method = RequestMethod.GET)
	public String EastCoast_Gangwon(Model model) {
		return "EastCoast_Gangwon.tiles";
	}
	
	// 동해안(경북)인증센터
	@RequestMapping(value = "EastCoast_Kyungbuk.do", method = RequestMethod.GET)
	public String EastCoast_Kyungbuk(Model model) {
		addMemberCourse(model);
		return "EastCoast_Kyungbuk.tiles";
	}
	
	// 제주도인증센터
	@RequestMapping(value = "jeju_Fantasy.do", method = RequestMethod.GET)
	public String jeju_Fantasy(Model model) {
		addMemberCourse(model);
		return "jeju_Fantasy.tiles";
	}
	
	
		
	
	
	
	
	
	

}
