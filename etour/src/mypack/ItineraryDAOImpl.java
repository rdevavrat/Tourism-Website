package mypack;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Component
public class ItineraryDAOImpl implements ItineraryDAO 
{
	
	@Autowired
	HibernateTemplate template;

	@Override
	public List<itinerary> fetch(int linktourid) {
		// TODO Auto-generated method stub

	
		
		@SuppressWarnings("unchecked")
		/*List<itinerary> udlist =  (List<itinerary>)template.find("select i.itineraryid,i.daysdescription from itinerary i,itinerarytour t where i.itineraryid=t.itineraryid and t.tourref_tourid=1");
		for (Object obj : udlist) {
			System.out.println(obj);
		}*/
		
		List<itinerary> udlist =  (List<itinerary>)template.find("from itinerary i where i.itineraryid="
				+ "(select t.itineraryid from itinerarytour t where t.itineraryid=i.itineraryid and t.tourref_tourid=?)",new Object[]{linktourid});
	/*	List udlist = template.find("select t.itineraryid from itinerarytour t where tourref_tourid = 1");
		Object aa[]=udlist.toArray();
		
		List<itinerary> udlist1  = (List<itinerary> )template.find("from itinerary i where i.itineraryid = ?",aa);*/
		System.out.println(udlist);
		return udlist;
	}
	
	public List<cost> costFetch(int linktourid)
	{
		List<cost> udlist=(List<cost>) template.find("from cost c where c.tourcostref.tourid=? ", new Object[]{linktourid});
		/*System.out.println("dsd"+udlist);
		System.out.println(udlist.get(0).getCostofchildwithbed());*/
		return udlist;
	}

	@Override
	public List<tourdate> dateFetch(int linktourid) {
		// TODO Auto-generated method stub
		List<tourdate> udlist=(List<tourdate>) template.find("from tourdate t where t.tourref.tourid=?", new Object[]{linktourid});
		return udlist;
	}

}
