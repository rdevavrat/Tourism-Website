package mypack;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Component
@Transactional
public class TourDAOImpl implements TourDAO {

	@Autowired
	HibernateTemplate ht;

	@Override
	public List<tour> gettourdetail(int homeid) {
		ArrayList<tour> listoftour= new ArrayList<tour>();
		@SuppressWarnings("unchecked")
		List<tour> listtour=  (List<tour>) ht.find("from tour");
		Iterator <tour> iteratortour = (Iterator<tour>) listtour.iterator();
		while(iteratortour.hasNext())
		{ 
			tour tourobject=iteratortour.next();
			Set<category> setcategorylist=tourobject.getCategoryref();			
			Iterator iteratorcategory=setcategorylist.iterator();
			ArrayList<category> arraycategory=new ArrayList<category>();
			while(iteratorcategory.hasNext())
			{
				arraycategory.add((category) iteratorcategory.next());
			}
	
			Iterator<category> i=arraycategory.iterator();
			
			while(i.hasNext())
			{
				if(i.next().getHomeid()==homeid)
				{
					listoftour.add(tourobject);
					break;
				}
			}
		}
		
		return listoftour;
		// TODO Auto-generated method stub
		
	}
	
		
	}

