package WFI.MAIT.hackathon.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Crop_Demands implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long crop_Demandid;
	private String Crop_name;
	private Integer weight;
	private String description;
	@ManyToOne
	@JoinColumn(name = "retailer_id")
	private Retailer retailer;
	@ManyToOne
	@JoinColumn(name = "manufacturer_id")
	private Manufacturer manufacturer;
	public Long getCrop_Demandid() {
		return crop_Demandid;
	}
	public void setCrop_Demandid(Long crop_Demandid) {
		this.crop_Demandid = crop_Demandid;
	}
	public String getCrop_name() {
		return Crop_name;
	}
	public void setCrop_name(String crop_name) {
		Crop_name = crop_name;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Retailer getRetailer() {
		return retailer;
	}
	public void setRetailer(Retailer retailer) {
		this.retailer = retailer;
	}
	public Manufacturer getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(Manufacturer manufacturer) {
		this.manufacturer = manufacturer;
	}
	@Override
	public String toString() {
		return "Crop_Demands [crop_Demandid=" + crop_Demandid + ", Crop_name=" + Crop_name + ", weight=" + weight
				+ ", description=" + description + ", retailer=" + retailer + ", manufacturer=" + manufacturer + "]";
	}
}
