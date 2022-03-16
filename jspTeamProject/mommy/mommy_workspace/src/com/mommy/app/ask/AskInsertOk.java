package com.mommy.app.ask;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.ask.dao.AskFilesDAO;
import com.mommy.app.ask.vo.AskFilesVO;
import com.mommy.app.ask.vo.AskVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AskInsertOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
	
		String uploadFolder = "${pageContext.request.contextPath}/upload";
		int fileSize = 1024 * 1024 * 5;//5M

		ActionForward af = new ActionForward();
		AskVO ask = new AskVO();
		AskDAO aDao = new AskDAO();
		AskFilesDAO afDao = new AskFilesDAO();
		AskFilesVO files = new AskFilesVO();
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		ask.setAskTitle(multi.getParameter("title"));
		ask.setAskContent(multi.getParameter("content"));
		ask.setUserNum((Integer)req.getSession().getAttribute("userNum"));
		
		//게시글 추가
		aDao.insert(ask);
				
		//파일 추가
		afDao.insert(multi, aDao.getSeq());
				
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/ask/AskListOk.ask");
		
		return af;
	}
}

