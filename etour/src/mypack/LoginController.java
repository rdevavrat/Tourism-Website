package mypack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/new_login")
public class LoginController 
{
	String linktourid;
	@Autowired
	LoginDAO sdao;
	@RequestMapping(method = RequestMethod.GET)
	public String before(HttpServletRequest hs)
	{
		 linktourid=hs.getParameter("linktourid");
		 
	/*	Login s=new Login();
		return new ModelAndView("login","mylogin",s);*/
	
	return "login";}
	List<userdetail> list=new ArrayList<userdetail>();
	
	/*
	@RequestMapping(method = RequestMethod.POST )
	public String afterSubmit(@Valid @ModelAttribute("mylogin") Login log,HttpSession hs,BindingResult result,HttpServletResponse res,HttpServletRequest hss) throws IOException, ServletException 
	{String message;	
	RequestDispatcher rs = null;
	list=sdao.check(log);
	
	System.out.println(list);
	if(result.hasErrors())
	{
		System.out.println("error");
		return "login";
	}
	else
	{
		if(!(list.isEmpty()))
		{
			String send;
			userdetail userob=list.get(0);
			hs.setAttribute("userob",userob );
			message="";
			send="/etour/book_tour.do";
			
			
		res.sendRedirect(send);
		}
																																															
 message="enter valid username password";
hs.setAttribute("errormessage", message);
		return "login";
	}
	
}*/
	@RequestMapping(method=RequestMethod.POST)
	public String loginafter(HttpServletRequest hs,HttpServletResponse res) throws IOException, ServletException
	{int useridd;
		String message;
String user=hs.getParameter("username").trim();
		String pass=hs.getParameter("pass").trim();

		System.out.println("linktourid"+linktourid);
		System.out.println(list);
		list=sdao.check(user,pass);
			if(!(list.isEmpty()))
			{
				String send;
				userdetail userob=list.get(0);
			System.out.println(linktourid+"af");
				useridd=userob.getUserid();
			res.sendRedirect("/etour/book_tour.do?linktourid="+linktourid+"&useridd="+useridd+"");
			}
																																																
	 message="enter valid username password";
	hs.setAttribute("errormessage", message);
	return "login";
	}
}







