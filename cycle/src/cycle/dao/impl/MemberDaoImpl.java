package cycle.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cycle.dao.MemberDao;
import cycle.model.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "CycleMember.";
	
	@Override
	public boolean addMember(MemberDto mem) throws Exception {		
		int n = sqlSession.insert(namespace + "addMember", mem);				
		return n>0?true:false;
	}

	@Override
	public MemberDto login(MemberDto mem) throws Exception {		
		return sqlSession.selectOne(namespace + "login", mem);
	}

	@Override
	public int getID(MemberDto mem) {		
		return sqlSession.selectOne(namespace + "getID", mem);
	}

}
