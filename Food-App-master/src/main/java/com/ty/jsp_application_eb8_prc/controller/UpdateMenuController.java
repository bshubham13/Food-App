package com.ty.jsp_application_eb8_prc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.jsp_application_eb8_prc.dao.MenuDao;
import com.ty.jsp_application_eb8_prc.dto.Menu;

@WebServlet("/update")
public class UpdateMenuController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		MenuDao dao = new MenuDao();
		Menu menu = dao.getMenuById(id);

		if (menu != null) {
			req.setAttribute("menu", menu);
			RequestDispatcher dispatcher = req.getRequestDispatcher("editmenu.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
