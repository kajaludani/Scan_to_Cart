package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import Dao.subcategoryDao;
import Vo.categoryVo;
import Vo.subcategoryVo;

public class subcategoryDao {
	public void insertsubcategory(subcategoryVo subcategoryvo)
	{		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(subcategoryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}
	
	}
	public List searchSubCategory(subcategoryVo subcategoryvo){
		List ls = new ArrayList();

		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
		
			Query q=session.createQuery("from subcategoryVo where subcategoryStatus='Active'");
			ls=q.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
		
	}

	public void updatesubcategory(subcategoryVo subcategoryvo) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(subcategoryvo);
			
			tr.commit();
		}
			catch(Exception z)
			{
				z.printStackTrace();
			}

	}

	public void deleteSubCategory(subcategoryVo subcategoryvo) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
		Session	session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query a=session.createQuery("update subcategoryVo set subcategoryStatus='Deactive' where subcategoryId='"+subcategoryvo.getSubcategoryId()+"'");
		a.executeUpdate();
		tr.commit();
	}
public List editSubCategory(subcategoryVo subcategoryvo) {
	// TODO Auto-generated method stub
	List ls = new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("from subcategoryVo where subcategoryId='"+subcategoryvo.getSubcategoryId()+"'");
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
