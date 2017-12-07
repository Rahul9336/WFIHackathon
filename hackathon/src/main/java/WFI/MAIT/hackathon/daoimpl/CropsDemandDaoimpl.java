package WFI.MAIT.hackathon.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.CropsDemandDao;
import WFI.MAIT.hackathon.dto.Crop_Demands;

@Repository("cropsDemandDao")
@Transactional
public class CropsDemandDaoimpl implements CropsDemandDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Crop_Demands cropsDemand) {
		try {
			sessionFactory.getCurrentSession().persist(cropsDemand);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Crop_Demands getCropsDemandById(Long crop_Demand) {
		try {
			return sessionFactory.getCurrentSession().get(Crop_Demands.class, Long.valueOf(crop_Demand));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting CropDemand BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Crop_Demands crop_Demand) {
		
		try {
			sessionFactory.getCurrentSession().delete(crop_Demand);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateCart(Crop_Demands Crop_Demands) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(Crop_Demands);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
}
