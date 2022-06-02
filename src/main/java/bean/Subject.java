package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Subject {
	@Id
	@GeneratedValue
	private long SubjectId;
	private String SubjectName;
	private String TeacherName;
	public long getSubjectId() {
		return SubjectId;
	}
	public void setSubjectId(long subjectId) {
		SubjectId = subjectId;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	public String getTeacherName() {
		return TeacherName;
	}
	public void setTeacherName(String teacherName) {
		TeacherName = teacherName;
	}
	public Subject(String subjectName, String teacherName) {
		super();
		SubjectName = subjectName;
		TeacherName = teacherName;
	}
	public Subject() {
		super();
		// TODO Auto-generated constructor stub
	}
}
