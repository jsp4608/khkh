package cycle.dao;

import java.util.List;

import cycle.model.MeetDto;

public interface MeetDao {

	boolean writeMeet(MeetDto meet) throws Exception;
	
	public List<MeetDto> getMeetList() throws Exception;
	
	public MeetDto getMeet(int seq) throws Exception;
}
