package mypack;

import java.util.Date;
import java.util.List;

public interface SearchTourDAO {

	public List<Search> getToursOnPeriod(Date arrivaltdate,Date departuredate);
	
	public List<Search> getToursOnCost(Double fromCost,Double toCost);
	
	public List<Search> getToursOnNoOfDays(Integer tonof, Integer fromnof);
		
	}

