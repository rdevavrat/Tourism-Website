package mypack;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="tourdate")
public class tourdate implements Serializable{

	int dateid;
	tour tourref;
	Date arrivaldate;
	Date departuredate;
	int noofdays;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getDateid() {
		return dateid;
	}
	public void setDateid(int dateid) {
		this.dateid = dateid;
	}
	
	@ManyToOne(cascade=CascadeType.ALL ,targetEntity=tour.class,fetch=FetchType.EAGER)
	@JoinTable(name="tourtourdate")
	public tour getTourref() {
		return tourref;
	}
	public void setTourref(tour tourref) {
		this.tourref = tourref;
	}
	public Date getArrivaldate() {
		return arrivaldate;
	}
	public void setArrivaldate(Date arrivaldate) {
		this.arrivaldate = arrivaldate;
	}
	public Date getDeparturedate() {
		return departuredate;
	}
	public void setDeparturedate(Date departuredate) {
		this.departuredate = departuredate;
	}
	public int getNoofdays() {
		return noofdays;
	}
	public void setNoofdays(int noofdays) {
		this.noofdays = noofdays;
	}
}
