package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.NotifyDao;
import WFI.MAIT.hackathon.dto.Notification;
@Repository("notifyDao")
@Transactional
public class NotifyDaoimpl implements NotifyDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Notification notify) {
		try {
			sessionFactory.getCurrentSession().persist(notify);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Notification getNotifyId(Long notify) {
		try {
			return sessionFactory.getCurrentSession().get(Notification.class, Long.valueOf(notify));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Farmer BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Notification notify) {
		
		try {
			sessionFactory.getCurrentSession().delete(notify);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updatenotify(Notification notify) {
		try {
			 sessionFactory.getCurrentSession().saveOrUpdate(notify);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Notification> getnotifyforFarmer(Long id) {
		String command="from Notification where farmer_id=:parameter";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter", id);
		return query.getResultList();
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Notification> getnotifyforFarmercropcalendar(Long id) {
		String command="from Notification where farmer_id=:parameter and purpose=Crop Calendar";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter", id);
		return query.getResultList();
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Notification> getnotifyforStorage(Long id) {
		String command="from Notification where storage_id=:parameter";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter", id);
		return query.getResultList();
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Notification> getnotifyforFarmerStorage(Long id) {
		String command="from Notification where farmer_id=:parameter and purpose=:purpose";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter", id);
		query.setParameter("purpose", "Storage Booking");
		return query.getResultList();
	}
}
