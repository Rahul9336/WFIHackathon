package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Crop_Detail;
import WFI.MAIT.hackathon.dto.Farmer;

public interface CropDetailDao {

	public boolean add(Crop_Detail cropDetailDao);

	public boolean delete(Crop_Detail cropdetail);

	public Crop_Detail getCropCalendarById(Long crop_Detail);

	public boolean updateCart(Crop_Detail Crop_Detail);

	List<Crop_Detail> cropByfarmer(Farmer farmer);

}
