package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.CropsDao;
import WFI.MAIT.hackathon.dto.Crops;

@Repository("cropsDao")
@Transactional
public class CropsDaoimpl implements CropsDao {
	
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Crops crops) {
		try {
			sessionFactory.getCurrentSession().persist(crops);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Crops getCropsById(Long crops) {
		try {
			return sessionFactory.getCurrentSession().get(Crops.class, Long.valueOf(crops));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Crops BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Crops crops) {
		
		try {
			sessionFactory.getCurrentSession().delete(crops);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Crops> searchsCropsState(String state){
		String command="from Crops where state=:parameter";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter",state);
		return query.getResultList();
	}
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Crops> cropslist(){
		String command="from Crops";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		return query.getResultList();
	}
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Crops> searchsCropsBystateAndName(String state,String crop){
		String command="from Crops where state=:parameter and name=:Name";
		Query query=sessionFactory.getCurrentSession().createQuery(command);
		query.setParameter("parameter",state);
		query.setParameter("Name", crop);
		return query.getResultList();
	}
	@Override
	public boolean updateCart(Crops crops) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(crops);
			return true;
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
}
