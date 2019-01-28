package mypack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class SignUpDAOImp implements SignUpDAO {

	@Autowired
	HibernateTemplate temp;
	
	@Override
	public void addUser(userdetail ud) {
	
		temp.save(ud);
	}
}
