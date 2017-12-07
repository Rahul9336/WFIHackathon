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



@Entity
public class Storage implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long storage_id;
	private String storage_name;
	private String city;
	private String district;
	private Integer pincode;
	private String state;
	private String address;
	private String latitude;
	private String dob;
	@Column(unique = true,nullable=false)
	private String email;
	@NotBlank(message="error! password cannot be Blank")
	private String password;
	private String longitude;
	private String total_capacity;
	private String available_storage;
	private String manager_name;
	private String storage_type;
	private String storage_contact;
	private String manager_contact;
	private String crop_names;
	@OneToMany(mappedBy = "storage")
	private List<BookedStorage> bookedStorage;
	private String adhaar;
	public String getAdhaar() {
		return adhaar;
	}
	public void setAdhaar(String adhaar) {
		this.adhaar = adhaar;
	}
	public List<BookedStorage> getBookedStorage() {
		return bookedStorage;
	}
	public void setBookedStorage(List<BookedStorage> bookedStorage) {
		this.bookedStorage = bookedStorage;
	}
	public String getCrop_names() {
		return crop_names;
	}
	public void setCrop_names(String crop_names) {
		this.crop_names = crop_names;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Long getStorage_id() {
		return storage_id;
	}
	public void setStorage_id(Long storage_id) {
		this.storage_id = storage_id;
	}
	public String getStorage_name() {
		return storage_name;
	}
	public void setStorage_name(String storage_name) {
		this.storage_name = storage_name;
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
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getTotal_capacity() {
		return total_capacity;
	}
	public void setTotal_capacity(String total_capacity) {
		this.total_capacity = total_capacity;
	}
	public String getAvailable_storage() {
		return available_storage;
	}
	public void setAvailable_storage(String available_storage) {
		this.available_storage = available_storage;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getStorage_type() {
		return storage_type;
	}
	public void setStorage_type(String storage_type) {
		this.storage_type = storage_type;
	}
	public String getStorage_contact() {
		return storage_contact;
	}
	public void setStorage_contact(String storage_contact) {
		this.storage_contact = storage_contact;
	}
	public String getManager_contact() {
		return manager_contact;
	}
	public void setManager_contact(String manager_contact) {
		this.manager_contact = manager_contact;
	}
	@Override
	public String toString() {
		return "Storage [storage_id=" + storage_id + ", storage_name=" + storage_name + ", city=" + city + ", district="
				+ district + ", pincode=" + pincode + ", state=" + state + ", address=" + address + ", latitude="
				+ latitude + ", dob=" + dob + ", email=" + email + ", password=" + password + ", longitude=" + longitude
				+ ", total_capacity=" + total_capacity + ", available_storage=" + available_storage + ", manager_name="
				+ manager_name + ", storage_type=" + storage_type + ", storage_contact=" + storage_contact
				+ ", manager_contact=" + manager_contact + ", crop_names=" + crop_names + ", bookedStorage="
				+ bookedStorage + ", adhaar=" + adhaar + "]";
	}
}
