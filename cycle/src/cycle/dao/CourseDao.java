package cycle.dao;

import java.util.List;

import cycle.model.CourseDto;

public interface CourseDao {
	
	public boolean submitCourse(CourseDto dto);
	
	public List<CourseDto> getCourseSugggestion();
	
	public CourseDto getCouseDetail(int seq);

}
