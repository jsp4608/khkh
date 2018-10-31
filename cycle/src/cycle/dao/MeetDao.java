package cycle.dao;

import java.util.List;

import cycle.model.MeetJoinDto;
import cycle.model.MeetParam;
import cycle.model.MeetPollDto;
import cycle.model.PollBean;
import cycle.model.PollSubDto;
import cycle.model.ReplyDto;
import cycle.model.Voter;


public interface MeetDao {

	// boolean writeMeet(MeetDto meet) throws Exception;
	
	// public List<MeetDto> getMeetList() throws Exception;
	
	// List<MeetDto> getMeetPagingList(MeetParam param) throws Exception;
	
	int getMeetCount(MeetParam param) throws Exception;
	
	public MeetPollDto getMeetSeq(int seq) throws Exception;
	
	public void updateMeet(MeetPollDto meet) throws Exception;
	
	public void deleteMeet(int seq) throws Exception;
	
	List<MeetPollDto> getMeetPagingList(MeetParam param) throws Exception;
	
	int isVote(Voter voter);
	
	void makeMeet(MeetPollDto meet);				// 투표 문항

	void makePollSub(PollSubDto pollsub);			// 보기들

	MeetPollDto getMeet(MeetPollDto meet);
	
	void meetJoin(MeetJoinDto join);
	
	void increaseMemcnt(int seq);
	
	List<PollSubDto> getPollSubList(MeetPollDto meet);
	
	PollSubDto getPollSubListSeq(int seq);
	
	void updatePollSub(PollSubDto pollsub);
	
	public boolean updateDelPoll(MeetPollDto meet);
	
	void deletePollCount(Voter voter);
	
	void dcAccount(PollSubDto pollsub);
	
	void dcPolltotal(MeetPollDto meet);
	
	List<ReplyDto> getRepList(int seq);
	
	void insertRep(ReplyDto rep);
	
	void pollingVote(Voter voter);
	void pollingSub(Voter voter);
	void pollingPoll(Voter voter);
	
	void deleteRep(int seq);
}
