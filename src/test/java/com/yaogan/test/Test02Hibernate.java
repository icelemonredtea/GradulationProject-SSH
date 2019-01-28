package com.yaogan.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.yaogan.domain.Picture;

/**
 * 测试hibernate独立运行
 * @author ASUS
 *
 */
public class Test02Hibernate {

	public static void main(String[] args) {
		
		Picture picture = new Picture();
		picture.setMethod("18484");
		
		Configuration configuration = new Configuration();
		configuration.configure();
		
		SessionFactory sFactory = configuration.buildSessionFactory();
		Session session = sFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		
		session.save(picture);
		
		tx.commit();
		
		sFactory.close();

	}

}
