package WFI.MAIT.hackathon.dto;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Farmer implements Serializable {

private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private long farmer_id;
@NotBlank(message="error! Phone Number Cannot be Blank")
private String phone_no;
@NotBlank(message="error! City  Cannot be Blank")
private String city;
private String district;
@NotNull(message="error! pincode number Cannot be Blank")
private Integer pincode;
@NotBlank(message="error! State  Cannot be Blank")
private String state;
@NotBlank(message="error! Address  Cannot be Blank")
private String address;
private String Longitude;
private String Latitude;
@JsonBackReference
@OneToMany(mappedBy = "farmer")
private List<Crop_Detail> crop_detail;
@JsonBackReference
@OneToMany(mappedBy = "farmer")
private List<BookedStorage> bookedStorage;
@NotBlank(message="error! First Name Cannot be Blank")
private String firstname;
@NotBlank(message="error! last name Cannot be Blank")
private String lastname;
@Column(unique = true,nullable=false)
private String username;
@NotBlank(message="error! password  Cannot be Blank")
private String password;
private String dob;
private String adhaar;
public long getFarmer_id() {
	return farmer_id;
}
public void setFarmer_id(long farmer_id) {
	this.farmer_id = farmer_id;
}

public String getPhone_no() {
	return phone_no;
}
public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getDistrict() {
	return district;
}
public void setDistrict(String district) {
	this.district = district;
}
public Integer getPincode() {
	return pincode;
}
public void setPincode(Integer pincode) {
	this.pincode = pincode;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getLongitude() {
	return Longitude;
}
public void setLongitude(String longitude) {
	Longitude = longitude;
}
public String getLatitude() {
	return Latitude;
}
public void setLatitude(String latitude) {
	Latitude = latitude;
}
public List<Crop_Detail> getCrop_detail() {
	return crop_detail;
}
public void setCrop_detail(List<Crop_Detail> crop_detail) {
	this.crop_detail = crop_detail;
}

public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public List<BookedStorage> getBookedStorage() {
	return bookedStorage;
}
public void setBookedStorage(List<BookedStorage> bookedStorage) {
	this.bookedStorage = bookedStorage;
}

public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getAdhaar() {
	return adhaar;
}
public void setAdhaar(String adhaar) {
	this.adhaar = adhaar;
}
@Override
public String toString() {
	return "Farmer [farmer_id=" + farmer_id + ", phone_no=" + phone_no + ", city=" + city + ", district=" + district
			+ ", pincode=" + pincode + ", state=" + state + ", address=" + address + ", Longitude=" + Longitude
			+ ", Latitude=" + Latitude + ", crop_detail=" + crop_detail + ", bookedStorage=" + bookedStorage
			+ ", firstname=" + firstname + ", lastname=" + lastname + ", username=" + username + ", password="
			+ password + ", dob=" + dob + ", adhaar=" + adhaar + "]";
}


}
