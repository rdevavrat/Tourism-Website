package mypack;

import java.util.List;

public interface ItineraryDAO 

{

	List<itinerary> fetch (int linktourid);
	 List<cost> costFetch(int linktourid);
	 List<tourdate> dateFetch(int linktourid);
	
}
