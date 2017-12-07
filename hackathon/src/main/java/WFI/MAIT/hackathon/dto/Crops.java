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
public class Crops implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long crops_id;
	private String name;
	private String state;
	private String district;
	private String city;
	private String season;
	private String startMonth;
	private String endMonth;
	@JsonBackReference
	@OneToMany( mappedBy = "crops")
	private List<Seeds> seeds;
	private String video_link;
	public Long getCrops_id() {
		return crops_id;
	}
	public void setCrops_id(Long crops_id) {
		this.crops_id = crops_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}
	public String getEndMonth() {
		return endMonth;
	}
	public void setEndMonth(String endMonth) {
		this.endMonth = endMonth;
	}
	public List<Seeds> getSeeds() {
		return seeds;
	}
	public void setSeeds(List<Seeds> seeds) {
		this.seeds = seeds;
	}
	public String getVideo_link() {
		return video_link;
	}
	public void setVideo_link(String video_link) {
		this.video_link = video_link;
	}
	@Override
	public String toString() {
		return "Crops [crops_id=" + crops_id + ", name=" + name + ", state=" + state + ", district=" + district
				+ ", city=" + city + ", season=" + season + ", startMonth=" + startMonth + ", endMonth=" + endMonth
				+ ", seeds=" + seeds + ", video_link=" + video_link + "]";
	}	
}
