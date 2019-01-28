package mypack;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cost")
public class cost implements Serializable{

	private Integer costid;
	private tour tourcostref;
	private Double costofsinglebed;
	private Double costoftwinsharing;
	private Double costofchildwithbed;
	private Double costofchildwithoutbed;
	private Double costaddition;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer getCostid() {
		return costid;
	}
	public void setCostid(Integer costid) {
		this.costid = costid;
	}
	
	@OneToOne(cascade=CascadeType.ALL ,targetEntity=tour.class,fetch=FetchType.EAGER)
	@JoinTable(name="tourcost")
	public tour getTourcostref() {
		return tourcostref;
	}
	public void setTourcostref(tour tourcostref) {
		this.tourcostref = tourcostref;
	}
	public Double getCostofsinglebed() {
		return costofsinglebed;
	}
	public void setCostofsinglebed(Double costofsinglebed) {
		this.costofsinglebed = costofsinglebed;
	}
	public Double getCostoftwinsharing() {
		return costoftwinsharing;
	}
	public void setCostoftwinsharing(Double costoftwinsharing) {
		this.costoftwinsharing = costoftwinsharing;
	}
	public Double getCostofchildwithbed() {
		return costofchildwithbed;
	}
	public void setCostofchildwithbed(Double costofchildwithbed) {
		this.costofchildwithbed = costofchildwithbed;
	}
	public Double getCostofchildwithoutbed() {
		return costofchildwithoutbed;
	}
	public void setCostofchildwithoutbed(Double costofchildwithoutbed) {
		this.costofchildwithoutbed = costofchildwithoutbed;
	}
	public Double getCostaddition() {
		return costaddition;
	}
	public void setCostaddition(Double costaddition) {
		this.costaddition = costaddition;
	}
	
	
}
