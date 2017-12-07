package WFI.MAIT.hackathon.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CropCalendar implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long cropCalendarId;

	@ManyToOne
	@JoinColumn(name = "notify_id")
	private Notification notify;
	private String status = "ACTIVE";
	private String cropname;
	private Long farmer_id;
	
	public Long getFarmer_id() {
		return farmer_id;
	}

	public void setFarmer_id(Long farmer_id) {
		this.farmer_id = farmer_id;
	}

	public Notification getNotify() {
		return notify;
	}

	public void setNotify(Notification notify) {
		this.notify = notify;
	}

	public String getCropname() {
		return cropname;
	}

	public void setCropname(String cropname) {
		this.cropname = cropname;
	}

	public Long getCropCalendarId() {
		return cropCalendarId;
	}

	public void setCropCalendarId(Long cropCalendarId) {
		this.cropCalendarId = cropCalendarId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CropCalendar [cropCalendarId=" + cropCalendarId + ", notify=" + notify + ", status=" + status
				+ ", cropname=" + cropname + ", farmer_id=" + farmer_id + "]";
	}

}
