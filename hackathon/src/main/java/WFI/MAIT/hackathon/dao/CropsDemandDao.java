package WFI.MAIT.hackathon.dao;

import WFI.MAIT.hackathon.dto.Crop_Demands;

public interface CropsDemandDao {

	public boolean add(Crop_Demands cropsDemand);

	public Crop_Demands getCropsDemandById(Long crop_Demand);

	public boolean delete(Crop_Demands crop_Demand);

	public boolean updateCart(Crop_Demands Crop_Demands);

}
