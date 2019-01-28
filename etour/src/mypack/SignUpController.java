package mypack;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class SignUpController {

	@Autowired
	SignUpDAO sdao;
	
	@RequestMapping( value="/signup", method = RequestMethod.GET)
	public ModelAndView signup()
	{
		userdetail ud=new userdetail();
		return new ModelAndView("signup.definition","signObj",ud);
	}
	
	@RequestMapping( value="/signup", method = RequestMethod.POST)
	public String signup(@Valid @ModelAttribute("signObj")userdetail ud,BindingResult result)
	{
		System.out.println("IN");
		if(result.hasErrors())
		{
			System.out.println("error");
			return "signup.definition";
		}
		
		sdao.addUser(ud);
		return "home.definition";
	}
}
