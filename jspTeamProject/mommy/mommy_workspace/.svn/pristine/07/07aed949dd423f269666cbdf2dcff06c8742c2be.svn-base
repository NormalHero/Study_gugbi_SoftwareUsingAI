package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;

public class CommunityDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		CommunityDAO cDao = new CommunityDAO();
		ActionForward af = new ActionForward();
		
		cDao.delete(communityNum);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/community/CommunityListOk.com");
		
		
		
		
		
		return af;
	}

}
