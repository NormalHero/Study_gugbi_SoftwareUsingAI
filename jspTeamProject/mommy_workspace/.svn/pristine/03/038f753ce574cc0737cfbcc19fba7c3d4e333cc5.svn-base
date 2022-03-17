package com.mommy.app.user;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class UserFindIdPwOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		  
		  HashMap<String, String> findIdPw = new HashMap<>();
	      UserDAO userDao = new UserDAO();
	      ActionForward af = new ActionForward();
	      HttpSession session = req.getSession();
	     
	      findIdPw.put("userName", req.getParameter("userName"));	      
	      findIdPw.put("userEmail", req.getParameter("userEmail"));
	  
	      String userId = null;
	    
	      userId = userDao.findIdPw(findIdPw);
	      System.out.println(userId);
	      af.setRedirect(false);	      
	      

	       return af;

	}
}
