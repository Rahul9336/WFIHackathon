package WFI.MAIT.hackathon.dao;

import WFI.MAIT.hackathon.dto.Manufacturer;

public interface ManufacturerDao {

	public boolean add(Manufacturer manufacturer);

	public Manufacturer getManufacturerById(Long manufacturer);

	public boolean delete(Manufacturer manufacturer);

	public boolean update(Manufacturer manufacturer);

}
