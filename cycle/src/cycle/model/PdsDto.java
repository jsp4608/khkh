package cycle.model;
import java.io.Serializable;

/*
DROP TABLE PDS
CASCADE CONSTRAINT;

DROP SEQUENCE SEQ_PDS;

CREATE TABLE PDS(
	SEQ NUMBER(8) PRIMARY KEY,
	ID VARCHAR2(50) NOT NULL,
	TITLE VARCHAR2(200) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	FILENAME VARCHAR2(50) NOT NULL,
	READCOUNT NUMBER(8) NOT NULL,
	DOWNCOUNT NUMBER(8) NOT NULL,
	REGDATE DATE NOT NULL
);

CREATE SEQUENCE SEQ_PDS
START WITH 1 INCREMENT BY 1;

ALTER TABLE PDS
ADD CONSTRAINT FK_PDS_ID FOREIGN KEY(ID)
REFERENCES MEMBER(ID);

*/

public class PdsDto implements Serializable {

	private int seq;
	private String id;
	
	private int ref;	// 그룹번호
	private int step;	// 열번호
	private int depth;	// 깊이

	
	private String title;
	private String content;
	private String filename;
	private int readcount; //조회수
	private int downcount; // 다운로드 조회수
	private String regdate;
	
	
	public PdsDto() {}

	public PdsDto(int seq, String id, int ref, int step, int depth, String title, String content, String filename, int readcount, int downcount,
			String regdate) {		
		this.seq = seq;
		this.id = id;
		this.ref = ref;
		this.step = step;
		this.depth = depth;
		this.title = title;
		this.content = content;
		this.filename = filename;
		this.readcount = readcount;
		this.downcount = downcount;
		this.regdate = regdate;
	}

	public PdsDto(String id, String title, String content, String filename) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.filename = filename;
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

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
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

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getDowncount() {
		return downcount;
	}

	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "PdsDto [seq=" + seq + ", id=" + id + ", ref=" + ref + ", step=" + step + ", depth=" + depth + ", title="
				+ title + ", content=" + content + ", filename=" + filename + ", readcount=" + readcount
				+ ", downcount=" + downcount + ", regdate=" + regdate + "]";
	}

	
	

}


