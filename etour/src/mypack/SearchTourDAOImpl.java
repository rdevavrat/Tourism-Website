package mypack;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class SearchTourDAOImpl implements SearchTourDAO {

	@Autowired
	HibernateTemplate ht;
	
	@Override
	public List<Search> getToursOnPeriod(Date arrivaltdate,Date departuredate) {
		// TODO Auto-generated method stub
		System.out.println("in dao");
		/*List listPeriod =(List) ht.find("select trr.tourname ,trr.cost,tr.arrivaldate,tr.departuredate from "
				+ "tourdate tr  join "
				+ "tr.tourref trr where tr.arrivaldate between ? and ?" ,new Object[]{arrivaltdate,departuredate});
		*///System.out.println(listPeriod);
		List<tourdate> listPeriod=(List<tourdate>) ht.find("from tourdate t where departuredate between ? and ?", new Object[]{arrivaltdate,departuredate});
Iterator<tourdate> itr=listPeriod.iterator();
List<Search> ls=new ArrayList<Search>();
tourdate t;

while(itr.hasNext())
{t=itr.next();

if(t.getTourref()!=null)
{
	ls.add(new Search(t.getTourref().getTourid(),t.getTourref().getTourname(),t.getTourref().getCost(),t.getArrivaldate(),t.getDeparturedate()));
}

}
return ls;
		
//return listPeriod;
		//List<tour>listtour=(List<tour>) ht.find("(?)",new Object[]{listPeriod.forEach(action);});
	//	List<tourdate> list2
		//System.out.println(		listPeriod.get(0).toString());

	
		
	}

	@Override
	public List<Search> getToursOnCost(Double fromCost, Double toCost) {
		// TODO Auto-generated method stub
		System.out.println("sdfs");
	List<tourdate> listCost=(List<tourdate>) ht.find("from tourdate t where t.tourref.cost between ? and ?", new Object[]{fromCost,toCost});
	System.out.println(listCost);
	Iterator<tourdate> itr=listCost.iterator();
	List<Search> ls=new ArrayList<Search>();
	tourdate t;

	while(itr.hasNext())
	{t=itr.next();

	if(t.getTourref()!=null)
	{
		ls.add(new Search(t.getTourref().getTourid(),t.getTourref().getTourname(),t.getTourref().getCost(),t.getArrivaldate(),t.getDeparturedate()));
	}

	}
	return ls;

	}

	@Override
	public List<Search> getToursOnNoOfDays(Integer tonof, Integer fromnof) {
		// TODO Auto-generated method stub
		List<tourdate> listNoOfDays=(List<tourdate>) ht.find("from tourdate t where noofdays between ? and ?", new Object[]{fromnof,tonof});
		Iterator<tourdate> itr=listNoOfDays.iterator();
		List<Search> ls=new ArrayList<Search>();
		tourdate t;

		while(itr.hasNext())
		{t=itr.next();

		if(t.getTourref()!=null)
		{
			ls.add(new Search(t.getTourref().getTourid(),t.getTourref().getTourname(),t.getTourref().getCost(),t.getArrivaldate(),t.getDeparturedate()));
		}

		}
		return ls;

	}


}
