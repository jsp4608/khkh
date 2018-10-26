package cycle.model;

/*
CREATE TABLE JOINMEET(
    ID VARCHAR2(50),
    POLLID NUMBER(8),
    
    CONSTRAINT JOINMEET_FK FOREIGN KEY (ID) REFERENCES MEMBER(ID),
    CONSTRAINT JOINMEET_FK2 FOREIGN KEY (POLLID) REFERENCES MEETPOLL(POLLID)
);
*/

public class MeetJoinDto {

	private String id;
	private int pollid;
	
	public MeetJoinDto() {}

	public MeetJoinDto(String id, int pollid) {
		super();
		this.id = id;
		this.pollid = pollid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
	}

	@Override
	public String toString() {
		return "MeetJoinDto [id=" + id + ", pollid=" + pollid + "]";
	}
	
}
