package WFI.MAIT.hackathon.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
@Entity
public class Crop_Detail implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long crop_id;
	private String crop_name;
	private double weight;
	private double crop_rate;
	private double min_weight;
	@Size(max=255,message="Description Must Upto 255")
	private String description;
	private String dateofharvest;
	@ManyToOne
	@JoinColumn(name = "farmer_id")
	private Farmer farmer;
	private String expirydate;
	public long getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(long crop_id) {
		this.crop_id = crop_id;
	}
	public String getCrop_name() {
		return crop_name;
	}
	public void setCrop_name(String crop_name) {
		this.crop_name = crop_name;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getCrop_rate() {
		return crop_rate;
	}
	public void setCrop_rate(double crop_rate) {
		this.crop_rate = crop_rate;
	}
	public double getMin_weight() {
		return min_weight;
	}
	public void setMin_weight(double min_weight) {
		this.min_weight = min_weight;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDateofharvest() {
		return dateofharvest;
	}
	public void setDateofharvest(String dateofharvest) {
		this.dateofharvest = dateofharvest;
	}
	public Farmer getFarmer() {
		return farmer;
	}
	public void setFarmer(Farmer farmer) {
		this.farmer = farmer;
	}
	public String getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	@Override
	public String toString() {
		return "Crop_Detail [crop_id=" + crop_id + ", crop_name=" + crop_name + ", weight=" + weight + ", crop_rate="
				+ crop_rate + ", min_weight=" + min_weight + ", description=" + description + ", dateofharvest="
				+ dateofharvest + ", farmer=" + farmer + ", expirydate=" + expirydate + "]";
	}
	
}
