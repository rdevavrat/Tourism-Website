package mypack;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class LoginDAOImpl implements LoginDAO 
{
	@Autowired
	private HibernateTemplate template;
	
	@Override
	public List<userdetail> check(String usernm,String pwd) 
	{
		
		 

		 String ss="from userdetail u where u.username=? and u.password=?";
		 Object oo[]= {usernm,pwd};
		 
		 List<userdetail> listloginuser=(List<userdetail>) template.find(ss,oo);
		 return listloginuser;
		 
		 
	}

}







