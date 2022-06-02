package dao;

import java.util.List;

import bean.Classes;

public interface ClassesDeclaration {
	public long insertClasses(Classes cl);
	public long updateClasses(long id,Classes cl);
	public boolean deleteClasses(long id);
	public Classes selectClasses(long id);
	public List<Classes> selectAllClasses();
}