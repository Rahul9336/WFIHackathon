package WFI.MAIT.hackathon.daoimpl;



import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.CropDetailDao;
import WFI.MAIT.hackathon.dto.Crop_Detail;
import WFI.MAIT.hackathon.dto.Farmer;

@Repository("cropDetailDao")
@Transactional
public class CropDetailDaoimpl implements CropDetailDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Crop_Detail cropdetail) {
		try {
			sessionFactory.getCurrentSession().persist(cropdetail);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Crop_Detail getCropCalendarById(Long crop_Detail) {
		try {
			return sessionFactory.getCurrentSession().get(Crop_Detail.class, Long.valueOf(crop_Detail));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting Crop_detail BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Crop_Detail cropdetail) {
		
		try {
			sessionFactory.getCurrentSession().delete(cropdetail);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean updateCart(Crop_Detail Crop_Detail) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(Crop_Detail);
			return true;
			
		} catch (Exception msg) {
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public List<Crop_Detail> cropByfarmer(Farmer farmer) {
		String command="from Crop_Detail where farmer=:parameter";
		Query<Crop_Detail> query=sessionFactory.getCurrentSession().createQuery(command,Crop_Detail.class);
		query.setParameter("parameter", farmer);
		return query.getResultList();
	}
}
