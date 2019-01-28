package mypack;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;

import org.hibernate.sql.Template;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ItineraryController {
	
	@Autowired
	ItineraryDAO idao;
		
	Integer linktourid;
	
	@RequestMapping(method = RequestMethod.GET ,value="/iternaryFetch" )
	String itinerary (ModelMap model,HttpServletRequest hsr)
	{
		linktourid=Integer.parseInt(hsr.getParameter("linktourid").trim());
		
		List<itinerary> itinenarylist  = idao.fetch(linktourid) ;
		model.put("list",itinenarylist);
		int tourid=itinenarylist.get(0).getTourref().getTourid();
		hsr.setAttribute("tid",tourid );
				System.out.println(itinenarylist);
		return "Itinerary.definition";
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/costfetch")
	String cost(ModelMap model ,HttpServletRequest hsr)
	{
		linktourid=Integer.parseInt(hsr.getParameter("linktourid").trim());
		List<cost> costlist=idao.costFetch(linktourid);
		model.put("list", costlist);
		int tourid=costlist.get(0).getTourcostref().getTourid();
				hsr.setAttribute("tid",tourid );
		return "cost.definition";
		
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/datefetch")
	String datetour(ModelMap model ,HttpServletRequest hsr)
	{
		linktourid=Integer.parseInt(hsr.getParameter("linktourid").trim());
		List<tourdate> datelist=idao.dateFetch(linktourid);
		model.put("list", datelist);
		int tourid=datelist.get(0).getTourref().getTourid();
		hsr.setAttribute("tid",tourid );
		return "date.definition";
		
	}
}
