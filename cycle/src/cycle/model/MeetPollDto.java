package cycle.model;
/*
CREATE TABLE MEETPOLL(
	    POLLID NUMBER NOT NULL,
		ID VARCHAR2(50) NOT NULL,
	    TITLE VARCHAR2(200) NOT NULL,
	    CONTENT VARCHAR2(4000) NOT NULL,
	    WDATE DATE NOT NULL,
	    SDATE DATE NOT NULL,
	    EDATE DATE NOT NULL,
	    MEMCNT NUMBER(8) NOT NULL,
	    DEL NUMBER(8) NOT NULL,
	    LOCATION VARCHAR2(200) NOT NULL,
	    IMG VARCHAR2(200) NOT NULL,
	    ITEMCOUNT NUMBER NOT NULL,
		POLLTOTAL NUMBER NOT NULL,
	    
	    CONSTRAINT MEETPOLL_PK PRIMARY KEY("POLLID")
	);

	CREATE SEQUENCE POLL_SEQ
	START WITH 1 INCREMENT BY 1;

	ALTER TABLE MEETPOLL ADD CONSTRAINT MEETPOLL_FK
	FOREIGN KEY("ID")
	REFERENCES MEMBER("ID");
*/

import java.util.Date;

// 투표항목
public class MeetPollDto {

	private int pollid;				// 모임 번호
	private String id;			// 만든사람 아이디
	private String title;		// 제목
	private String content;	// 내용
	private Date wdate;		// 작성일
	/*private Date sdate;		// 시작일
	private Date edate;		// 종료일*/	
	private String sdate;
	private String edate;
	private int memcnt;		// 참가자수
	private int del;				
	private String location;	
	private String img;			
	private int itemcount;	// 보기의 갯수
	private int polltotal;		// 투표한 사람수
	
	private boolean vote;		// 투표를 했는지?
	
	public MeetPollDto() {
	}

	public MeetPollDto(int pollid, String id, String title, String content, Date wdate, String sdate, String edate,
			int memcnt, int del, String location, String img, int itemcount, int polltotal) {
		super();
		this.pollid = pollid;
		this.id = id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.sdate = sdate;
		this.edate = edate;
		this.memcnt = memcnt;
		this.del = del;
		this.location = location;
		this.img = img;
		this.itemcount = itemcount;
		this.polltotal = polltotal;
	}

	public MeetPollDto(String id, String title, String sdate, String edate, int itemcount, int polltotal) {
		super();
		this.id = id;
		this.title = title;
		this.sdate = sdate;
		this.edate = edate;
		this.itemcount = itemcount;
		this.polltotal = polltotal;
	}

	public MeetPollDto(String id, String title, String content, String sdate, String edate, int memcnt, int del,
			String location, String img, int itemcount, int polltotal) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.sdate = sdate;
		this.edate = edate;
		this.memcnt = memcnt;
		this.del = del;
		this.location = location;
		this.img = img;
		this.itemcount = itemcount;
		this.polltotal = polltotal;
	}

	public MeetPollDto(String id, String title, int itemcount) {
		super();
		this.id = id;
		this.title = title;
		this.itemcount = itemcount;
	}

	public MeetPollDto(int pollid, String title, String content, String sdate, String edate, String location,
			String img, int itemcount, int polltotal) {
		super();
		this.pollid = pollid;
		this.title = title;
		this.content = content;
		this.sdate = sdate;
		this.edate = edate;
		this.location = location;
		this.img = img;
		this.itemcount = itemcount;
		this.polltotal = polltotal;
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
	}

	public String getId() {
		return id;
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

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
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

	@Override
	public String toString() {
		return "MeetPollDto [pollid=" + pollid + ", id=" + id + ", title=" + title + ", content=" + content + ", wdate="
				+ wdate + ", sdate=" + sdate + ", edate=" + edate + ", memcnt=" + memcnt + ", del=" + del
				+ ", location=" + location + ", img=" + img + ", itemcount=" + itemcount + ", polltotal=" + polltotal
				+ "]";
	}

	public boolean isVote() {
		return vote;
	}

	public void setVote(boolean vote) {
		this.vote = vote;
	}
	
	
}
