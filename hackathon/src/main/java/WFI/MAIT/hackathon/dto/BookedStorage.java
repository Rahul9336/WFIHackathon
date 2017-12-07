package WFI.MAIT.hackathon.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class BookedStorage implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long bookedStorage_id;
	private String date;
	private Long acquier_capacity;
	private String status;
	private String duration;
	@ManyToOne
	@JoinColumn(name="farmer_id")
	private Farmer farmer;
	@ManyToOne
	@JoinColumn(name="storage_id")
	private Storage storage;
	@ManyToOne
	@JoinColumn(name="notify_id")
	private Notification notify;
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	private String crops_names;
	private String descp;
	
	public Storage getStorage() {
		return storage;
	}
	public void setStorage(Storage storage) {
		this.storage = storage;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String descp) {
		this.descp = descp;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCrops_names() {
		return crops_names;
	}
	public void setCrops_names(String crops_names) {
		this.crops_names = crops_names;
	}
	public Farmer getFarmer() {
		return farmer;
	}
	public void setFarmer(Farmer farmer) {
		this.farmer = farmer;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public Long getBookedStorage_id() {
		return bookedStorage_id;
	}
	public void setBookedStorage_id(Long bookedStorage_id) {
		this.bookedStorage_id = bookedStorage_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Long getAcquier_capacity() {
		return acquier_capacity;
	}
	public void setAcquier_capacity(Long acquier_capacity) {
		this.acquier_capacity = acquier_capacity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Notification getNotify() {
		return notify;
	}
	public void setNotify(Notification notify) {
		this.notify = notify;
	}
	@Override
	public String toString() {
		return "BookedStorage [bookedStorage_id=" + bookedStorage_id + ", date=" + date + ", acquier_capacity="
				+ acquier_capacity + ", status=" + status + ", duration=" + duration + ", farmer=" + farmer
				+ ", storage=" + storage + ", notify=" + notify + ", user=" + user + ", crops_names=" + crops_names
				+ ", descp=" + descp + "]";
	}
	
}
