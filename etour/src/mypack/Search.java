package mypack;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Search implements Serializable{

	public Search(int tourid, String tourname, Double cost, Date arrivaldate,
			Date departuredate) {
		super();
		this.tourid = tourid;
		this.tourname = tourname;
		this.cost = cost;
		this.arrivaldate = arrivaldate;
		this.departuredate = departuredate;
	}
	int tourid;
	String tourname;
	Double cost;
	Date arrivaldate;
	Date departuredate;
	public int getTourid() {
		return tourid;
	}
	public void setTourid(int tourid) {
		this.tourid = tourid;
	}
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	
	@DateTimeFormat(pattern="dd-mm-yyyy")
	public Date getArrivaldate() {
		return arrivaldate;
	}
	public void setArrivaldate(Date arrivaldate) {
		this.arrivaldate = arrivaldate;
	}
	
	@DateTimeFormat(pattern="dd-mm-yyyy")
	public Date getDeparturedate() {
		return departuredate;
	}
	public void setDeparturedate(Date departuredate) {
		this.departuredate = departuredate;
	}
}
