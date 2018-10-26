package cycle.controller;

<<<<<<< HEAD
=======
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> origin/경훈
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.xpath.internal.operations.Mod;

<<<<<<< HEAD
=======
import cycle.dao.MeetDao;
import cycle.model.MeetJoinDto;
import cycle.model.MeetParam;
import cycle.model.MeetPollDto;
import cycle.model.PollBean;
import cycle.model.PollSubDto;
import cycle.model.ReplyDto;
import cycle.model.Voter;
import cycle.service.MeetService;

>>>>>>> origin/경훈
@Controller
public class MeetController {

	
<<<<<<< HEAD
	@RequestMapping(value="meet.do", method=RequestMethod.GET)
=======
	@Autowired
	MeetService meetService;
	
	@RequestMapping(value="meet.do", method = {RequestMethod.GET,	RequestMethod.POST})
>>>>>>> origin/경훈
	public String main() {

		return "meet.tiles";
	}
<<<<<<< HEAD
=======
	
	@RequestMapping(value="meetpolllist.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetpolllist(HttpServletRequest req, Model model, MeetParam param) throws Exception {
		
		logger.info("MeetController meetpolllist! " + new Date());
		
		// String id = ((MemberDto)req.getSession().getAttribute("login")).getId();
		// model.addAttribute("plists", meetDao.getMeetAllList(id));
		
		// paging 처리
		int sn = param.getPageNumber();
		int start = (sn) * param.getRecordCountPerPage() + 1;
		int end = (sn+1) * param.getRecordCountPerPage();
		/*
	  	0	
	  		0 * 10 + 1  -> 1
	  		0+1 * 10	-> 10
	  	1	
	  		1 * 10 + 1  -> 11
	  		1+1 * 10	-> 20
	  		
	  		[1][2][3][4][5][6][7][8][9][10]
		*/
		
		param.setStart(start);
		param.setEnd(end);
		
		// 글의 갯수
		int totalRecordCount = meetDao.getMeetCount(param);
		List<MeetPollDto> meetlist = meetDao.getMeetPagingList(param);
		
		model.addAttribute("meetlist", meetlist);
		
		model.addAttribute("pageNumber", sn);
		model.addAttribute("pageCountPerScreen", 10);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalRecordCount);
		
		/*
		for (int i = 0; i < list.size(); i++) {
			System.out.println("seq: " + list.get(i).toString());
		}
		*/
		
		model.addAttribute("s_category", param.getS_category());
		model.addAttribute("s_keyword", param.getS_keyword());
		
