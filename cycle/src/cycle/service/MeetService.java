package cycle.Service;

import java.util.List;

import cycle.model.MeetPollDto;
import cycle.model.PollBean;
import cycle.model.Voter;

public interface MeetService {

	public List<MeetPollDto> getMeetAllList(String id) throws Exception;
	
	public void makeMeet(PollBean pbean);
	
	public void updateMeet(PollBean pbean) throws Exception;
	
	public void polling(Voter voter);
	
}
