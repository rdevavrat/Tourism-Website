package mypack;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;



@Entity(name="userdetail")
public class userdetail implements Serializable{

	private	int userid;
	private String fname;
	private String mname;
	private String lname;
	private String email;
	private int flatno;
	private String address; 
	private String city;
	private int pincode;
	private String username;
	private String password;
	private Date dob;
	private int age;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	@NotEmpty(message="First name can not be empty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "First name must contain characters")
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Middle name must contain characters")
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	
	@NotEmpty(message="Last name can not be empty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Last name must contain characters")
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	@NotEmpty(message="Email can not be empty")
	@Email(message="Enter valid email address.")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@NotNull(message="Flat No. can not be empty")
	//@Pattern(regexp = "^[0-9]$", message = "Flat No. must contain digit. ")
	public int getFlatno() {
		return flatno;
	}
	public void setFlatno(Integer flatno) {
		this.flatno = flatno;
	}
	
	@NotEmpty(message="City can not be empty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "City must contain characters")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	@NotNull(message="Pincode can not be empty")
	//@Pattern(regexp = "^[0-9]{6}$", message = "Pin code must contain 6 digit.")
	public int getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	
	@NotEmpty(message="Username can not be empty")
	@Pattern(regexp = "^[a-z0-9_-]{3,15}$", message = "Enter valid username.")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@NotEmpty(message="Password can not be empty")
	@Pattern(regexp = "^.*(?=.{8,})(?=..*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$", message = "Enter valid password.")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@SuppressWarnings(value = { "unchecked" })
	@DateTimeFormat(pattern = "dd-mm-yyyy")
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	@NotNull(message="Age can not be empty")
	//@Pattern(regexp = "^[0-9]{3}$", message = "Enter valid age.")
	@Range(min=1,max=150,message="Enter valid age")
	public int getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	@NotEmpty(message="Enter address.")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
