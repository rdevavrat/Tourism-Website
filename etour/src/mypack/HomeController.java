package mypack;

import java.util.List;
import java.util.ListIterator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController 
{
	 String linkstring="";
	@Autowired
	HomeDAO hdao;
	
	@Autowired
	TourDAO tdao;
	
	@RequestMapping( value="/home_tour", method = RequestMethod.GET)
	public String hometour(HttpSession hs)
	{
		System.out.println("homeee");
		List<category> homelist= hdao.gethomepage();
		hs.setAttribute("homelist", homelist);
		
		return "home.definition";
	}
	
	@RequestMapping( value="/sector_tour", method = RequestMethod.GET)
	public String sectortour(HttpSession hs,HttpServletRequest hsr)
	{
		linkstring="";
		System.out.println("sector");
		Integer linkhome=Integer.parseInt (  hsr.getParameter("linkhome").trim());
		System.out.println(linkhome);
		List<category> sectorlist= hdao.getsectorpage(linkhome);
		linkstring=linkstring+sectorlist.get(0).getCatid()+">";
		System.out.println(linkstring);
		hs.setAttribute("linkstring", linkstring);
		ListIterator< category> iterator= sectorlist.listIterator();
		if(iterator.next().getHomeid()!=linkhome){
			hs.setAttribute("sectorlist", sectorlist);

			return "sector.definition";
		}
		else
		{
			
			List<tour> listtour=tdao.gettourdetail(linkhome);
			int touri=listtour.get(0).getTourid();
			hs.setAttribute("touri", touri);
			hs.setAttribute("tourdetail", listtour);
			System.out.println("prod");
			
			return "product.definition";
		}
		
	}
	
	
	@RequestMapping( value="/subsector_tour", method = RequestMethod.GET)
	public String subsectortour(HttpSession hs,HttpServletRequest hsr)
	{
		int index=linkstring.indexOf(">", 0);
		System.out.println(index);
		linkstring=linkstring.substring(0, index+1);
		Integer linkhomeid=Integer.parseInt (  hsr.getParameter("linkhomeid").trim());
		System.out.println("subsector");
		
		List<category> subsectorlist= hdao.getsubsectorpage( linkhomeid) ;
		linkstring=linkstring+subsectorlist.get(0).getCatid()+">";
		System.out.println(linkstring);
		hs.setAttribute("linkstring", linkstring);
		hs.setAttribute("subsectorlist", subsectorlist);
		ListIterator< category> iterator= subsectorlist.listIterator();
		if(iterator.next().getHomeid()!=linkhomeid){
			
			return "subsector.definition";
		}
		else
		{
			
			List<tour> listtour=tdao.gettourdetail(linkhomeid);
			hs.setAttribute("tourdetail", listtour);

			int touri=listtour.get(0).getTourid();
			hs.setAttribute("touri", touri);
			System.out.println("prod");
			return "product.definition";
		}
		
	}
	
}








