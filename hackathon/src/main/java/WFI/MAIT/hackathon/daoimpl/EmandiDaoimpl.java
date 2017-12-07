package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.EmandiDao;
import WFI.MAIT.hackathon.dto.E_mandi;

@Repository("emandiDao")
@Transactional
public class EmandiDaoimpl implements EmandiDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(E_mandi emandi) {
		try {
			sessionFactory.getCurrentSession().persist(emandi);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public E_mandi getEmandiById(Long emandi) {
		try {
			return sessionFactory.getCurrentSession().get(E_mandi.class, Long.valueOf(emandi));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting CropDemand BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(E_mandi emandi) {
		
		try {
			sessionFactory.getCurrentSession().delete(emandi);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateCart(E_mandi emandi) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(emandi);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public List<E_mandi> searchEmandiBystate(String state){
		String command="from E_mandi where state=:parameter";
		Query<E_mandi> query=sessionFactory.getCurrentSession().createQuery(command,E_mandi.class);
		query.setParameter("parameter",state);
		return query.getResultList();
	}
	@Override
	public List<E_mandi> searchByDistrict(String district){
		String command="from E_mandi where state=:parameter";
		Query<E_mandi> query=sessionFactory.getCurrentSession().createQuery(command,E_mandi.class);
		query.setParameter("parameter",district);
		return query.getResultList();
	}
}
