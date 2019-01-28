package mypack;

import java.util.List;

public interface LoginDAO 
{
	List<userdetail> check(String usernm,String pwd);
}
