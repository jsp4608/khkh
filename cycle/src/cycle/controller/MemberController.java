package cycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cycle.dao.MemberDao;
import cycle.model.MemberDto;
import cycle.model.YesMember;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value="main.do", method=RequestMethod.GET)
	public String main() {
		
		return "main.tiles";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login() {
		
		return "login.tiles";
	}
	
	@RequestMapping(value="loginAf.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String loginAf(HttpSession session, MemberDto mem) throws Exception {
		
		logger.info("MemberController loginAf" + new Date());
		
		MemberDto login = null;
		// login을 DB 확인
		login = memberDao.login(mem);
		
		if(login != null && !login.getId().equals("")) {
			session.setAttribute("login", login);
			return "redirect:/main.do";			
		}else {
			session.invalidate();
			return "login.tiles";
		//	return "forward:/login.do";
		}		
	}
	
	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi(Model model) {
		logger.info("MainController regi" + new Date());
		
		return "regi.tiles";		
	}
	
	@RequestMapping(value="regiAf.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String regiAf(MemberDto mem,
						 Model model,
						 HttpServletRequest req,
						 @RequestParam(value="imgInp", required=false)
							MultipartFile imgInp)
						throws Exception{
		logger.info("MainController regiAf" + new Date());
		
		System.out.println("original: " + imgInp.getOriginalFilename());
		
		// filename 취득
		mem.setImg(imgInp.getOriginalFilename());
		
		// upload 경로
		
		String fupload = req.getServletContext().getRealPath("/upload");
		System.out.println("파일 경로:" + fupload);
		
		String f = mem.getImg();
		String newFile = FUpUtil.getNewjpg(f);
		
		
		mem.setImg(newFile);
		logger.info("변경된 파일명:" + newFile);
		
		
		try {
			
			File file = new File(fupload + "/" + newFile);		
			System.out.println("경로와 파일명:" + fupload + "/" + newFile);
			
			//실제로 업로드 되는 부분		
			FileUtils.writeByteArrayToFile(file, imgInp.getBytes());
			
			// DB 저장
			memberDao.addMember(mem);		
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		/*boolean b = memberDao.addMember(mem);
		
		if(b) {
			return "login.tiles";
		}else {
			return "login.tiles";
		}	*/
		
		return "login.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value="getID.do", method={RequestMethod.GET, RequestMethod.POST})
	public YesMember getID(MemberDto mem) {
		logger.info("MainController getID" + new Date());
		
		int count = memberDao.getID(mem);
		
		YesMember yes = new YesMember();
		if(count > 0) {
			yes.setMessage("YES");
		}else {
			yes.setMessage("NO");
		}
		return yes;
	}
	
	@RequestMapping(value="logout.do", 
			method=RequestMethod.GET)
	public String logout(HttpSession session){
		logger.info("Welcome logout");		
		session.invalidate();			
		return "login.tiles";		
	}
	
	
	
}
