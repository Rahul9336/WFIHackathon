package WFI.MAIT.hackathon.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Seeds implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long seed_id;
	private String seed_varirty;
	private String price;
	@ManyToOne
	@JoinColumn(name = "crops_id")
	private Crops crops;
	public Crops getCrops() {
		return crops;
	}
	public void setCrops(Crops crops) {
		this.crops = crops;
	}
	public Long getSeed_id() {
		return seed_id;
	}
	public void setSeed_id(Long seed_id) {
		this.seed_id = seed_id;
	}
	public String getSeed_varirty() {
		return seed_varirty;
	}
	public void setSeed_varirty(String seed_varirty) {
		this.seed_varirty = seed_varirty;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Seeds [seed_id=" + seed_id + ", seed_varirty=" + seed_varirty + ", price=" + price + ", crops=" + crops
				+ "]";
	}


}
