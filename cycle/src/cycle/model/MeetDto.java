package cycle.model;
/*
CREATE TABLE "HR"."MEETBBS" 
(	"MEET_SEQ" NUMBER(8,0) NOT NULL ENABLE, 
	"ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"TITLE" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	"CONTENT" VARCHAR2(4000 BYTE) NOT NULL ENABLE, 
	"WDATE" DATE NOT NULL ENABLE, 
	"SDATE" DATE NOT NULL ENABLE, 
	"EDATE" DATE NOT NULL ENABLE, 
	"MEMCNT" NUMBER(8,0) NOT NULL ENABLE, 
	"DEL" NUMBER(8,0) NOT NULL ENABLE, 
	"LOCATION" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"IMG" VARCHAR2(200 BYTE), 
	 CONSTRAINT "MEETBBS_PK" PRIMARY KEY ("MEET_SEQ")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "USERS"  ENABLE
) 
*/
public class MeetDto {

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
	
	public MeetDto() {
	}

	public MeetDto(int seq, String id, String title, String content, String wdate, String sdate, String edate,
			int memcnt, int del, String location, String img) {
		super();
		this.seq = seq;
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
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
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

	@Override
	public String toString() {
		return "MeetDto [seq=" + seq + ", id=" + id + ", title=" + title + ", content=" + content + ", wdate=" + wdate
				+ ", sdate=" + sdate + ", edate=" + edate + ", memcnt=" + memcnt + ", del=" + del + ", location="
				+ location + ", img=" + img + "]";
	}
	
}
