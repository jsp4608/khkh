package cycle.Serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cycle.Service.pdsService;
import cycle.dao.PdsDao;
import cycle.model.PdsDto;


@Component
public class pdsServiceimpl implements pdsService {
	
	@Autowired
	PdsDao PdsDao;

	@Override
	public void reply(PdsDto dto) throws Exception {
	int result = PdsDao.replyPdsInsert(dto);
	dto.setSeq(result);
	boolean upd = PdsDao.replyPdsUpdate(dto);

	}

	@Override
	public PdsDto getPds(int seq) throws Exception {
		return PdsDao.getPds(seq);
	}

}
