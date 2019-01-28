package mypack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class BookingDAOImpl implements BookingDAO {
	
	@Autowired
	HibernateTemplate ht;
	
	@Override
	public void savebookingDetail(booking bookobject) {
		// TODO Auto-generated method stub
		ht.save(bookobject);
	}

	@Override
	public tour getTourRef(int tourid) {
		List<tour> templist=(List<tour>) ht.find("from tour t where t.tourid=?",new Object[]{tourid});
		Iterator<tour> i=templist.iterator();
		if(i.hasNext())
		{
			return i.next();
		}
		return null;
	}

	@Override
	public List<tourdate> getTourDate(int tourid) {
		List<tourdate> templist=(List<tourdate>) ht.find("from tourdate t where t.dateid=(select tt.dateid from tourtourdate tt where t.dateid=tt.dateid and tt.tourref_tourid=?)", new Object[]{tourid});
		
		return templist;
	}

	@Override
	public List<cost> getTourCost(int tourid) {
		List<cost> tourCostList=(List<cost>) ht.find("from cost c where c.costid=(select tc.costid from tourcost tc  where c.costid=tc.costid and tc.tourcostref_tourid=?)",new Object[]{tourid});
		
		return tourCostList;
	}

}
