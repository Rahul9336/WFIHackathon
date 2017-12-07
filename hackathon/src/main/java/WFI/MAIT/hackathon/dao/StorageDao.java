package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Storage;

public interface StorageDao {

	public boolean add(Storage storage);

	public Storage getStorageById(Long storage);

	public boolean delete(Storage storage);

	public boolean addBookedStorage(BookedStorage storage);

	public BookedStorage getbookingStorageId(Long storage);

	public boolean updateStorage(Storage storage);

	public boolean updateBookingStatusStorage(BookedStorage booking);

	public boolean deleteBookedstorage(BookedStorage booked);

	public List<Storage> getStorageBystateorpincodeorcrop(String state, Integer pincode);

	Storage getStorageByusername(String email);

}
