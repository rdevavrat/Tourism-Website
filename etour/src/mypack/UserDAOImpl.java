package mypack;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class UserDAOImpl implements UserDAO{

	@Autowired
	HibernateTemplate ht;
	
	@Override
	public  userdetail getuserdetail(int userid) {
		// TODO Auto-generated method stub
		List<userdetail> listuserdetail = (List<userdetail>) ht.find("from userdetail where userid =?", new Object[]{userid});
		
		return listuserdetail.get(0);
	}
	

}
