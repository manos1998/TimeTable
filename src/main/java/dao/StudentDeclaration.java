package dao;

import java.util.List;

import bean.Student;

public interface StudentDeclaration {
	public long insertStudent(Student st);
	public long updateStudent(long id,Student st);
	public boolean deleteStudent(long id);
	public Student selectStudent(long id);
	public List<Student> selectAllStudent();
}