package test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConfiguration {
	
	public static Session getSession(){
		
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory factory = cfg.buildSessionFactory();
		
		Session session = factory.openSession();
				
		return session;
		
		
	}
	
	

	public static void main(String[] args) {
		getSession();
		System.out.println("success!!");

	}

}
