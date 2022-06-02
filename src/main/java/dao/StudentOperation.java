package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Student;
import helper.FactoryProvider;

public class StudentOperation implements StudentDeclaration {
	Session s = FactoryProvider.getFactory().openSession();

	public long insertStudent(Student st) {
		Transaction tx = s.beginTransaction();
		long l = (Long) s.save(st);
		tx.commit();
		s.close();
		if (l >= 0) {
			return 1;
		} else {
			return 0;
		}
	}

	public long updateStudent(long id, Student st) {
		Transaction tx = s.beginTransaction();
		st.setStudentId(id);
		try {
			s.update(st);
			tx.commit();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public boolean deleteStudent(long id) {
		Transaction tx = s.beginTransaction();
		Student st = new Student();
		st.setStudentId(id);
		try {
			s.delete(st);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Student selectStudent(long id) {
		Student st = (Student) s.get(Student.class, id);
		if (st != null) {
			return st;
		}
		return null;
	}

	public List<Student> selectAllStudent() {
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from Student");
		List<Student> list = q.getResultList();
		if (list.size() > 0) {
			return list;
		}
		return null;
	}
}
