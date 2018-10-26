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
		
		if(result) {

		}else {

		}
		
		return "course.tiles";
		
		
	}
}
