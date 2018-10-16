package cycle.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cycle.dao.MeetDao;
import cycle.model.MeetDto;

@Controller
public class MeetController {

	private static final Logger logger = LoggerFactory.getLogger(MeetController.class);
	
	@Autowired
	MeetDao meetDao;
	
	@RequestMapping(value="meet.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String main() {

		return "meet.tiles";
	}
	
	@RequestMapping(value="meetlist.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetlist(Model model) throws Exception {
		
		logger.info("MeetController meetlist" + new Date());

		List<MeetDto> list = meetDao.getMeetList();
		
		model.addAttribute("meetlist", list);
		
		return "meetlist.tiles";
	}
	
	@RequestMapping(value="meetwrite.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetwrite(Model model) {
		
		logger.info("MeetController meetwrite" + new Date());
		
		return "meetwrite.tiles";
	}
	
	@RequestMapping(value="meetwriteAf.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetwriteAf(MeetDto meet, Model model) throws Exception {
		if(meet.getContent().equals("") || meet.getTitle().equals("")) {
			return "meetwrite";
		}
		
		logger.info("MeetController meetwriteAf" + new Date());
		
		meetDao.writeMeet(meet);
		return "redirect:/meetlist.do";
	}
	
	@RequestMapping(value="meetdetail.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetdetail(int seq, Model model) throws Exception {
		
		logger.info("MeetController meetdetail" + new Date());
		
		MeetDto meet = null;
		
		meet = meetDao.getMeet(seq);
		
		System.out.println("meet = " + meet);
		
		model.addAttribute("meet", meet);
		
		return "meetdetail.tiles";
	}
	
	
	
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
