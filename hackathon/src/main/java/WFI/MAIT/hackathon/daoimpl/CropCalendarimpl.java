package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.CropCalendarDao;
import WFI.MAIT.hackathon.dto.CropCalendar;
@Repository("cropCalendarDao")
@Transactional
public class CropCalendarimpl implements CropCalendarDao {

	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(CropCalendar crop) {
		try {
			sessionFactory.getCurrentSession().persist(crop);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public CropCalendar getCropCalendarById(Long cropCalendar) {
		try {
			return sessionFactory.getCurrentSession().get(CropCalendar.class, Long.valueOf(cropCalendar));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting CropCalendar BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(CropCalendar cropCalendar) {
		
		try {
			sessionFactory.getCurrentSession().delete(cropCalendar);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateCart(CropCalendar cropCalendar) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cropCalendar);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public List<CropCalendar> cropdetailByfarmer(Long id) {
		String command="from CropCalendar where farmer_id=:parameter";
		Query<CropCalendar> query=sessionFactory.getCurrentSession().createQuery(command,CropCalendar.class);
		query.setParameter("parameter", id);
		return query.getResultList();
	}
}
