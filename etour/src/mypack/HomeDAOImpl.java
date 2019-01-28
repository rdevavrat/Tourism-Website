package mypack;



import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping
public class HomeDAOImpl implements HomeDAO {

	@Autowired
	private HibernateTemplate ht;

	@Override
	public List<category> gethomepage() {
		// TODO Auto-generated method stub
		String sid="na";
		List<category> lc=(List<category>) ht.find("from category c where c.secid=?", new Object[]{sid});
		return lc;
	}

	@Override
	public List<category> getsectorpage(int linkhome) {
		// TODO Auto-generated method stub
		
		List<category> checkflag=(List<category>) ht.find("from category c where c.homeid=?",new Object[]{linkhome});
		
	ListIterator <category> iterob = (ListIterator<category>) checkflag.listIterator();
	while(iterob.hasNext())
	{
		
		if(iterob.next().isFlag().toString().equals("f"))
		{
			
			iterob.previous();
			
			String catid=iterob.next().getCatid().toString();
			String sid="na";
			List<category> lc=(List<category>) ht.find("from category c where catid=? and secid!=? ", new Object[]{catid,sid});
			return lc;
			}
		
	
		
	}
	
	return checkflag;
	}

	@Override
	public List<category> getsubsectorpage(int linkhomeid) {
		// TODO Auto-generated method stub
		List<category> checkflag=(List<category>) ht.find("from category c where c.homeid=?",new Object[]{linkhomeid});
		
		ListIterator <category> iterob = (ListIterator<category>) checkflag.listIterator();
		while(iterob.hasNext())
		{
			
			if(iterob.next().isFlag().toString().equals("f"))
			{
				
				iterob.previous();
				
				String catid=iterob.next().getSecid().toString();
				String sid="na";
				List<category> lc=(List<category>) ht.find("from category c where catid=? and secid!=? ", new Object[]{catid,sid});
				return lc;
				}
		}
		return checkflag;
	}
	}
	
	
