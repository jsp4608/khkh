package cycle.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cycle.dao.MeetDao;
import cycle.model.MeetDto;

@Repository
public class MeetDaoImpl implements MeetDao {

	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "CycleMeet.";
	
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
	public MeetDto getMeet(int seq) throws Exception {
		return sqlSession.selectOne(namespace + "getMeet", seq);
	}

	
	
}
