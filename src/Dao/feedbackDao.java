package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.feedbackVo;

public class feedbackDao {
	
	public void insert(feedbackVo vo)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(vo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	}

	public List search(feedbackVo feedbackvo) {
		
		List list = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("from feedbackVo");
			list=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return list;
	}

	public void delete(feedbackVo feedbackvo) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.delete( feedbackvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
		// TODO Auto-generated method stub
		
	}

}
