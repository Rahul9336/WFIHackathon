package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Crops;

public interface CropsDao {

	public boolean add(Crops crops);

	public Crops getCropsById(Long crops);

	public boolean delete(Crops crops);

	public List<Crops> searchsCropsState(String state);

	public List<Crops> searchsCropsBystateAndName(String state, String crop);

	public boolean updateCart(Crops crops);

	public List<Crops> cropslist();

}
