package mypack;

import java.util.List;



public interface BookingDAO {

	
	public void savebookingDetail(booking bookobject);
	public tour getTourRef(int tourid);
	public List<tourdate> getTourDate(int tourid);
	public List<cost> getTourCost(int tourid);
	
}
