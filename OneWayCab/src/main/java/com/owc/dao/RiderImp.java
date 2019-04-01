package com.owc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.owc.model.Customers;
import com.owc.model.Riders;
import com.owc.model.RouteAndFare;
import com.owc.model.Users;

public class RiderImp {
	
public void saveRiderDetails(Riders r){
    	
		SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		
		session.save(r);
		
		session.getTransaction().commit();
		session.close();
		sessionFactory.close();
		
	}
public List<Riders> getRidersDetails(){
	
	SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	
	Query query= session.createQuery("from Riders");
	
	List<Riders> cab= (List<Riders>) query.list();
	
	session.getTransaction().commit();
	session.close();
	sessionFactory.close();
	
	cab.get(0).getPhoneNo();
	
	return cab;
	
}


public void deleteRider(int phoneNo){
	
	SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	
	session.createQuery("DELETE FROM Riders WHERE phoneNo = "+phoneNo).executeUpdate();
	
	session.getTransaction().commit();
	session.close();
	sessionFactory.close();
		
    }

public Riders getRider(String phoneNo){
	
	SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	
	Riders cab= session.get(Riders.class, phoneNo);
	
	session.getTransaction().commit();
	session.close();
	sessionFactory.close();
	
	return cab;
		
    }

public void updateRider(Riders c){
	
	SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	
	session.update(c);
	
	session.getTransaction().commit();
	session.close();
	sessionFactory.close();
		
    }

public List<Riders> getBookingStatus(String phoneNo){
	
	SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	session.beginTransaction();

    Query query= session.createQuery("from Riders where phoneNo = ? ");
    query.setString(0, phoneNo);
	
	List<Riders> bookingList= (List<Riders>) query.list();
	
	session.getTransaction().commit();
	session.close();
	sessionFactory.close();

	return bookingList;
	
}

}
