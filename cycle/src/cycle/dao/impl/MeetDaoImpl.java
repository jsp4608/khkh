package cycle.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cycle.dao.MeetDao;
import cycle.model.MeetJoinDto;
import cycle.model.MeetParam;
import cycle.model.MeetPollDto;
import cycle.model.PollSubDto;
import cycle.model.ReplyDto;
import cycle.model.Voter;

@Repository
public class MeetDaoImpl implements MeetDao {

	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "CycleMeet.";
	
	/*
	@Override
	public boolean writeMeet(MeetDto meet) throws Exception {
		sqlSession.insert(namespace + "writeMeet", meet);
		return true;
	}

	@Override
	public List<MeetDto> getMeetList() throws Exception {
		List<MeetDto> list = sqlSession.selectList(namespace + "getMeetList");
		return list;
	}
	
	@Override
	public void updateMeet(MeetDto meet) throws Exception {
		sqlSession.update(namespace + "updateMeet", meet);
	}
	*/
	
	@Override
	public MeetPollDto getMeetSeq(int seq) throws Exception {
		return sqlSession.selectOne(namespace + "getMeetSeq", seq);
	}
	
	@Override
	public void updateMeet(MeetPollDto meet) throws Exception {
		sqlSession.update(namespace + "updateMeet", meet);
	}
	
	@Override
	public void updatePollSub(PollSubDto pollsub) {
		sqlSession.update(namespace + "updatePollSub", pollsub);
	}

	@Override
	public void deleteMeet(int seq) throws Exception {
		sqlSession.update(namespace + "deleteMeet", seq);
	}

	@Override
	public List<MeetPollDto> getMeetPagingList(MeetParam param) throws Exception {
		List<MeetPollDto> list = sqlSession.selectList(namespace + "getMeetPagingList", param);
		return list;
	}

	@Override
	public int getMeetCount(MeetParam param) throws Exception {
		int num = 0;
		num = sqlSession.selectOne(namespace + "getMeetCount", param);
		return num;
	}

	@Override
	public int isVote(Voter voter) {
		return sqlSession.selectOne(namespace + "isVote", voter);
	}
	
	@Override
	public void makeMeet(MeetPollDto meet) {
		sqlSession.insert(namespace + "makeMeet", meet);
	}

	@Override
	public void makePollSub(PollSubDto pollsub) {
		sqlSession.insert(namespace + "makePollSub", pollsub);
	}

	@Override
	public MeetPollDto getMeet(MeetPollDto meet) {
		return sqlSession.selectOne(namespace + "getMeet", meet);
	}

	@Override
	public List<PollSubDto> getPollSubList(MeetPollDto meet) {
		return sqlSession.selectList(namespace + "getPollSubList", meet);
	}

	@Override
	public PollSubDto getPollSubListSeq(int seq) {
		return sqlSession.selectOne(namespace + "getPollSubListSeq", seq);
	}

	@Override
	public void pollingVote(Voter voter) {
		sqlSession.insert(namespace + "pollingVote", voter);
	}

	@Override
	public void pollingSub(Voter voter) {
		sqlSession.update(namespace + "pollingSub", voter);
	}

	@Override
	public void pollingPoll(Voter voter) {
		sqlSession.update(namespace + "pollingPoll", voter);
	}

	@Override
	public void meetJoin(MeetJoinDto join) {
		sqlSession.insert(namespace + "meetJoin", join);
	}

	@Override
	public void increaseMemcnt(int seq) {	
		
		System.out.println("delete seq: " +seq);
		sqlSession.update(namespace + "increaseMemcnt", seq);
	}

	@Override
	public boolean updateDelPoll(MeetPollDto meet) {
		int result = sqlSession.update(namespace + "deletePollSub", meet);
		return result >0 ? true:false;
	}

	@Override
	public void deletePollCount(Voter voter) {
		sqlSession.delete(namespace + "deletePollCount", voter);
	}

	@Override
	public void dcAccount(PollSubDto pollsub) {
		sqlSession.update(namespace + "dcAccount", pollsub);
	}

	@Override
	public void dcPolltotal(MeetPollDto meet) {
		sqlSession.update(namespace + "dcPolltotal", meet);
	}

	@Override
	public List<ReplyDto> getRepList(int seq) {
		return sqlSession.selectList(namespace + "getRepList", seq);
	}

	@Override
	public void insertRep(ReplyDto rep) {
		sqlSession.insert(namespace + "insertRep", rep);
	}

	@Override
	public void deleteRep(int seq) {
		sqlSession.update(namespace + "deleteRep", seq);
	}

	
	
	

	
	
	
	
	
	
	
	
}
