package cycle.model;
/*
CREATE TABLE MEETCOMMENT(
	    SEQ NUMBER(8) NOT NULL,
	    MEET_SEQ NUMBER(8) NOT NULL,
	    ID VARCHAR2(50) NOT NULL,
	    PARENT NUMBER(8) NOT NULL,
	    STEP NUMBER(8) NOT NULL,
	    DEPTH NUMBER(8) NOT NULL,
	    WDATE DATE NOT NULL,
	    CONTENT VARCHAR2(4000) NOT NULL,
	    DEL NUMBER(8) NOT NULL,
	    
	    CONSTRAINT MEETCOMMENT_PK PRIMARY KEY("SEQ"),
	    CONSTRAINT MEETCOMMENT_FK FOREIGN KEY(MEET_SEQ) REFERENCES MEETBBS(SEQ)
	);

	CREATE SEQUENCE COMMENT_SEQ
	START WITH 1
	INCREMENT BY 1;
*/
public class CommentDto {

	private int seq;
	private int meetnum; // ref
	private String id;
	private int parent;
	private int step;
	private int depth;
	private String wdate;
	private int del;
	private String content;
	
	
}
