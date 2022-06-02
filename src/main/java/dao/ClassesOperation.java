package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Classes;
import bean.Student;
import helper.FactoryProvider;

public class ClassesOperation implements ClassesDeclaration {
	Session s = FactoryProvider.getFactory().openSession();

	public long insertClasses(Classes cl) {
		Transaction tx = s.beginTransaction();
		long l = (Long) s.save(cl);
		tx.commit();
		s.close();
		if (l >= 0) {
			return 1;
		} else {
			return 0;
		}
	}

	public long updateClasses(long id, Classes cl) {
		Transaction tx = s.beginTransaction();
		cl.setBatchId(id);
		try {
			s.update(cl);
			tx.commit();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public boolean deleteClasses(long id) {
		Transaction tx = s.beginTransaction();
		Classes cl = new Classes();
		cl.setBatchId(id);
		try {
			s.delete(cl);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Classes selectClasses(long id) {
		Classes cl = (Classes) s.get(Classes.class, id);
		if (cl != null) {
			return cl;
		}
		return null;
	}

	public List<Classes> selectAllClasses() {
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from Classes");
		List<Classes> list = q.getResultList();
		if (list.size() > 0) {
			return list;
		}
		return null;
	}

}
