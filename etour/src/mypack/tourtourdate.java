package mypack;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tourtourdate")
public class tourtourdate {

	int tourref_tourid;
	int dateid;
	
	
	public int getTourref_tourid() {
		return tourref_tourid;
	}
	public void setTourref_tourid(int tourref_tourid) {
		this.tourref_tourid = tourref_tourid;
	}
	
	@Id
	public int getDateid() {
		return dateid;
	}
	public void setDateid(int dateid) {
		this.dateid = dateid;
	}
	
}
