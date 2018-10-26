package cycle.model;

import java.util.Date;

//view로부터 controller로 넘어올 데이터
public class MeetParam {

	/*
	private int seq;
	private String id;
	private String title;
	private String content;
	private String wdate;
	private String sdate;
	private String edate;
	private int memcnt;
	private int del;
	private String location;
	private String img;
	*/
	
	private int seq;				// 모임 번호
	private String id;			// 만든사람 아이디
	private String title;		// 제목
	private String content;	// 내용
	private Date wdate;		// 작성일
	private Date sdate;		// 시작일
	private Date edate;		// 종료일
	private int memcnt;		// 참가자수
	private int del;				
	private String location;	
	private String img;			
	private int itemcount;	// 보기의 갯수
	private int polltotal;		// 투표한 사람수
	
	// --------------- search
	private String s_category;
	private String s_keyword;
	
	// --------------- paging
	private int recordCountPerPage = 10;
	private int pageNumber = 0;
	
	private int start = 1;
	private int end = 10;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public int getItemcount() {
		return itemcount;
	}
	public void setItemcount(int itemcount) {
		this.itemcount = itemcount;
	}
	public int getPolltotal() {
		return polltotal;
	}
	public void setPolltotal(int polltotal) {
		this.polltotal = polltotal;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public int getMemcnt() {
		return memcnt;
	}
	public void setMemcnt(int memcnt) {
		this.memcnt = memcnt;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getS_category() {
		return s_category;
	}
	public void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public String getS_keyword() {
		return s_keyword;
	}
	public void setS_keyword(String s_keyword) {
		this.s_keyword = s_keyword;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
		
}
