package com.ty.jsp_application_eb8_prc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.jsp_application_eb8_prc.dto.Items;

public class ItemsDao {

	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("vinod").createEntityManager();
	}

	public Items saveItems(Items items) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(items);
		entityTransaction.commit();

		return items;
	}

	public List<Items> getAllItems() {
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery("SELECT i FROM Items i");
		List<Items> items = query.getResultList();
		return items;
	}

	public Items getItemsById(int id) {
		return getEntityManager().find(Items.class, id);
	}

	public Items updateItems(Items items) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(items);
		entityTransaction.commit();

		return items;
	}

	public boolean deleteItems(int id) {
		EntityManager entityManager = getEntityManager();
		Items items = entityManager.find(Items.class, id);
		if (items != null) {
			EntityTransaction entityTransaction = entityManager.getTransaction();
			entityTransaction.begin();
			entityManager.remove(items);
			entityTransaction.commit();

			return true;
		}
		return false;
	}

}
