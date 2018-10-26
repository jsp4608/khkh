package cycle.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cycle.Service.pdsService;
import cycle.dao.PdsDao;
import cycle.model.PdsDto;
import cycle.model.PdsParam;

@Controller
public class InfoController {

	
private static final Logger logger = LoggerFactory.getLogger(InfoController.class);
	
	@Autowired
	PdsDao pdsDao; 
	
	@Autowired
	pdsService pdsService;
	
	
	/*@RequestMapping(value="info.do", method=RequestMethod.GET)
	public String info() {

		return "info.tiles";
	}*/
	
	
	@RequestMapping(value="pdslist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdslist(Model model,  PdsParam param) {
		
		logger.info("InfoController pdslist" + new Date());
		
		// paging
		int sj = param.getPageNumber();
		int start = (sj) * param.getRecordCountPerPage() + 1;
		int end = (sj+1) * param.getRecordCountPerPage();
		
		param.setStart(start);
		param.setEnd(end);
		
		// 글 갯수
		int totalRecordCount = pdsDao.getPdsCount(param);
		List<PdsDto> pdslist = pdsDao.getPdsPagingList(param);
		
		for (int i = 0; i < pdslist.size(); i++) {
			System.out.println(pdslist.get(i).toString());
		}
		
		model.addAttribute("pdslist", pdslist);
		
		model.addAttribute("pageNumber", sj);
		model.addAttribute("pageCountPerScreen", 10);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalRecordCount);
		
		// 카테고리와 검색한 단어설정
		model.addAttribute("s_category",param.getS_category());
		model.addAttribute("s_keyword", param.getS_keyword());
		
		return "info.tiles";		
	}
	
	
	@RequestMapping(value="pdsschedule.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdsschedule(Model model) {
		logger.info("InfoController pdsschedule" + new Date());		
		return "pdsschedule.tiles";
	}
	
	@RequestMapping(value="pdscertification.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdscertification(Model model) {
		return "pdscertification.tiles";
	}
	
	
	@RequestMapping(value="pdswrite.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdswrite(Model model) {
		logger.info("InfoController pdswrite" + new Date());		
		return "pdswrite.tiles";
	}
	
	@RequestMapping(value="pdsdel.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdsdel(Model model, @RequestParam(value="seq")
	int sequence) {
		logger.info("InfoController pdsdel" + new Date());		
		
		System.out.println("sequence: " + sequence);
		
		PdsDto tmp = new PdsDto();
		tmp.setSeq(sequence);
		
		pdsDao.deletePds(tmp);	
		
		return "redirect:/pdslist.do";
	}
	
	
	@RequestMapping(value="pdsupload.do", method={RequestMethod.GET, RequestMethod.POST})
	public String pdsupload(PdsDto dto, 
							HttpServletRequest req,
							Model model,
							@RequestParam(value="fileload", required=false)
							MultipartFile fileload) 
	{
		logger.info("InfoController pdsupload" + new Date());	
		
		System.out.println("original: " + fileload.getOriginalFilename());
		
		// filename 취득
		dto.setFilename(fileload.getOriginalFilename());
		
		// upload 경로
		// tomcat
	//	String fupload = req.getServletContext().getRealPath("/upload");
	//	logger.info("업로드경로:" + fupload);
		
		// 폴더
		String fupload = "c:\\tmp";
		
		String f = dto.getFilename();
		String newFile = FUpUtil.getNewFile(f);
		
		dto.setFilename(newFile);		
		logger.info("변경된 파일명:" + newFile);
		
		try {
		
			File file = new File(fupload + "/" + newFile);		
			logger.info("경로와 파일명:" + fupload + "/" + newFile);
			
			//실제로 업로드 되는 부분		
			FileUtils.writeByteArrayToFile(file, fileload.getBytes());
			
			// DB 저장
			pdsDao.uploadPds(dto);			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/pdslist.do";		
	}
	
	@RequestMapping(value="pdsdetail.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String pdsdetail(int seq, Model model) {
		
		logger.info("InfoController pdsdetail" + new Date());
		
		
		pdsDao.readcount(seq);
		
		PdsDto pdsDto = pdsDao.getPds(seq);
		
		model.addAttribute("pds", pdsDto);
		
		return "pdsdetail.tiles";		
	}
	
	
	//댓글 (등록란??)
	@RequestMapping(value = "pdsreply.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String pdsreply(PdsDto dto, Model model)throws Exception {
		System.out.println("InfoController pdsdetail pdsreply "+ new Date());
		
		
		model.addAttribute("pds", dto);
		return "pdsreply.tiles";
	}
	
	//댓글(달리면)
	@RequestMapping(value = "pdsreplyAf.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String pdsreplyAf(PdsDto dto, Model model) {
		System.out.println("pdsreplyAF.do IN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		dto.setFilename(" ");
		try {
			pdsService.reply(dto);
		} catch (Exception e) {
			e.printStackTrace();	
			}
			
		return "redirect:/pdslist.do";
	}
	
	
	
	@RequestMapping(value="fileDownload.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String download(String filename, int seq, Model model,
						HttpServletRequest req) throws Exception{
		
		
		// 다운할 경로
		// 1.tomcat
		// String fupload = req.getServletContext().getRealPath("/upload");
					
		// 2.폴더
		String fupload = "c:\\tmp";
		
		File downloadFile = new File(fupload + "/" + filename);
		
		model.addAttribute("downloadFile", downloadFile);
		model.addAttribute("seq", seq);		
		
		pdsDao.downcount(seq);
		
		
		return "downloadView";
	}
	
	@RequestMapping(value="pdsupdate.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String pdsupdate(int seq, Model model) {
		
		
		PdsDto dto = pdsDao.getPds(seq);		
		model.addAttribute("pds", dto);
		
		return "pdsupdate.tiles";
	}
	
	@RequestMapping(value="pdsupdateAf.do", 
			method={RequestMethod.GET, RequestMethod.POST})
	public String pdsupdateAf(PdsDto dto, 
			String namefile,	// write와는 달리 추가되었음. 기존의 파일명 
			HttpServletRequest req,
			Model model,
			@RequestParam(value="fileload", required=false)
			MultipartFile fileload) {
		
		
		dto.setFilename(fileload.getOriginalFilename());
		
		// 1.tomcat
		// String fupload = req.getServletContext().getRealPath("/upload");
		// 2.폴더
		String fupload = "c:\\tmp";
		
		// 정상적으로 변경할 파일이 있을 때
		if(dto.getFilename()!=null && !dto.getFilename().equals("")) {
			String f = dto.getFilename();
			String newFile = FUpUtil.getNewFile(f);
			
			dto.setFilename(newFile);		
			logger.info("변경된 파일명:" + newFile);
			
			try {
			
				File file = new File(fupload + "/" + newFile);		
				logger.info("경로와 파일명:" + fupload + "/" + newFile);
				
				//실제로 업로드 되는 부분		
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());
				
				// DB 저장
				pdsDao.updatePds(dto);				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			// 정상적으로 변경할 파일이 없을 때
			if(namefile != null && !namefile.equals("")) {
				dto.setFilename(namefile);
				pdsDao.updatePds(dto);				
			}else {
				logger.info("update를 할 수 없습니다");
			}		
		}
		return "redirect:/pdslist.do";
	}
}

