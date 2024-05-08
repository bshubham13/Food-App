package com.ty.jsp_application_eb8_prc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.jsp_application_eb8_prc.dao.FoodOrderDao;
import com.ty.jsp_application_eb8_prc.dao.UserDao;
import com.ty.jsp_application_eb8_prc.dto.FoodOrder;
import com.ty.jsp_application_eb8_prc.dto.User;

@WebServlet("/endof")
public class EndOfProject extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ConfirmOrderController.list.clear();
		
		RequestDispatcher requestDispatcher=req.getRequestDispatcher("home.jsp");
		requestDispatcher.include(req, resp);
	}
}
