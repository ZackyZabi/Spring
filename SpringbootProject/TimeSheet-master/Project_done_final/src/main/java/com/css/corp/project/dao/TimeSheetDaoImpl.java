package com.css.corp.project.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.css.corp.project.domain.TimeSheet;


@Repository
public class TimeSheetDaoImpl implements TimeSheetDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<TimeSheet> getAllData(int e_id,String checkin_Date,String checkout_Date) {
		
		Session session = this.sessionFactory.getCurrentSession();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date frm=null;
		Date to=null;
		try {
			frm= sdf.parse(checkin_Date);
			to=sdf.parse(checkout_Date);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Invalid Date Format");
		}
		sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		
		System.out.println("checkin_Date" + frm + " --- " + to);
		Query query = session
				.createQuery("from TimeSheet t where t.pid=:eid AND t.checkinDate BETWEEN :checkInDate and :checkOutDate")
				.setString("checkInDate", sdf.format(frm)).setString("checkOutDate", sdf.format(to))
				.setInteger("eid", e_id);
		List<TimeSheet> timeSheet = query.list();
		System.out.println(timeSheet.isEmpty());
		System.out.println(timeSheet);
		return timeSheet ;
	}
}
