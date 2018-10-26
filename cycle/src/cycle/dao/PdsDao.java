package cycle.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import cycle.model.PdsDto;
import cycle.model.PdsParam;

@Component
public interface PdsDao {
	
	List<PdsDto> getPdsList();
	List<PdsDto> getPdsPagingList(PdsParam param);
	
	int getPdsCount(PdsParam param);
	
	void uploadPds(PdsDto dto);
	
	//댓글
	boolean replyPdsUpdate(PdsDto dto) throws Exception;
	int replyPdsInsert(PdsDto dto) throws Exception;
	
	public PdsDto getPds(int seq);
	boolean readcount(int seq);
	boolean downcount(int seq);
	
	
	void deletePds(PdsDto dto);
	void updatePds(PdsDto dto);
}
