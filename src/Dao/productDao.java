package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Vo.FileVO;
import Vo.loginVo;
import Vo.productVo;
import Vo.wishlistVo;

public class productDao {
	
	public void insertProduct(productVo productvo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(productvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	
	public List searchProduct(productVo productvo) {
		// TODO Auto-generated method stub
		List l = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			
			
			Query q=session.createQuery("from productVo where productStatus='Active'");
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
		


	public List editProduct(productVo productvo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Query a=session.createQuery("from productVo where productId='"+productvo.getProductId()+"'");
		List ls=a.list();
		
		return ls;
		
	}

	public void updateProduct(productVo productvo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(productvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}

	public void deleteProduct(productVo productvo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query a=session.createQuery("update productVo set productStatus='Deactive' where productId='"+productvo.getProductId()+"'");
		a.executeUpdate();
		tr.commit();
	}

	public void insertAttachment(FileVO attechmentVO) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(attechmentVO);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}

	public void insertWishlist(wishlistVo wishlistVo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(wishlistVo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	}

	public List searchwishlist(loginVo vo) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
		
			Query q=session.createQuery("from wishlistVo where loginVo= '"+vo.getLoginId()+"'");
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

