package com.helpPet.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.ActionForward;
import com.helpPet.app.member.MemberCheckIdOk;
import com.helpPet.app.member.MemberJoinOk;
import com.helpPet.app.member.MemberLoginOk;
import com.helpPet.app.member.MemberLogout;

public class MemberFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	} 
	
		protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String requestURI = req.getRequestURI();
			String contextPath = req.getContextPath();
			String command = requestURI.substring(contextPath.length());
			ActionForward af = null;
			
			if(command.equals("/member/MemberCheckIdOk.me")) {
				new MemberCheckIdOk().execute(req, resp);
				
			}else if(command.equals("/member/MemberCheckNickOk.me")) {
				new MemberCheckNickOk().execute(req, resp);
				
			}else if(command.equals("/member/MemberCheckMailOk.me")) {
				new MemberCheckMailOk().execute(req, resp);
				
			
			}else if(command.equals("/member/MemberJoin.me")) {
				af = new ActionForward();
				af.setRedirect(false);
				af.setPath("/jsp/member/memberJoin2.jsp");
				
			}else if(command.equals("/member/MemberJoinOk.me")) {
				af = new MemberJoinOk().execute(req, resp);
				
			}else if(command.equals("/member/MemberLogin.me")) {
				af = new ActionForward();
				af.setRedirect(false);
				af.setPath("/app/jsp/member/login.jsp");
				
			}else if(command.equals("/member/MemberLoginOk.me")) {
				af = new MemberLoginOk().execute(req, resp);
				
			}else if(command.equals("/member/MemberLogout.me")) {
				af = new MemberLogout().execute(req, resp);
			}
			
			//???????????????
			if(af != null) {
				if(af.isRedirect()) {
					//redirect
					resp.sendRedirect(af.getPath());
				}else {
					//forward
					//request???????????? Dispatch??? ????????? ???, ????????? ????????? ????????????.
					//dispatch : ????????? ????????? ??????????????? ??????
					RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
					//dispatcher???????????? forward()??? ????????? ??? request??? response?????? ??? ??? ???????????????
					//????????? ???????????? ???????????? ????????????.
					dispatcher.forward(req, resp);
				}
			}
		}
	}