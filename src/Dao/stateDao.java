package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.stateVo;

public class stateDao {
	
	public void insertState(stateVo statevo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(statevo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	
	public List searchState(stateVo statevo) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from stateVo where stateStatus='Active'");
			ls=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;	
	}
		


	public void deleteState(stateVo statevo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query a=session.createQuery("update stateVo set stateStatus='Deactive' where stateId='"+statevo.getStateId()+"'");
		a.executeUpdate();
		tr.commit();
		
	}

	public void updateState(stateVo statevo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(statevo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}
	

	public List editState(stateVo statevo) {
		// TODO Auto-generated method stub
		
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from stateVo where stateId='"+statevo.getStateId()+"'");
			ls=q.list();
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;	
	}


	
}

