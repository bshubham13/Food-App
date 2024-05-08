package com.ty.jsp_application_eb8_prc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.jsp_application_eb8_prc.dto.Menu;

public class MenuDao {

	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("vinod").createEntityManager();
	}

	public Menu saveMenu(Menu menu) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(menu);
		entityTransaction.commit();

		return menu;
	}

	public Menu getMenuById(int id) {
		return getEntityManager().find(Menu.class, id);
	}

	public Menu updateMenu(Menu menu) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(menu);
		entityTransaction.commit();

		return menu;
	}

	public boolean deleteMenu(int id) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		Menu menu = entityManager.find(Menu.class, id);
		if (menu != null) {
			entityTransaction.begin();
			entityManager.remove(menu);
			entityTransaction.commit();

			return true;
		}
		return false;
	}

	public List<Menu> getAllMenus() {
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery("SELECT m FROM Menu m");
		List<Menu> menus = query.getResultList();
		return menus;
	}

}
