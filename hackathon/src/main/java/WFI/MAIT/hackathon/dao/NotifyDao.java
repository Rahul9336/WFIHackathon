package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Notification;

public interface NotifyDao {

	public boolean add(Notification notify);

	public boolean delete(Notification notify);

	public boolean updatenotify(Notification notify);

	public Notification getNotifyId(Long notify);

	public List<Notification> getnotifyforFarmer(Long id);

	public List<Notification> getnotifyforStorage(Long id);

	public List<Notification> getnotifyforFarmerStorage(Long id);

	List<Notification> getnotifyforFarmercropcalendar(Long id);

}
