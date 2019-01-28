package mypack;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name="booking")
public class booking implements Serializable {

	 private static final long serialVersionUID = 1L;
	 
	private Integer bookingid;
	private int userdetailref;
	private Collection <paxdetail> paxdetailref=new ArrayList<paxdetail>();
	private int tourref;
	private Integer noofperson;
	private double payment;
	private String dateofdeparture;
	

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer getBookingid() {
		return bookingid;
	}
	
	public void setBookingid(Integer bookingid) {
		this.bookingid = bookingid;
	}
	
	
	
	public int getNoofperson() {
		return noofperson;
	}
	
	
	public Integer getTourref() {
		return tourref;
	}

	public void setTourref(Integer tourref) {
		this.tourref = tourref;
	}

	public void setNoofperson(int noofperson) {
		this.noofperson = noofperson;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	
	public String getDateofdeparture() {
		return dateofdeparture;
	}
	public void setDateofdeparture(String dateofdeparture) {
		this.dateofdeparture = dateofdeparture;
	}

	
	public int getUserdetailref() {
		return userdetailref;
	}

	public void setUserdetailref(int userdetailref) {
		this.userdetailref = userdetailref;
	}
	
	@OneToMany(cascade=CascadeType.ALL,targetEntity=paxdetail.class,fetch=FetchType.EAGER)
	@JoinTable(name="paxbooking")
	public Collection<paxdetail> getPaxdetailref() {
		return paxdetailref;
	}
	public void setPaxdetailref(Collection<paxdetail> paxdetailref) {
		this.paxdetailref = paxdetailref;
	}
	
	  @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (bookingid != null ? bookingid.hashCode() : 0);
	        return hash;
	    }
   
	
}
