package mypack;

import java.util.List;

public interface HomeDAO {

	public List<category> gethomepage();
	public List<category> getsectorpage(int linkhome) ;
	public List<category> getsubsectorpage(int homeid)	;
	
}
