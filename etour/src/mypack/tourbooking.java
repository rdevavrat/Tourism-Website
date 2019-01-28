package mypack;

import javax.persistence.Id;

public class tourbooking {
	 private int tourref_tourid;
	 private int bookingid;
	 
	public int getTourref_tourid() {
		return tourref_tourid;
	}
	public void setTourref_tourid(int tourref_tourid) {
		this.tourref_tourid = tourref_tourid;
	}
	
	@Id
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
}
