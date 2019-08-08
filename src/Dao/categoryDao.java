package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.categoryVo;
import Vo.stateVo;


public class categoryDao {
	public void insertCategory(categoryVo categoryvo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(categoryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	public List searchCategory(categoryVo categoryvo){
		List ls = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from categoryVo");
			ls=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
		
	}

	public void deleteCategory(categoryVo categoryvo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query a=session.createQuery("update categoryVo set categoryStatus='Deactive' where categoryId='"+categoryvo.getCategoryId()+"'");
		a.executeUpdate();
		tr.commit();
	}	
	public void updateCategory(categoryVo categoryvo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(categoryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}

	

public List editCategory(categoryVo categoryvo) {
	// TODO Auto-generated method stub
	List ls = new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("from categoryVo where categoryId='"+categoryvo.getCategoryId()+"'");
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

