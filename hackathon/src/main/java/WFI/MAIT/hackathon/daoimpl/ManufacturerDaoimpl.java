package WFI.MAIT.hackathon.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.ManufacturerDao;
import WFI.MAIT.hackathon.dto.Manufacturer;

@Repository("manufacturerDao")
@Transactional
public class ManufacturerDaoimpl implements ManufacturerDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Manufacturer manufacturer) {
		try {
			sessionFactory.getCurrentSession().persist(manufacturer);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Manufacturer getManufacturerById(Long manufacturer) {
		try {
			return sessionFactory.getCurrentSession().get(Manufacturer.class, Long.valueOf(manufacturer));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Manufacturer BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Manufacturer manufacturer) {
		
		try {
			sessionFactory.getCurrentSession().delete(manufacturer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean update(Manufacturer manufacturer) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(manufacturer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
}
