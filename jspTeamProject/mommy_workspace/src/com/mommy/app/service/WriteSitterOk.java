package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.ServiceVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteSitterOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		ServiceVO serviceVo = new ServiceVO();
		ServiceDAO serviceDao = new ServiceDAO();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int userNum = (int) session.getAttribute("userNum");
		serviceVo.setUserNum(userNum);
		System.out.println("WriteSitterOk 시터 프로필 작성");
		serviceVo.setCareIndoor(transInt(req.getParameter("inside"))); // n
		serviceVo.setCareCommit(transInt(req.getParameter("commit")));
		serviceVo.setCareFood(transInt(req.getParameter("food")));
		serviceVo.setCareClean(transInt(req.getParameter("clean")));
		serviceVo.setBabyNewborn(transInt(req.getParameter("newborn")));  // n
		serviceVo.setBabyChild(transInt(req.getParameter("baby"))); 
		serviceVo.setBabyKinder(transInt(req.getParameter("kinder")));
		serviceVo.setBabyElementary(transInt(req.getParameter("elememtary")));
		serviceVo.setCareEmergency(transInt(req.getParameter("careEmergency")));

		
		serviceVo.setProfileDescription(req.getParameter("message")); // ?? 
		
		//serviceVo.setProfileDate(req.getParameter("startDate"));
		serviceVo.setP_periodStartDate(req.getParameter("startDate"));
		System.out.println("startDate : "+serviceVo.getProfileDate());
		
		// careEmergency (긴급돌봄) 
		serviceVo.setP_mon(transDay(req.getParameter("P_mon")));
		serviceVo.setP_tue(transDay(req.getParameter("P_tue")));
		serviceVo.setP_wed(transDay(req.getParameter("P_wed")));
		serviceVo.setP_thu(transDay(req.getParameter("P_thu")));
		serviceVo.setP_fri(transDay(req.getParameter("P_fri")));
		serviceVo.setP_sat(transDay(req.getParameter("P_sat")));
		serviceVo.setP_sun(transDay(req.getParameter("P_sun")));
		
		System.out.println(req.getParameter("profileSalary"));
		serviceVo.setProfileSalary(Integer.parseInt(req.getParameter("profileSalary")));
		
		serviceVo.setP_morning(Integer.parseInt(req.getParameter("P_morning")));
		serviceVo.setP_lunch(Integer.parseInt(req.getParameter("P_lunch")));
		serviceVo.setP_noon(Integer.parseInt(req.getParameter("P_noon")));
		serviceVo.setP_week(Integer.parseInt(req.getParameter("P_week")));
		serviceVo.setP_month(Integer.parseInt(req.getParameter("P_month")));
		serviceVo.setP_quarter(Integer.parseInt(req.getParameter("P_quarter")));
		serviceVo.setP_semiAnnual(Integer.parseInt(req.getParameter("P_semiAnnual")));
		
		serviceVo.setProfileAttach(req.getParameter("attachQ"));
		
		serviceVo.setLocationSido(req.getParameter("transSido"));
		serviceVo.setLocationSigun(req.getParameter("transSiugun"));
		serviceVo.setLocationDong(req.getParameter("transDong"));
		
		serviceVo.setProfilePicture(req.getParameter("profilePicture"));
		serviceVo.setProfilePicture(req.getParameter("profilePicture"));
		
		serviceDao.insertProfile(serviceVo);
		
		ProfileFilesDAO pfDao= new ProfileFilesDAO();
		
	
		
		
		

		
		System.out.println(req.getParameter("profilePicture"));
		System.out.println(req.getParameter("attachQ"));
		System.out.println(req.getContextPath());
	String uploadFolder = "E:\\Avery\\aigb_0900_avery\\jspTeamProject\\workspace\\mommy_workspace\\WebContent\\images\\upload";
		int fileSize = 1024 * 1024 * 5;//5M

		
		//요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println(multi);
//		pfDao.insert(multi, serviceDao.getSeq());

		
//		//파일 추가
//		fDao.insert(multi, bDao.getSeq());

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return null;
	}
	
	public int transDay(String data) {
		if(data == null) {
			return 0;
		}
		
		return 1;
	}
	
	public int transInt (String data) {
		if(data == null) {
			return 0;
		}
		if(data.equals("on")) {
			return 1;
		}
		return 0;
	}

}
