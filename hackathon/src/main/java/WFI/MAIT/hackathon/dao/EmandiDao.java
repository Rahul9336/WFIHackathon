package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.E_mandi;

public interface EmandiDao {

	public boolean add(E_mandi emandi);

	public E_mandi getEmandiById(Long emandi);

	public boolean delete(E_mandi emandi);

	public boolean updateCart(E_mandi emandi);

	List<E_mandi> searchEmandiBystate(String state);

	List<E_mandi> searchByDistrict(String district);

}
