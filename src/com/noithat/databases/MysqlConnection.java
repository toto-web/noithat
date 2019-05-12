package com.noithat.databases;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.noithat.constant.ErrorCode;

public class MysqlConnection {
	public MysqlConnection() {

	}

	public boolean insert(Object obj) {
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		try {
			session.beginTransaction();
			session.save(obj);
			session.getTransaction().commit();
			session.close();
			HibernateUtil.putConfigSessionFactory(factory);
			return true;
		} catch (Exception e) {
			session.close();
			HibernateUtil.putConfigSessionFactory(factory);
			e.printStackTrace();
			return false;
		}
	}
	
	@SuppressWarnings("unchecked")
	public <T> boolean update(Class<T> clazz, T obj) {
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		session.update(obj);
		session.getTransaction().commit();
		session.close();
		HibernateUtil.putConfigSessionFactory(factory);
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public <T> List<T> getListAll(Class<T> clazz)
	{
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		Criteria ctr = session.createCriteria(clazz);
		List<T> result = new ArrayList<T>();
		try{
			result = (List<T>) ctr.list();
		}catch(Exception e){
			e.printStackTrace();
		}
		session.close();
		HibernateUtil.putConfigSessionFactory(factory);
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public <T> List<T> getListPaging(Class<T> clazz, int start, int max)
	{
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		Criteria ctr = session.createCriteria(clazz);
		ctr.setFirstResult(start);
		ctr.setMaxResults(max);
		List<T> result = new ArrayList<T>();
		try{
			result = (List<T>) ctr.list();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		session.close();
		HibernateUtil.putConfigSessionFactory(factory);
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public <T> boolean delete(Class<T> clazz, Serializable id) {
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		T t = (T) session.get(clazz, id);
		boolean rs;
		if (t != null) {
			session.delete(t);
			rs = true;
		} else
			rs = false;
		session.getTransaction().commit();
		session.close();
		HibernateUtil.putConfigSessionFactory(factory);
		return rs;
	}
	
	@SuppressWarnings("unchecked")
	public <T> T get(Class<T> clazz, Serializable id){
//		Session session = HibernateUtil.getSessionFactory("hibernate.cfg.xml").openSession();
		SessionFactory factory = HibernateUtil.popSessionFactory();
		Session session = factory.openSession();
		Transaction tx = null;
		T t = null;
		try{
			tx = session.beginTransaction();
			t = (T) session.get(clazz, id);
		}catch (Exception e) {
			if(tx != null){
				tx.rollback();
			}
		}
		session.close();
		HibernateUtil.putConfigSessionFactory(factory);
		return t;
	}
}
