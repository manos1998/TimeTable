package dao;

import java.util.List;

import bean.Subject;

public interface SubjectDeclaration {
	public long insertSubject(Subject sub);
	public long updateSubject(long id,Subject sub);
	public boolean deleteSubject(long id);
	public Subject selectSubject(long id);
	public List<Subject> selectAllSubject();
}