package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class UpdateService implements ICommand{
	
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원정보수정 기능실행");

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");

		MemberDAO dao = new MemberDAO();
		MemberDTO changeInfo = new MemberDTO(info.getEmail(), pw, phone, addr);
		int cnt = dao.update(changeInfo);

		if (cnt > 0) {
			session.setAttribute("info", changeInfo);
			return "main.jsp";

		} else {
			return "update.jsp";
		}
		
		
		
	}
	
	
	

}
