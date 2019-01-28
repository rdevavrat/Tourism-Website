package mypack;


import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="itinerary")
public class itinerary implements Serializable{

	private int itineraryid;
	private tour tourref;
	int daynumber;
	public int getDaynumber() {
		return daynumber;
	}
	public void setDaynumber(int daynumber) {
		this.daynumber = daynumber;
	}
	String daysdescription;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getItineraryid() {
		return itineraryid;
	}
	public void setItineraryid(int itineraryid) {
		this.itineraryid = itineraryid;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinTable(name="itinerarytour")
	public tour getTourref() {
		return tourref;
	}
	public void setTourref(tour tourref) {
		this.tourref = tourref;
	}
	public String getDaysdescription() {
		return daysdescription;
	}
	public void setDaysdescription(String daysdescription) {
		this.daysdescription = daysdescription;
	}
	
	
}
