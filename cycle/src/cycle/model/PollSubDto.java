package cycle.model;

import java.io.Serializable;

/*
CREATE TABLE POLLSUB(
	POLLSUBID NUMBER NOT NULL,
	POLLID NUMBER NOT NULL,
	ANSWER VARCHAR2(1000) NOT NULL,
	ACCOUNT NUMBER NOT NULL,
	CONSTRAINT POLLSUB_PK PRIMARY KEY("POLLSUBID")
);

CREATE SEQUENCE POLLSUB_SEQ
START WITH 1 INCREMENT BY 1;

ALTER TABLE POLLSUB ADD CONSTRAINT POLLSUB_FK
FOREIGN KEY("POLLID")
REFERENCES POLL("POLLID");
*/

// 보기들
public class PollSubDto implements Serializable {

	private int pollsubid;	// 보기의 id
	private int pollid;		// 질문번호
	private String answer;	// 사과, 바나나, 배
	private int account;		// 이 보기를 선택한 사람 수
	
	public PollSubDto() {
	}

	public PollSubDto(int pollsubid, int pollid, String answer, int account) {
		super();
		this.pollsubid = pollsubid;
		this.pollid = pollid;
		this.answer = answer;
		this.account = account;
	}

	public int getPollsubid() {
		return pollsubid;
	}

	public void setPollsubid(int pollsubid) {
		this.pollsubid = pollsubid;
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getAccount() {
		return account;
	}

	public void setAccount(int account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "PollSubDto [pollsubid=" + pollsubid + ", pollid=" + pollid + ", answer=" + answer + ", account="
				+ account + "]";
	}
	
}
