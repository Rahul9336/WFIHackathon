package WFI.MAIT.hackathon.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.RetailerDao;
import WFI.MAIT.hackathon.dto.Retailer;
@Repository("retailerDao")
@Transactional
public class RetailerDaoimpl implements RetailerDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Retailer retailer) {
		try {
			sessionFactory.getCurrentSession().persist(retailer);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Retailer getRetailerById(Long retailer) {
		try {
			return sessionFactory.getCurrentSession().get(Retailer.class, Long.valueOf(retailer));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Reatiler BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Retailer retailer) {
		
		try {
			sessionFactory.getCurrentSession().delete(retailer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean update(Retailer retailer) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(retailer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
}
