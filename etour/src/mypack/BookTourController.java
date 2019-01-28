package mypack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("/book_tour.do")
public class BookTourController {

	@Autowired
	UserDAO udao;
	
	@Autowired
	BookingDAO bdao;
	
	userdetail userob;
	
	List<tourdate> tourDateList;
	List<cost> tourCostList;
	int tourid;
	int useridd;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView beforetour(HttpSession hs,HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		System.out.println("bnnnnnnnnnnn");
		tourid=Integer.parseInt(req.getParameter("linktourid"));
		
		useridd=Integer.parseInt( req.getParameter("useridd"));
		tourCostList=bdao.getTourCost(tourid);
		hs.setAttribute("tourCostObj", tourCostList.get(0));
		
		tourDateList=bdao.getTourDate(tourid);
		hs.setAttribute("tourDateList", tourDateList);
		userdetail userob= (userdetail) udao.getuserdetail(useridd);
		hs.setAttribute("userob", userob);
		
		booking bookob = new booking();
		
		
		System.out.println("b:"+bookob.getTourref());
		return new ModelAndView("booktour.definition","bookob",bookob);
	
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String aftertour(@ModelAttribute("bookob") booking bookob,HttpSession hs,HttpServletRequest req)
	{userdetail userob= (userdetail) udao.getuserdetail(useridd);
		bookob.setUserdetailref(userob.getUserid());
		tour tourref=bdao.getTourRef(tourid);
		bookob.setTourref(tourref.getTourid());
		List<paxdetail> pd=(List<paxdetail>) bookob.getPaxdetailref();
		int noofperson=pd.size();
		bookob.setNoofperson(noofperson);
		
		bookob.setDateofdeparture(req.getParameter("ddate"));
		bookob.setPayment(Integer.parseInt(req.getParameter("payment")));
		bdao.savebookingDetail(bookob); 
		hs.setAttribute("bookob",bookob );
		return "pay.definition";
	}
	
	
}
