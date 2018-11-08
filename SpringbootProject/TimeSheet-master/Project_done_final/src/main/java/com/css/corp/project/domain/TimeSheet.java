package com.css.corp.project.domain;

import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;



@Entity
@Table
public class TimeSheet {
	@Column
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	@ManyToOne
    @JoinColumn(name = "User_eid")
	private User emp_id;
	@Temporal(TemporalType.DATE)
	private Date checkinDate;
	@Temporal(TemporalType.TIMESTAMP)
	private Date  checkinTime;
	@Temporal(TemporalType.DATE)
	private Date checkoutDate;
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkoutTime;
	@Column
	private int Totalworkhours;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	
	public User getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(User emp_id) {
		this.emp_id = emp_id;
	}
	public Date getCheckinDate() {
		return checkinDate;
	}
	public void setCheckinDate(Date checkinDate) {
		this.checkinDate = checkinDate;
	}
	public Date getCheckinTime() {
		return checkinTime;
	}
	public void setCheckinTime(Date Date) {
		this.checkinTime = checkinTime;
	}
	public Date getCheckoutDate() {
		return checkoutDate;
	}
	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}
	public Date getCheckoutTime() {
		return checkoutTime;
	}
	public void setCheckoutTime(Date checkoutTime) {
		this.checkoutTime = checkoutTime;
	}
	public int getTotalworkhours() {
		return Totalworkhours;
	}
	public void setTotalworkhours(int totalworkhours) {
		Totalworkhours = totalworkhours;
	}

	public TimeSheet() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "TimeSheet [pid=" + pid + ", emp_id=" + emp_id + ", checkinDate=" + checkinDate + ", checkinTime="
				+ checkinTime + ", checkoutDate=" + checkoutDate + ", checkoutTime=" + checkoutTime
				+ ", Totalworkhours=" + Totalworkhours + "]";
	}
	
	
}
