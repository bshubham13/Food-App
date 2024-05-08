package com.ty.jsp_application_eb8_prc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ty.jsp_application_eb8_prc.dao.ItemsDao;
import com.ty.jsp_application_eb8_prc.dto.Items;

@WebServlet("/editorder")
public class EditOrderController extends HttpServlet {
	static Items items3;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String description = req.getParameter("description");
		long price = Long.parseLong(req.getParameter("price"));
		String offer = req.getParameter("offer");
		long quantity = Long.parseLong(req.getParameter("quantity"));

		Items items = new Items();
		items.setId(id);
		items.setName(name);
		items.setDescription(description);
		items.setPrice(price);
		items.setOffer(offer);
		items.setQuantity(quantity);

		ItemsDao dao = new ItemsDao();
		for (Items items2 : ConfirmOrderController.list) {
			if (id == items2.getId()) {
				items3 = items2;
			}
		}
		ConfirmOrderController.list.remove(items3);
		Items items2 = dao.updateItems(items);
		ConfirmOrderController.list.add(items2);
		if (items2 != null) {
			req.setAttribute("list", ConfirmOrderController.list);
			req.setAttribute("user", SaveUserController.user);
			RequestDispatcher dispatcher = req.getRequestDispatcher("foodorder.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
