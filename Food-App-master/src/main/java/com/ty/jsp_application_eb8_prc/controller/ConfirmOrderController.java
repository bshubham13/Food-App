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

import com.ty.jsp_application_eb8_prc.dao.ItemsDao;
import com.ty.jsp_application_eb8_prc.dto.Items;

@WebServlet("/saveorder")
public class ConfirmOrderController extends HttpServlet {
	static List<Items> list=new ArrayList<>();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String description = req.getParameter("description");
		long price = Long.parseLong(req.getParameter("price"));
		String offer = req.getParameter("offer");
		long quantity = Long.parseLong(req.getParameter("quantity"));

		Items items = new Items();
		items.setName(name);
		items.setDescription(description);
		items.setPrice(price);
		items.setOffer(offer);
		items.setQuantity(quantity);

		ItemsDao dao = new ItemsDao();
		Items items2 = dao.saveItems(items);
		list.add(items2);
	
		if (items2 != null) {
			req.setAttribute("list", list);
			req.setAttribute("user", SaveUserController.user);

			RequestDispatcher dispatcher = req.getRequestDispatcher("foodorder.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
