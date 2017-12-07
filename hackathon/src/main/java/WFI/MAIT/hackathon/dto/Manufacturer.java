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
public class Manufacturer implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long manufacturer_id;
	private String company_name;
	private String manager_name;
	private String city;
	private String district;
	private Integer pincode;
	private String state;
	private String address;
	@Column(unique = true)
	private String email;
	@NotBlank(message="error! password cannot be Blank")
	private String password;
	private String business_type;
	private String cmpy_contact_no;
	private String manger_contactno;
	@JsonBackReference
	@OneToMany(mappedBy = "manufacturer")
	private List<Crop_Demands> demands;
	public Long getManufacturer_id() {
		return manufacturer_id;
	}
	public void setManufacturer_id(Long manufacturer_id) {
		this.manufacturer_id = manufacturer_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
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
	public String getBusiness_type() {
		return business_type;
	}
	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}
	public String getCmpy_contact_no() {
		return cmpy_contact_no;
	}
	public void setCmpy_contact_no(String cmpy_contact_no) {
		this.cmpy_contact_no = cmpy_contact_no;
	}
	public String getManger_contactno() {
		return manger_contactno;
	}
	public void setManger_contactno(String manger_contactno) {
		this.manger_contactno = manger_contactno;
	}
	public List<Crop_Demands> getDemands() {
		return demands;
	}
	public void setDemands(List<Crop_Demands> demands) {
		this.demands = demands;
	}
	@Override
	public String toString() {
		return "Manufacturer [manufacturer_id=" + manufacturer_id + ", company_name=" + company_name + ", manager_name="
				+ manager_name + ", city=" + city + ", district=" + district + ", pincode=" + pincode + ", state="
				+ state + ", address=" + address + ", email=" + email + ", password=" + password + ", business_type="
				+ business_type + ", cmpy_contact_no=" + cmpy_contact_no + ", manger_contactno=" + manger_contactno
				+ ", demands=" + demands + "]";
	}
	
}
