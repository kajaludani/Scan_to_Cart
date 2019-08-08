package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.loginVo;

public class loginDao {
	public void insertLogin(loginVo loginvo) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();

			session.save(loginvo);

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}

	}

	public String getPassword(loginVo loginVo) {
		List<loginVo> l = new ArrayList();

		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();

			Query q = session.createQuery("from loginVo where email='"+loginVo.getEmail()+"'");
			l = q.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l.get(0).getPassword();
	}
}
