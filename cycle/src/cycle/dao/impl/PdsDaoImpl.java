package cycle.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sun.org.apache.xml.internal.utils.NameSpace;

import cycle.dao.PdsDao;
import cycle.model.PdsDto;
import cycle.model.PdsParam;

@Repository
public class PdsDaoImpl implements PdsDao {
	
	@Autowired
	SqlSession sqlSession;  /*	private SqlSessionTemplate sqlSession; */

	private String namspace = "Pds."; 
	

	@Override
	public List<PdsDto> getPdsList() {		
		return sqlSession.selectList(namspace + "getPdsList");
	}
	
	@Override
	public List<PdsDto> getPdsPagingList(PdsParam param) {
		return sqlSession.selectList(namspace + "getPdsPagingList", param);
	}

	@Override
	public int getPdsCount(PdsParam param) {
		int num = 0;
		num = sqlSession.selectOne(namspace + "getPdsCount", param);
		return num; 
	}

	//댓글
	@Override
	public boolean replyPdsUpdate(PdsDto dto) throws Exception {
		return sqlSession.update(namspace + "replyPdsUpdate", dto)>0?true:false;
	}
	//댓글
	@Override
	public int replyPdsInsert(PdsDto dto){
		
		System.out.println("dto:" + dto.toString());
		int seq = sqlSession.insert(namspace +"replyPdsInsert", dto);
		return seq;
	}

	@Override
	public void uploadPds(PdsDto dto) {
		sqlSession.insert(namspace + "uploadPds", dto);
	}

	@Override
	public PdsDto getPds(int seq) {		
		return sqlSession.selectOne(namspace + "getPds", seq);
	}

	@Override
	public boolean readcount(int seq) {
		int r = sqlSession.update(namspace + "readcount", seq);
		return r>0?true:false;
	}
	
	@Override
	public boolean downcount(int seq) {
		int n = sqlSession.update(namspace + "downcount", seq);
		return n>0? true:false;
	}

	@Override
	public void deletePds(PdsDto dto) {
		sqlSession.update(namspace + "deletePds", dto);
	}

	@Override
	public void updatePds(PdsDto dto) {
		sqlSession.update(namspace + "updatePds", dto);
	}	
	
	
	

}




