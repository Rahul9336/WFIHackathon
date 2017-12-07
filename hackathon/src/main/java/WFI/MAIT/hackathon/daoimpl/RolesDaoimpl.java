package WFI.MAIT.hackathon.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WFI.MAIT.hackathon.dao.RolesDao;
import WFI.MAIT.hackathon.dto.Roles;
@Repository("rolesDao")
@Transactional
public class RolesDaoimpl implements RolesDao {
	@Autowired(required = true)
	private SessionFactory sessionFactory;
	@Override
	public boolean add(Roles roles) {
		try {
			sessionFactory.getCurrentSession().persist(roles);
			return true;
		}catch(Exception msg) {
			msg.printStackTrace();
			System.out.println(msg);
			return false;
		}
	}

}
