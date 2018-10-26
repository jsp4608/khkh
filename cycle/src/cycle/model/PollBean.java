package cycle.model;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

import cycle.arrow.DateUtil;

// 보기 항목을 설정하는 클래스
public class PollBean implements Serializable {

	private String id;
	
	// 시작일
	/*private int syear;
	private int smonth;
	private int sday;*/
	
	// 종료일
	/*private int eyear;
	private int emonth;
	private int eday;*/
		
	// 제목
	private String title;
	// 보기갯수
	private int itemcount;
	
	private String content;
	private int memcnt;
	private int del;
	private String location;
	private String img;
	
	private int pollid;
	
	private String poll1;
	private String poll2;
	private String poll3;
	private String poll4;
	private String poll5;
	private String poll6;
	private String poll7;
	private String poll8;
	private String poll9;
	private String poll10;
	
	private int num1;
	private int num2;
	private int num3;
	private int num4;
	private int num5;
	private int num6;
	private int num7;
	private int num8;
	private int num9;
	private int num10;
	
	private String[] pollnum=new String[10];
	/*private java.sql.Date sdate;
	private java.sql.Date edate;*/
	
	/*private java.sql.Date sdate;
	private java.sql.Date edate;*/
	
	private String sdate;
	private String edate;
	
	/*
	public java.sql.Date getSdate() {
		return sdate;
	}

	public void setSdate(java.sql.Date sdate) {
		this.sdate = sdate;
	}

	public java.sql.Date getEdate() {
		return edate;
	}

	public void setEdate(java.sql.Date edate) {
		this.edate = edate;
	}
	
	public java.sql.Date getSdate() {
		return DateUtil.toDate(getSyear(), getSmonth(), getSday());
	}

	public java.sql.Date getEdate() {
		return DateUtil.toDate(getEyear(),  getEmonth(), getEday());
	}
	*/
	public String[] getPollnum() {
		
		pollnum[0]=DateUtil.str(poll1); 
		pollnum[1]=DateUtil.str(poll2);
		pollnum[2]=DateUtil.str(poll3);
		pollnum[3]=DateUtil.str(poll4);
		pollnum[4]=DateUtil.str(poll5);
		pollnum[5]=DateUtil.str(poll6);
		pollnum[6]=DateUtil.str(poll7);
		pollnum[7]=DateUtil.str(poll8);
		pollnum[8]=DateUtil.str(poll9);
		pollnum[9]=DateUtil.str(poll10);
		return pollnum;
	}

	public PollBean() {
	}

	
	
	@Override
	public String toString() {
		return "PollBean [id=" + id + ", title=" + title + ", itemcount=" + itemcount + ", content=" + content
				+ ", memcnt=" + memcnt + ", del=" + del + ", location=" + location + ", img=" + img + ", pollid="
				+ pollid + ", poll1=" + poll1 + ", poll2=" + poll2 + ", poll3=" + poll3 + ", poll4=" + poll4
				+ ", poll5=" + poll5 + ", poll6=" + poll6 + ", poll7=" + poll7 + ", poll8=" + poll8 + ", poll9=" + poll9
				+ ", poll10=" + poll10 + ", num1=" + num1 + ", num2=" + num2 + ", num3=" + num3 + ", num4=" + num4
				+ ", num5=" + num5 + ", num6=" + num6 + ", num7=" + num7 + ", num8=" + num8 + ", num9=" + num9
				+ ", num10=" + num10 + ", pollnum=" + Arrays.toString(pollnum) + ", sdate=" + sdate + ", edate=" + edate
				+ "]";
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
/*
	public int getSyear() {
		return syear;
	}

	public void setSyear(int syear) {
		this.syear = syear;
	}

	public int getSmonth() {
		return smonth;
	}

	public void setSmonth(int smonth) {
		this.smonth = smonth;
	}

	public int getSday() {
		return sday;
	}

	public void setSday(int sday) {
		this.sday = sday;
	}

	public int getEyear() {
		return eyear;
	}

	public void setEyear(int eyear) {
		this.eyear = eyear;
	}

	public int getEmonth() {
		return emonth;
	}

	public void setEmonth(int emonth) {
		this.emonth = emonth;
	}

	public int getEday() {
		return eday;
	}

	public void setEday(int eday) {
		this.eday = eday;
	}
	*/

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getItemcount() {
		return itemcount;
	}

	public void setItemcount(int itemcount) {
		this.itemcount = itemcount;
	}

	public String getPoll1() {
		return poll1;
	}

	public void setPoll1(String poll1) {
		this.poll1 = poll1;
	}

	public String getPoll2() {
		return poll2;
	}

	public void setPoll2(String poll2) {
		this.poll2 = poll2;
	}

	public String getPoll3() {
		return poll3;
	}

	public void setPoll3(String poll3) {
		this.poll3 = poll3;
	}

	public String getPoll4() {
		return poll4;
	}

	public void setPoll4(String poll4) {
		this.poll4 = poll4;
	}

	public String getPoll5() {
		return poll5;
	}

	public void setPoll5(String poll5) {
		this.poll5 = poll5;
	}

	public String getPoll6() {
		return poll6;
	}

	public void setPoll6(String poll6) {
		this.poll6 = poll6;
	}

	public String getPoll7() {
		return poll7;
	}

	public void setPoll7(String poll7) {
		this.poll7 = poll7;
	}

	public String getPoll8() {
		return poll8;
	}

	public void setPoll8(String poll8) {
		this.poll8 = poll8;
	}

	public String getPoll9() {
		return poll9;
	}

	public void setPoll9(String poll9) {
		this.poll9 = poll9;
	}

	public String getPoll10() {
		return poll10;
	}

	public void setPoll10(String poll10) {
		this.poll10 = poll10;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public int getNum3() {
		return num3;
	}

	public void setNum3(int num3) {
		this.num3 = num3;
	}

	public int getNum4() {
		return num4;
	}

	public void setNum4(int num4) {
		this.num4 = num4;
	}

	public int getNum5() {
		return num5;
	}

	public void setNum5(int num5) {
		this.num5 = num5;
	}

	public int getNum6() {
		return num6;
	}

	public void setNum6(int num6) {
		this.num6 = num6;
	}

	public int getNum7() {
		return num7;
	}

	public void setNum7(int num7) {
		this.num7 = num7;
	}

	public int getNum8() {
		return num8;
	}

	public void setNum8(int num8) {
		this.num8 = num8;
	}

	public int getNum9() {
		return num9;
	}

	public void setNum9(int num9) {
		this.num9 = num9;
	}

	public int getNum10() {
		return num10;
	}

	public void setNum10(int num10) {
		this.num10 = num10;
	}
	
	

}
