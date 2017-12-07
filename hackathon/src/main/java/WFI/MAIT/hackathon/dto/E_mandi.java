package WFI.MAIT.hackathon.dto;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class E_mandi implements Serializable  {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long emandi_id;
	private static final long serialVersionUID = 1L;
	private String mandiname;
	private String Crop_name;
	private Double price;
	private String city;
	private String district;
	private Integer pincode;
	private String state;
	private String address;
	private String longitude;
	private String latitude;
	public Long getEmandi_id() {
		return emandi_id;
	}
	public void setEmandi_id(Long emandi_id) {
		this.emandi_id = emandi_id;
	}
	public String getMandiname() {
		return mandiname;
	}
	public void setMandiname(String mandiname) {
		this.mandiname = mandiname;
	}
	public String getCrop_name() {
		return Crop_name;
	}
	public void setCrop_name(String crop_name) {
		Crop_name = crop_name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
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
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	@Override
	public String toString() {
		return "E_mandi [emandi_id=" + emandi_id + ", mandiname=" + mandiname + ", Crop_name=" + Crop_name + ", price="
				+ price + ", city=" + city + ", district=" + district + ", pincode=" + pincode + ", state=" + state
				+ ", address=" + address + ", longitude=" + longitude + ", latitude=" + latitude + "]";
	}	
	
}
