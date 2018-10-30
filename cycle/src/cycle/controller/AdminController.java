package cycle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cycle.dao.impl.CourseDaoImpl;
import cycle.model.CourseDto;

@Controller
public class AdminController {
	
	@Autowired
	CourseDaoImpl coursedao;

	@RequestMapping(value="admin.do", method=RequestMethod.GET)
	public String admin(Model model) {
		List<CourseDto> list = coursedao.getCourseSugggestion();
		
		
		model.addAttribute(list);
		
		System.out.println(model.toString());
		
		System.out.println(list.toString());
		//what is model?
		
		return "admin.tiles";
		
	}
	
	@RequestMapping(value="courseConfirm.do", method=RequestMethod.GET)
	public String courseConfirm(Model model, @RequestParam("seq") int seq) {
		
		System.out.println("seq: "+  seq);
		
		CourseDto dto = coursedao.getCouseDetail(seq);
		
		String[] arrone = dto.getMapdata().split("|");

		model.addAttribute("dto", dto);
		
		System.out.println("coursedetail: " + dto.toString());
		
		
		return "adminCourse.tiles";
		
	}
	
	
	@RequestMapping(value="suggestConfirm.do")
	public String suggestConfirm(@RequestParam("seq") int seq) {
		
		System.out.println("Seq: "+ seq);
		
		CourseDto dto = coursedao.getCouseDetail(seq);
		
		coursedao.confirm(dto);
		
		coursedao.delete(seq);
	
		return "redirect:admin.do";
		
		
	}
	
	@RequestMapping(value="suggestDelete.do")
	public String suggestDelete(@RequestParam("seq") int seq) {
		
		System.out.println("Seq: "+ seq);
	
		coursedao.delete(seq);
		
		return "redirect:admin.do";
		
		
	}
	

}
