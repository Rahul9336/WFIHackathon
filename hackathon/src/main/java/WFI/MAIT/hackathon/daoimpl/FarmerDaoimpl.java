package WFI.MAIT.hackathon.daoimpl;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.FarmerDao;
import WFI.MAIT.hackathon.dto.Farmer;

@Repository("farmerDao")
@Transactional
public class FarmerDaoimpl implements FarmerDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Farmer farmer) {
		try {
			sessionFactory.getCurrentSession().persist(farmer);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Farmer getFarmerById(Long farmer) {
		try {
			return sessionFactory.getCurrentSession().get(Farmer.class, Long.valueOf(farmer));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Farmer BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Farmer farmer) {
		
		try {
			sessionFactory.getCurrentSession().delete(farmer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public Farmer getFarmerByUsername(String email) {
		String command="from Farmer where username=:parameter";
		Query<Farmer> query=sessionFactory.getCurrentSession().createQuery(command,Farmer.class);
		query.setParameter("parameter", email);
		try {
			return query.getSingleResult();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	@Override
	public boolean update(Farmer farmer) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(farmer);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
}
