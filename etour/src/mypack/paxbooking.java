package mypack;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="paxbooking")
public class paxbooking {

	private int paxdetailref_paxid;
	private int booking_bookingid;
	@Id
	public int getPaxdetailref_paxid() {
		return paxdetailref_paxid;
	}
	public void setPaxdetailref_paxid(int paxdetailref_paxid) {
		this.paxdetailref_paxid = paxdetailref_paxid;
	}
	

	public int getBooking_bookingid() {
		return booking_bookingid;
	}
	public void setBooking_bookingid(int booking_bookingid) {
		this.booking_bookingid = booking_bookingid;
	}
}
