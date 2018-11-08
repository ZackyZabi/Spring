package com.css.corp.epmo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.css.corp.epmo.dao.TimeSheetDao;
import com.css.corp.epmo.model.TimeSheet;


@Service
public class TimeSheetService {

	@Autowired
	TimeSheetDao timeSheetDao;
	
	@Transactional
	public List<TimeSheet> getAllData(int e_id,String checkin_Date,String checkout_Date) {
		return timeSheetDao.getAllData(e_id, checkin_Date, checkout_Date);
	}

	
}
