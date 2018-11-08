package com.css.corp.epmo.model;

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
	private int id;
	@ManyToOne
    @JoinColumn(name = "Employee_eid")
	private Employee eid;
	@Temporal(TemporalType.DATE)
	private Date checkinDate;
	@Column
	@Convert(converter = Jsr310JpaConverters.LocalDateTimeConverter.class)
	private LocalTime  checkinTime;
	@Temporal(TemporalType.DATE)
	private Date checkoutDate;
	@Column
	@Convert(converter = Jsr310JpaConverters.LocalDateTimeConverter.class)
	private LocalTime checkoutTime;
	@Column
	private int Totalworkhours;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Employee getEid() {
		return eid;
	}
	public void setEid(Employee eid) {
		this.eid = eid;
	}
	public Date getCheckinDate() {
		return checkinDate;
	}
	public void setCheckinDate(Date checkinDate) {
		this.checkinDate = checkinDate;
	}
	public LocalTime getCheckinTime() {
		return checkinTime;
	}
	public void setCheckinTime(LocalTime checkinTime) {
		this.checkinTime = checkinTime;
	}
	public Date getCheckoutDate() {
		return checkoutDate;
	}
	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}
	public LocalTime getCheckoutTime() {
		return checkoutTime;
	}
	public void setCheckoutTime(LocalTime checkoutTime) {
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
		public TimeSheet(int id, Employee eid,Date checkinDate, LocalTime checkinTime, Date checkoutDate,
			LocalTime checkoutTime, int totalworkhours) {
		super();
		this.id = id;
		this.eid = eid;
		this.checkinDate = checkinDate;
		this.checkinTime = checkinTime;
		this.checkoutDate = checkoutDate;
		this.checkoutTime = checkoutTime;
		this.Totalworkhours = totalworkhours;
	}
	
}
