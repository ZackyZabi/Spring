package com.css.corp.project.dao;

import java.util.List;

import com.css.corp.project.domain.TimeSheet;

public interface TimeSheetDao {
	
	public List<TimeSheet> getAllData(int e_id,String checkin_Date,String checkout_Date);

}
