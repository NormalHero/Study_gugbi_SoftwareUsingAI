package com.mommy.app.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class MyPagePwCkOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	      UserDAO userDao = new UserDAO();
	      UserVO userVo = new UserVO();
	      
	      
	      HttpSession session = req.getSession();
	      int userNum = (int) session.getAttribute("userNum");
	      String userPw = req.getParameter("userPw");
	      PrintWriter out = resp.getWriter();
	      System.out.println("입력 비밀번호 : "+userPw);
	      System.out.println("세션 번호 : "+userNum);
	      
	      userVo.setUserNum(userNum);
	      userVo.setUserPw(userPw);
	      
	      int result =  userDao.myPagePwCk(userVo);
	    
	      JSONObject json = new JSONObject();
		
	
	     
	     if(result == 1) {
	    	 userVo = userDao.getInfo(userNum);
//	    	 req.setAttribute("userVO", userVo);
	    	 json.put("userNum", userNum);
	     }else {
	    	 json.put("userNum", "null");
	     }
	     
	

		out.print(json.toJSONString());
		out.close();
		
		return null;
	}

}
