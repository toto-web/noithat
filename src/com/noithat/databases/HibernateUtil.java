package com.noithat.databases;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static int MAX_CONFIG_CONNECTIONS = 500;

	private static int CURRENT_CONFIG_CONNECTION = 0;
	
	private static ArrayList<SessionFactory> configPool = new ArrayList<>();
	
	private static SessionFactory buildSessionFactory() {
		try {
			return new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static SessionFactory popSessionFactory() {
		if(configPool.size() > 0)
		{
			
			SessionFactory sf = configPool.get(0);
			configPool.remove(0);
			CURRENT_CONFIG_CONNECTION ++;
			return sf;
		}
		else if(CURRENT_CONFIG_CONNECTION < MAX_CONFIG_CONNECTIONS)
		{
			SessionFactory sf = buildSessionFactory();
			CURRENT_CONFIG_CONNECTION++;
			return sf;
		}
		else {
			System.out.println("MAX CONFIG CONNECTION");
		}
		return null;
	}

	
	public static void putConfigSessionFactory(SessionFactory sf) {
		configPool.add(sf);
		CURRENT_CONFIG_CONNECTION--;
	}

	public static void emptyConfigPool() {
		while (configPool.size() > 0) {
			configPool.remove(0);
		}
		CURRENT_CONFIG_CONNECTION = 0;
	}


}