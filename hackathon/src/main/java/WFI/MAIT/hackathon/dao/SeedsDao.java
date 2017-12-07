package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Crops;
import WFI.MAIT.hackathon.dto.Seeds;

public interface SeedsDao {

	public boolean add(Seeds seed);

	public Seeds getSeedsByid(Long seeds);

	public boolean delete(Seeds seeds);

	public boolean update(Seeds seeds);

	public List<Crops> getStorageBystateorpincodeorcrop(Crops crops);

}
