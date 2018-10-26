package cycle.Service;

import cycle.model.PdsDto;

public interface pdsService {
	
	public void reply(PdsDto dto) throws Exception;

	public PdsDto getPds(int seq) throws Exception;
	

}
