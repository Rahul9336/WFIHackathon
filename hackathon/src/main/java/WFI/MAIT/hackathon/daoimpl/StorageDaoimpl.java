package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.StorageDao;
import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Storage;
@Repository("storageDao")
@Transactional
public class StorageDaoimpl implements StorageDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Storage storage) {
		try {
			sessionFactory.getCurrentSession().persist(storage);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public boolean addBookedStorage(BookedStorage storage) {
		try {
			sessionFactory.getCurrentSession().persist(storage);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Storage getStorageById(Long storage) {
		try {
			return sessionFactory.getCurrentSession().get(Storage.class, Long.valueOf(storage));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Farmer BY Id");
			return null;
		}
	}
	@Override
	public BookedStorage getbookingStorageId(Long storage) {
		try {
			return sessionFactory.getCurrentSession().get(BookedStorage.class, Long.valueOf(storage));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Farmer BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Storage storage) {
		
		try {
			sessionFactory.getCurrentSession().delete(storage);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateStorage(Storage storage) {
		try {
			 sessionFactory.getCurrentSession().saveOrUpdate(storage);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateBookingStatusStorage(BookedStorage booking) {
		try {
			 sessionFactory.getCurrentSession().saveOrUpdate(booking);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean deleteBookedstorage(BookedStorage booked) {
		
		try {
			sessionFactory.getCurrentSession().delete(booked);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public List<Storage> getStorageBystateorpincodeorcrop(String state,Integer pincode) {
		String command="from Storage where state=:state or pincode=:pincode";
		Query<Storage> query=sessionFactory.getCurrentSession().createQuery(command,Storage.class);
		query.setParameter("state", state);
		query.setParameter("pincode", pincode);
		try {
			return query.getResultList();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	@Override
	public Storage getStorageByusername(String email) {
		String command="from Storage where email=:email";
		Query<Storage> query=sessionFactory.getCurrentSession().createQuery(command,Storage.class);
		query.setParameter("email", email);
		
		try {
			return query.getSingleResult();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
