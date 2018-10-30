package cycle.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cycle.dao.CourseDao;
import cycle.model.CourseDto;

@Component
public class CourseDaoImpl implements CourseDao {
	
	@Autowired
	SqlSession sqlSession;	// SqlSession sqlSession = new SqlSession();
	
	private String namespace = "Course."; 

	

	@Override
	public boolean submitCourse(CourseDto dto) {
		int n = sqlSession.insert(namespace + "submitCourse", dto);				
		return n>0?true:false;
	}

	@Override
	public List<CourseDto> getCourseSugggestion() {
		List<CourseDto> list = sqlSession.selectList(namespace + "getCourseSuggestion");
		return list;
	}

	@Override
	public CourseDto getCouseDetail(int seq) {
		CourseDto dto = sqlSession.selectOne(namespace + "getCourseDetail", seq);
		return dto;
	}

	public void delete(int seq) {
		sqlSession.selectOne(namespace + "delCourseDetail", seq);
	}

	@Override
	public void confirm(CourseDto dto) {
		sqlSession.insert(namespace + "confirmCourse", dto);				
		
	}

	@Override
	public List<CourseDto> getMemberCourseList() {
		List<CourseDto> list = sqlSession.selectList(namespace + "getMemberCourseList");
		return list;
	}

	@Override
	public CourseDto getMemberCouseDetail(int seq) {
		CourseDto dto = sqlSession.selectOne(namespace + "getMemberCourseDetail", seq);
		return dto;
	}
	
	

}
