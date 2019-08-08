package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.FileVO;
import Vo.productVo;

public class viewProductDao {
	
	public List searchProduct(FileVO filevo) {
		// TODO Auto-generated method stub
		List l = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from FileVO");
			l=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return l;	
	}

	public List searchProductbyCategory(productVo vo) {
		// TODO Auto-generated method stub
		List l = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from productVo where categoryvo='"+vo.getCategoryvo().getCategoryId()+"'");
			l=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return l;	
	}

}