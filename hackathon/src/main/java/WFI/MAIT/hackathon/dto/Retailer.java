package WFI.MAIT.hackathon.dto;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Retailer implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int retailer_id;
	private String phone_no;
	@Column(unique = true)
	private String email;
	@NotBlank(message="error! password cannot be Blank")
	private String password;
	private String latidude;
	private String longitude;
	private String name;
	private String city;
	private String district;
	private Integer pincode;
	private String state;
	private String address;
	@JsonBackReference
	@OneToMany(mappedBy = "retailer")
	private List<Crop_Demands> demands;
	public int getRetailer_id() {
		return retailer_id;
	}
	public void setRetailer_id(int retailer_id) {
		this.retailer_id = retailer_id;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLatidude() {
		return latidude;
	}
	public void setLatidude(String latidude) {
		this.latidude = latidude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public List<Crop_Demands> getDemands() {
		return demands;
	}
	public void setDemands(List<Crop_Demands> demands) {
		this.demands = demands;
	}
	@Override
	public String toString() {
		return "Retailer [retailer_id=" + retailer_id + ", phone_no=" + phone_no + ", email=" + email + ", password="
				+ password + ", latidude=" + latidude + ", longitude=" + longitude + ", name=" + name + ", city=" + city
				+ ", district=" + district + ", pincode=" + pincode + ", state=" + state + ", address=" + address
				+ ", demands=" + demands + "]";
	}


	
}
