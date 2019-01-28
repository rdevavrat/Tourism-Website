package mypack;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
public class PDFController {
	
	@Autowired
	HibernateTemplate template;
	
 @RequestMapping(value = "/generate/pdf", method = RequestMethod.GET)
 ModelAndView generatePdf(HttpServletRequest request,
   HttpServletResponse response,HttpSession hs) throws Exception {
   booking bookob=(booking) hs.getAttribute("bookob");
  
   int userid=bookob.getUserdetailref();
   int bookid=bookob.getBookingid();
	 System.out.println("In controller");
  List<booking> mylist=(List<booking>)template.find("from booking where bookingid=?",new Object[]{bookid});
  List<userdetail> udlist =  (List<userdetail>)template.find("from userdetail where userid=?", new Object[]{userid});//write here user
 
  List<paxdetail> pdlist =  (List<paxdetail>)template.find("from paxdetail p where p.paxid =(select pb.paxdetailref_paxid from paxbooking pb where p.paxid=pb.paxdetailref_paxid and pb.booking_bookingid=?) ",new Object[]{bookid});//changes
  
  
  ModelAndView modelAndView = new ModelAndView("pdfView", "mylist",mylist);
  modelAndView.addObject("udlist", udlist);
 modelAndView.addObject("pdlist", pdlist);
 modelAndView.addObject("bookob", bookob);
  //Cookie cookie = new Cookie("hitCounter", mylist.toString());
	//response.addCookie(cookie);

  
  
  return modelAndView;
 }

}

