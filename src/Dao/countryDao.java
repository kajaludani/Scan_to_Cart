package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.countryVo;

public class countryDao {
	
	public void insertCountry(countryVo countryvo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(countryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	
	public List searchCountry(countryVo countryvo) {
		// TODO Auto-generated method stub
		List l = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from countryVo");
			l=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return l;	
	}
		// TODO Auto-generated method stub
		


	public List editCountry(countryVo countryvo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Query a=session.createQuery("from countryVo where countryId='"+countryvo.getCountryId()+"'");
		List ls=a.list();
		
		return ls;
		
	}

	public void updateCountry(countryVo countryvo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(countryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}
}

