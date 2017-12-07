package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Farmer;

public interface BookStorageDao {


	boolean updateBookedStorage(BookedStorage book);

	List<BookedStorage> getBookedStorageByid(Long id);

	List<BookedStorage> getBookedStorageByFarmerId(Farmer farmer);

	boolean addBookedStorage(BookedStorage book);

}
