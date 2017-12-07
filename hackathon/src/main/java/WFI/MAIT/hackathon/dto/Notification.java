package WFI.MAIT.hackathon.dto;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Notification implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long notify_id;
	private Long storage_id;
	private String purpose;
	private String descp;
	private Long farmer_id;
	private String detail_id;
	private String notify_date;
	private String storage_name;
	private String farmer_name;
	@JsonBackReference
	@OneToMany( mappedBy = "notify")
	private List<CropCalendar> cropCalendar;
	@OneToMany(mappedBy = "notify")
	private List<BookedStorage> bookedStorage;
	
	public List<BookedStorage> getBookedStorage() {
		return bookedStorage;
	}
	public void setBookedStorage(List<BookedStorage> bookedStorage) {
		this.bookedStorage = bookedStorage;
	}
	public String getStorage_name() {
		return storage_name;
	}
	public void setStorage_name(String storage_name) {
		this.storage_name = storage_name;
	}
	public String getFarmer_name() {
		return farmer_name;
	}
	public void setFarmer_name(String farmer_name) {
		this.farmer_name = farmer_name;
	}
	public Long getNotify_id() {
		return notify_id;
	}
	public void setNotify_id(Long notify_id) {
		this.notify_id = notify_id;
	}
	public Long getStorage_id() {
		return storage_id;
	}
	public void setStorage_id(Long storage_id) {
		this.storage_id = storage_id;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String descp) {
		this.descp = descp;
	}
	public Long getFarmer_id() {
		return farmer_id;
	}
	public void setFarmer_id(Long farmer_id) {
		this.farmer_id = farmer_id;
	}
	public String getDetail_id() {
		return detail_id;
	}
	public void setDetail_id(String detail_id) {
		this.detail_id = detail_id;
	}
	public String getNotify_date() {
		return notify_date;
	}
	public void setNotify_date(String notify_date) {
		this.notify_date = notify_date;
	}

	public List<CropCalendar> getCropCalendar() {
		return cropCalendar;
	}
	public void setCropCalendar(List<CropCalendar> cropCalendar) {
		this.cropCalendar = cropCalendar;
	}
	@Override
	public String toString() {
		return "Notification [notify_id=" + notify_id + ", storage_id=" + storage_id + ", purpose=" + purpose
				+ ", descp=" + descp + ", farmer_id=" + farmer_id + ", detail_id=" + detail_id + ", notify_date="
				+ notify_date + ", storage_name=" + storage_name + ", farmer_name=" + farmer_name + ", cropCalendar="
				+ cropCalendar + ", bookedStorage=" + bookedStorage + "]";
	}

	
}
