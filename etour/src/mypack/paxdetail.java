package mypack;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="paxdetail")
public class paxdetail implements Serializable {

	 private static final long serialVersionUID = 1L;
	 
	private int paxid;
	private String name;
	private int age;
	private String gender;

	private String beddet;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getPaxid() {
		return paxid;
	}
	public void setPaxid(int paxid) {
		this.paxid = paxid;
	}
	

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getBeddet() {
		return beddet;
	}
	public void setBeddet(String beddet) {
		this.beddet = beddet;
	}
	@Override
	public String toString() {
		return "paxdetail [paxid=" + paxid + ", name=" + name + ", age=" + age
				+ ", gender=" + gender + ", dob=" + ", cost=" 
				;
	}
	
	
	
}
