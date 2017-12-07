package WFI.MAIT.hackathon.dao;

import WFI.MAIT.hackathon.dto.Retailer;

public interface RetailerDao {

	public boolean add(Retailer retailer);

	public Retailer getRetailerById(Long retailer);

	public boolean delete(Retailer retailer);

	public boolean update(Retailer retailer);

	

}