		return "meetpolllist.tiles";
	}
	
	@RequestMapping(value="makemeet.do", method={RequestMethod.GET, RequestMethod.POST})
	public String makemeet(Model model) {
		
		logger.info("KhPollConroller makemeet! " + new Date());		
		
		return "makemeet.tiles";
	}
	
	@RequestMapping(value="makemeetAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String makemeetAf(PollBean pbean) {
		logger.info("KhPollConroller makemeetAf! " + new Date());
		
		meetService.makeMeet(pbean);
		
		System.out.println("pbean : " + pbean);
		
		return "redirect:/meetpolllist.do";
	}
	
	@RequestMapping(value="meetpolldetail.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetdetail(MeetPollDto meet, Model model) throws Exception {
		
		logger.info("MeetController meetpolldetail! " + new Date());
		
		MeetPollDto dto = meetDao.getMeet(meet);
		model.addAttribute("meet", dto);	// 투표 문항
		
		// System.out.println("MeetPollDto dto" + dto);
		
		List<PollSubDto> list = meetDao.getPollSubList(meet);
		model.addAttribute("pollsublist", list); // 투표 보기들
		
		List<ReplyDto> replylist = meetDao.getRepList(meet.getPollid());
		model.addAttribute("replylist", replylist);
		
		int count = meetDao.isVote(new Voter(dto.getPollid(), -1, dto.getId()));
		
		if(count > 0) {
			meet.setVote(true);
			return "meetpollresult.tiles";
		} else {
			meet.setVote(false);
			return "meetpolldetail.tiles";
		}
		
		/*
		for (int i = 0; i < list.size(); i++) {
			System.out.println("list : " + list.get(i).toString());
		}
		*/
	}
	
	@RequestMapping(value = "meetpollupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetupdate(MeetPollDto meet, PollSubDto poll, Model model) throws Exception {
		
		logger.info("MeetController meetpollupdate! " + new Date());
		
		MeetPollDto rmeet = meetDao.getMeetSeq(meet.getPollid());
		List<PollSubDto> rlist = meetDao.getPollSubList(meet);
		
		model.addAttribute("meet", rmeet);
		model.addAttribute("list", rlist);
		
		// System.out.println("poll.getPollsuid() : " + poll.getPollid());
		
		System.out.println("rmeet : " + rmeet);
		for (int i = 0; i < rlist.size(); i++) {
			System.out.println("list : " + rlist.get(i).toString());
		}
		
		return "meetupdate.tiles";
	}
	
	@RequestMapping(value = "meetupdateAf.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetupdateAf(MeetPollDto meet, Model model, PollBean pbean, @RequestParam("orinum") int orinum) throws Exception {
		
		System.out.println("orinum: " + orinum);
		
		logger.info("MeetController meetupdateAf! " + new Date());
	
		// meetService.updateMeet(pbean);
		System.out.println(pbean.toString());
		
		// meetDao.updateMeet(meet);
		meetService.updateMeet(pbean);
		
		if(orinum > meet.getItemcount()) {
			int diff = orinum - meet.getItemcount();
			
			meet.setDel(diff);
			
			meetDao.updateDelPoll(meet);
		}
		
		System.out.println("pbean : " + pbean);
		
		return "redirect:/meetpolllist.do";
	}
	
	@RequestMapping(value = "meetjoin.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetJoin(MeetJoinDto join, MeetPollDto meet, Model model) {
		
		logger.info("MeetController meetJoin! " + new Date());
		
		meetDao.meetJoin(join);
		meetDao.increaseMemcnt(meet.getPollid());
		
		System.out.println("join : " + join);
		System.out.println("meet.getPollid() : " + meet.getPollid());
		
		return "redirect:/meetpolllist.do";
	}
	
	@RequestMapping(value = "polling.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String polling(Voter voter) {
		
		logger.info("MeetController polling! " + new Date());
		
		meetService.polling(voter);
		
		return "redirect:/pollresult.do?pollid="+voter.getPollid();
	}
	
	@RequestMapping(value="pollresult.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pollresult(MeetPollDto meet, Model model) {
		
		logger.info("MeetController pollresult! " + new Date());
		
		MeetPollDto pdto = meetDao.getMeet(meet);
		List<PollSubDto> list = meetDao.getPollSubList(meet);
		
		model.addAttribute("meet", pdto);
		model.addAttribute("pollsublist", list);
		
		System.out.println("meet : " + pdto);
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("pollsublist : " + list.get(i).toString());
		}
		
		return "meetpollresult.tiles";
	}
	
	@RequestMapping(value = "meetdelete.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetdelete(MeetPollDto meet, Model model) throws Exception {
		
		logger.info("MeetController meetdelete" + new Date());
		
		meetDao.deleteMeet(meet.getPollid());
		
		return "redirect:/meetpolllist.do";
	}
	
	@RequestMapping(value="polldelete.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String polldelete(Voter voter, PollSubDto pollsub, MeetPollDto meet, Model model) {
		
		logger.info("MeetController polldelete" + new Date());
		
		meetDao.dcAccount(pollsub);
		meetDao.dcPolltotal(meet);
		meetDao.deletePollCount(voter);
	
		return "redirect:/meetpolllist.do";
	}
	
	@RequestMapping(value="insertreply.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String insertRep(ReplyDto rep, Model model) {
		
		logger.info("MeetController insertreply" + new Date());
		
		meetDao.insertRep(rep);
		
		return "redirect:/meetpolldetail.do?pollid="+rep.getPollid();
	}
	
	/*
	@RequestMapping(value="meetlist.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String meetlist(Model model, MeetParam param) throws Exception {
		
		logger.info("MeetController meetlist" + new Date());

		// paging 처리
		int sn = param.getPageNumber();
		int start = (sn) * param.getRecordCountPerPage() + 1;
		int end = (sn+1) * param.getRecordCountPerPage();
		
	  	0	
	  		0 * 10 + 1  -> 1
	  		0+1 * 10	-> 10
	  	1	
	  		1 * 10 + 1  -> 11
	  		1+1 * 10	-> 20
	  		
	  		[1][2][3][4][5][6][7][8][9][10]
		
		
		param.setStart(start);
		param.setEnd(end);
		
		// 글의 갯수
		int totalRecordCount = meetDao.getMeetCount(param);
		// List<MeetDto> meetlist = meetDao.getMeetPagingList(param);
		
		// model.addAttribute("meetlist", meetlist);
		
		model.addAttribute("pageNumber", sn);
		model.addAttribute("pageCountPerScreen", 10);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalRecordCount);
		
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("seq: " + list.get(i).toString());
		}
		
		
		model.addAttribute("s_category", param.getS_category());
		model.addAttribute("s_keyword", param.getS_keyword());
		
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
		
		model.addAttribute("meet", meet);
		return "meetdetail.tiles";
	}
	
	@RequestMapping(value = "meetupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetupdate(MeetDto meet, Model model) throws Exception {
		
		logger.info("MeetController meetupdate" + new Date());
		
		MeetDto rmeet = meetDao.getMeet(meet.getSeq());
		
		model.addAttribute("meet", rmeet);
		
		return "meetupdate.tiles";
	}
	
	@RequestMapping(value = "meetupdateAf.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetupdateAf(MeetDto meet, Model model) throws Exception {
		
		logger.info("MeetController meetupdateAf" + new Date());
		
		meetDao.updateMeet(meet);
		
		return "redirect:/meetlist.do";
	}
	
	@RequestMapping(value = "meetdelete.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String meetdelete(MeetDto meet, Model model) throws Exception {
		
		logger.info("MeetController meetdelete" + new Date());
		
		meetDao.deleteMeet(meet.getSeq());
		
		return "redirect:/meetlist.do";
	}
	*/
	
	
	
	
>>>>>>> origin/경훈
}
