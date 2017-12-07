package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.BookStorageDao;
import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Farmer;

@Repository("bookedStorageDao")
@Transactional
public class BookedStorageDaoimpl implements BookStorageDao {

	@Autowired(required = true)
	private SessionFactory sessionFactory;

	@Override
	public boolean updateBookedStorage(BookedStorage book) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(book);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public boolean addBookedStorage(BookedStorage book) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(book);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public List<BookedStorage> getBookedStorageByFarmerId(Farmer farmer) {
		String command = "FROM BookedStorage where farmer=:parameter";
		Query<BookedStorage> query = sessionFactory.getCurrentSession().createQuery(command, BookedStorage.class);
		query.setParameter("parameter", farmer);
		try {
			return query.getResultList();
		} catch (Exception msg) {
			return null;
		}
	}
	@Override
	public List<BookedStorage> getBookedStorageByid(Long id) {
		String command = "FROM BookedStorage where bookedStorage_id=:parameter";
		Query<BookedStorage> query = sessionFactory.getCurrentSession().createQuery(command, BookedStorage.class);
		query.setParameter("parameter", id);
		try {
			return query.getResultList();
		} catch (Exception msg) {
			return null;
		}
	}
}
