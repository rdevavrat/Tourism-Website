package mypack;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class itinerarytour implements Serializable{
	private int tourref_tourid;
	private int itineraryid;
	/**
	 * @return the tourref_tourid
	 */
	
	@Id
	public int getTourref_tourid() {
		return tourref_tourid;
	}
	/**
	 * @param tourref_tourid the tourref_tourid to set
	 */
	public void setTourref_tourid(int tourref_tourid) {
		this.tourref_tourid = tourref_tourid;
	}
	/**
	 * @return the itineraryid
	 */
	public int getItineraryid() {
		return itineraryid;
	}
	/**
	 * @param itineraryid the itineraryid to set
	 */
	public void setItineraryid(int itineraryid) {
		this.itineraryid = itineraryid;
	}
	

}
