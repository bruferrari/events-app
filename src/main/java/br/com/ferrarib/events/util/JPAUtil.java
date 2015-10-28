package br.com.ferrarib.events.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	private static EntityManagerFactory entityManagerFactory = Persistence
			.createEntityManagerFactory("events-service");
	
	public EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
