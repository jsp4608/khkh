package cycle.dao;

import cycle.model.MemberDto;

public interface MemberDao {

	public boolean addMember(MemberDto mem) throws Exception;
	
	public MemberDto login(MemberDto mem) throws Exception;
	
	public int getID(MemberDto mem);

}
