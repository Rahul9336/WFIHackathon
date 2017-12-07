package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.CropCalendar;

public interface CropCalendarDao {

	public boolean add(CropCalendar crop);

	public CropCalendar getCropCalendarById(Long cropCalendar);

	public boolean delete(CropCalendar cropCalendar);

	public boolean updateCart(CropCalendar cropCalendar);
	
	List<CropCalendar> cropdetailByfarmer(Long id);

}
