package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.cityVo;
import Vo.stateVo;

public class cityDao {
	
	public void insertcity(cityVo cityvo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(cityvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	public List searchCity(cityVo cityvo){
		List l = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from cityVo");
			l=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return l;
	}

	public List editState(stateVo statevo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Query a=session.createQuery("from stateVo where stateId='"+statevo.getStateId()+"'");
		List ls=a.list();
		
		return ls;
		
	}

	public void updatestate(stateVo statevo) {
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

	

public List editCity(cityVo cityvo) {
	// TODO Auto-generated method stub
	SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
	Session	session = sessionFactory.openSession();
	Query a=session.createQuery("from cityVo where cityId='"+cityvo.getCityId()+"'");
	List ls=a.list();
	
	return ls;
	
}

public void updatecity(cityVo cityvo) {
	// TODO Auto-generated method stub
	
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		
		Session session =sessionFactory.openSession();
		
		Transaction tr = session.beginTransaction();
		
		session.saveOrUpdate(cityvo);
		
		tr.commit();
	}
		catch(Exception z)
		{
			z.printStackTrace();
		}

}


}


