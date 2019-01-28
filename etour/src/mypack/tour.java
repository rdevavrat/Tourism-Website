package mypack;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="tour")
public class tour implements Serializable{

	private int tourid;
	private String tourname;
	private double cost;
	private String imagepath;
	private Set<category> categoryref;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
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
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	
	@OneToMany(cascade=CascadeType.ALL, targetEntity=category.class,fetch=FetchType.EAGER)
	@JoinTable(name="homeid")
	public Set<category> getCategoryref() {
		return categoryref;
	}
	public void setCategoryref(Set<category> categoryref) {
		this.categoryref = categoryref;
	}
	
	
	@Override
	public String toString() {
		return "tour [tourid=" + tourid + ", tourname=" + tourname + ", cost="
				+ cost + ", imagepath=" + imagepath + ", categoryref="
				+ categoryref + "]";
	}
	
	

}
