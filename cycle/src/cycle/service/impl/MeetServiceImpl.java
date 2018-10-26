package cycle.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cycle.dao.MeetDao;
import cycle.model.MeetParam;
import cycle.model.MeetPollDto;
import cycle.model.PollBean;
import cycle.model.PollSubDto;
import cycle.model.Voter;
import cycle.Service.MeetService;

@Service
public class MeetServiceImpl implements MeetService {

	@Autowired
	MeetDao meetDao;

	@Override
	public List<MeetPollDto> getMeetAllList(String id) throws Exception {

		MeetParam param = new MeetParam();

		int sn = param.getPageNumber();
		int start = (sn) * param.getRecordCountPerPage() + 1;
		int end = (sn + 1) * param.getRecordCountPerPage();

		param.setStart(start);
		param.setEnd(end);

		int totalRecordCount = meetDao.getMeetCount(param);
		List<MeetPollDto> mlist = meetDao.getMeetPagingList(param);

		List<MeetPollDto> mlist2 = new ArrayList<MeetPollDto>();

		for (MeetPollDto m : mlist) {

			int pollid = m.getPollid();

			int count = meetDao.isVote(new Voter(pollid, -1, id));

			if (count > 0) {
				m.setVote(true);
			} else {
				m.setVote(false);
			}

			mlist2.add(m);
		}
		return mlist2;
	}

	@Override
	public void makeMeet(PollBean pbean) {

		// 투표 질문
		/*
		 * MeetPollDto meet = new MeetPollDto(pbean.getId(), pbean.getTitle(),
		 * pbean.getSdate(), pbean.getEdate(), pbean.getItemcount(), 0);
		 * meetDao.makeMeet(meet);
		 */

		MeetPollDto meet = new MeetPollDto(pbean.getId(), pbean.getTitle(), pbean.getContent(), pbean.getSdate(),
				pbean.getEdate(), pbean.getMemcnt(), pbean.getDel(), pbean.getLocation(), pbean.getImg(),
				pbean.getItemcount(), 0);
		meetDao.makeMeet(meet);

		// 투표 보기
		int itemcount = pbean.getItemcount();
		String answer[] = pbean.getPollnum();

		for (int i = 0; i < itemcount; i++) {
			PollSubDto pollsub = new PollSubDto();
			pollsub.setAnswer(answer[i]);
			meetDao.makePollSub(pollsub);
		}

	}

	@Override
	public void updateMeet(PollBean pbean) throws Exception {

		MeetPollDto meet = new MeetPollDto(pbean.getPollid(), pbean.getTitle(), pbean.getContent(), pbean.getSdate(),
				pbean.getEdate(), pbean.getLocation(), pbean.getImg(), pbean.getItemcount(), 0);
		meetDao.updateMeet(meet);

		// 투표 보기
		int itemcount = pbean.getItemcount();
		// String answer[] = pbean.getPollnum();

		int[] pollidarr = new int[10];

		pollidarr[0] = pbean.getNum1();
		pollidarr[1] = pbean.getNum2();
		pollidarr[2] = pbean.getNum3();
		pollidarr[3] = pbean.getNum4();
		pollidarr[4] = pbean.getNum5();
		pollidarr[5] = pbean.getNum6();
		pollidarr[6] = pbean.getNum7();
		pollidarr[7] = pbean.getNum8();
		pollidarr[8] = pbean.getNum9();
		pollidarr[9] = pbean.getNum10();

		String[] answerarr = new String[10];

		answerarr[0] = pbean.getPoll1();
		answerarr[1] = pbean.getPoll2();
		answerarr[2] = pbean.getPoll3();
		answerarr[3] = pbean.getPoll4();
		answerarr[4] = pbean.getPoll5();
		answerarr[5] = pbean.getPoll6();
		answerarr[6] = pbean.getPoll7();
		answerarr[7] = pbean.getPoll8();
		answerarr[8] = pbean.getPoll9();
		answerarr[9] = pbean.getPoll10();

		for (int i = 0; i < itemcount; i++) {
			PollSubDto pollsub = new PollSubDto();
			pollsub.setPollsubid(pollidarr[i]);
			pollsub.setPollid(meet.getPollid());
			pollsub.setAnswer(answerarr[i]);

			meetDao.updatePollSub(pollsub);
		}

	}

	@Override
	public void polling(Voter voter) {
		meetDao.pollingVote(voter);
		meetDao.pollingSub(voter);
		meetDao.pollingPoll(voter);
	}

}
