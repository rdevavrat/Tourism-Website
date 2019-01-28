package mypack;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tourcost")
public class tourcost implements Serializable{

	int tourcostref_tourid;
	int costid;
	
	
	public int getTourcostref_tourid() {
		return tourcostref_tourid;
	}
	public void setTourcostref_tourid(int tourcostref_tourid) {
		this.tourcostref_tourid = tourcostref_tourid;
	}
	@Id
	public int getCostid() {
		return costid;
	}
	public void setCostid(int costid) {
		this.costid = costid;
	}
}
