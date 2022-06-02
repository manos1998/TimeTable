package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Subject;
import helper.FactoryProvider;

public class SubjectOperation implements SubjectDeclaration {
	Session s = FactoryProvider.getFactory().openSession();
	
	public long insertSubject(Subject sub) {
		Transaction tx = s.beginTransaction();
		long l = (Long) s.save(sub);
		tx.commit();
		s.close();
		if (l >= 0) {
			return 1;
		} else {
			return 0;
		}
	}

	public long updateSubject(long id, Subject sub) {
		Transaction tx = s.beginTransaction();
		sub.setSubjectId(id);
		try {
			s.update(sub);
			tx.commit();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public boolean deleteSubject(long id) {
		Transaction tx = s.beginTransaction();
		Subject sub = new Subject();
		sub.setSubjectId(id);
		try {
			s.delete(sub);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Subject selectSubject(long id) {
		Subject sub = (Subject) s.get(Subject.class, id);
		if (sub != null) {
			return sub;
		}
		return null;
	}

	public List<Subject> selectAllSubject() {
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from Subject");
		List<Subject> list = q.getResultList();
		if (list.size() > 0) {
			return list;
		}
		return null;
	}

}
