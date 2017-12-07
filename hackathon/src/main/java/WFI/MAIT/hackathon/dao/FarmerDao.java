package WFI.MAIT.hackathon.dao;

import WFI.MAIT.hackathon.dto.Farmer;

public interface FarmerDao  {

	public boolean add(Farmer farmer);

	public Farmer getFarmerById(Long farmer);

	public boolean delete(Farmer farmer);

	public Farmer getFarmerByUsername(String email);

	public boolean update(Farmer farmer);
	

}
