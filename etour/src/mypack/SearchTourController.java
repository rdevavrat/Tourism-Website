package mypack;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/search_tour.do")
public class SearchTourController {

	@Autowired
	SearchTourDAO stdao;
	
	@RequestMapping(method=RequestMethod.POST)
	public String name(HttpSession hs,HttpServletRequest hq) throws ParseException {
		System.out.println("in post");
		
		if(hq.getParameter("selectField").equals("period"))
		{
		Date arrivaltdate=new SimpleDateFormat("yyyy-MM-dd").parse( hq.getParameter("fromDate").toString());
		Date departuredate=new SimpleDateFormat("yyyy-MM-dd").parse(hq.getParameter("toDate").toString());
		 //System.out.println(arrivaltdate+" "+departuredate);
		List<Search> listtour= stdao.getToursOnPeriod(arrivaltdate, departuredate);
		hs.setAttribute("listtour", listtour);
		}
		
		if(hq.getParameter("selectField").equals("cost"))
		{
			double fromCost=Double.parseDouble(hq.getParameter("fromCost"));
			double toCost=Double.parseDouble(hq.getParameter("toCost"));
			List< Search> listtour= stdao.getToursOnCost(fromCost, toCost);
			hs.setAttribute("listtour", listtour);
			
		}
		if(hq.getParameter("selectField").equals("noofdays"))
				{
			int tonof=Integer.parseInt(hq.getParameter("tonof"));
			int fromnof=Integer.parseInt(hq.getParameter("fromnof"));
			List< Search> listtour=stdao.getToursOnNoOfDays(tonof,fromnof);
			System.out.println(listtour);
			hs.setAttribute("listtour", listtour);
			
				}
		return "search";
	}
	
}
