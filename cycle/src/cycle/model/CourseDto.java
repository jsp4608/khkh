package cycle.model;

import java.io.Serializable;
import java.util.Arrays;

public class CourseDto implements Serializable {
	
/*
CREATE TABLE COURSETEMP(
	SEQ NUMBER(8) PRIMARY KEY,
	TITLE VARCHAR2(200) not null,
	MEMID VARCHAR2(50),
	DESCRIPTION VARCHAR2(2000) NOT NULL,
	LEN NUMBER(8) NOT NULL,
	COURSEDAY NUMBER(8) NOT NULL,
	MAPDATA VARCHAR2(2000) NOT NULL
)

CREATE SEQUENCE SEQ_COURSETEMP
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_COURSE
START WITH 1 INCREMENT BY 1;

 */
	
	private int seq;
	private String title;
	private String memid;
	private String description;
	private double len;
	private int courseday;
	private String mapdata;
	


	public CourseDto() {
	}



	public CourseDto(String title, String memid, String description, double len, int courseday, String mapdata) {
		super();
		this.title = title;
		this.memid = memid;
		this.description = description;
		this.len = len;
		this.courseday = courseday;
		this.mapdata = mapdata;
	}



	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getMemid() {
		return memid;
	}



	public void setMemid(String memid) {
		this.memid = memid;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public double getLen() {
		return len;
	}



	public void setLen(double len) {
		this.len = len;
	}



	public int getCourseday() {
		return courseday;
	}



	public void setCourseday(int courseday) {
		this.courseday = courseday;
	}



	public String getMapdata() {
		return mapdata;
	}



	public void setMapdata(String mapdata) {
		this.mapdata = mapdata;
	}



	@Override
	public String toString() {
		return "CourseDto [seq=" + seq + ", title=" + title + ", memid=" + memid + ", description=" + description
				+ ", len=" + len + ", courseday=" + courseday + ", mapdata=" + mapdata + "]";
	}


}
