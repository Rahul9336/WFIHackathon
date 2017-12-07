package WFI.MAIT.hackathon.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.SeedsDao;
import WFI.MAIT.hackathon.dto.Crops;
import WFI.MAIT.hackathon.dto.Seeds;
@Repository("seedsDao")
@Transactional
public class SeedsDaoimpl implements SeedsDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Seeds seed) {
		try {
			sessionFactory.getCurrentSession().persist(seed);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}
	@Override
	public Seeds getSeedsByid(Long seeds) {
		try {
			return sessionFactory.getCurrentSession().get(Seeds.class, Long.valueOf(seeds));
			
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println("Something error occured during Getting seeds BY Id");
			return null;
		}
	}
	@Override
	public boolean delete(Seeds seeds) {
		
		try {
			sessionFactory.getCurrentSession().delete(seeds);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public boolean update(Seeds seeds) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(seeds);
			 return true;}
			catch(Exception msg) {
				System.out.println(msg);
				return false;
			}
	}
	@Override
	public List<Crops> getStorageBystateorpincodeorcrop(Crops crops) {
		String command="from Seeds where crops=:id";
		Query<Crops> query=sessionFactory.getCurrentSession().createQuery(command,Crops.class);
		query.setParameter("id", crops);
		try {
			return query.getResultList();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
