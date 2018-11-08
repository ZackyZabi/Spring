package com.css.corp.epmo.dao;

import java.util.List;

import com.css.corp.epmo.model.TimeSheet;

public interface TimeSheetDao {
	
	public List<TimeSheet> getAllData(int e_id,String checkin_Date,String checkout_Date);

}
