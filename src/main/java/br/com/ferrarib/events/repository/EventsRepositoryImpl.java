package br.com.ferrarib.events.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import br.com.ferrarib.events.model.Event;
import br.com.ferrarib.events.util.JPAUtil;

public class EventsRepositoryImpl implements EventsRepository {

	private EntityManager manager;
	private EntityTransaction transaction;

	public EventsRepositoryImpl() {
		this.manager = new JPAUtil().getEntityManager();
		transaction = manager.getTransaction();
	}

	@Override
	public void saveOrUpdate(Event event) {
		manager.getTransaction().begin();
		try {
			manager.merge(event);
		} catch (RuntimeException e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			manager.getTransaction().commit();
		}
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Event> list() {
		List<Event> events = null;
		manager.getTransaction().begin();
		try {
			Query query = manager.createNamedQuery("EventsList");
			events = query.getResultList();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return events;
	}
	
	@Override
	public Event getEventById(Long id) {
		Event event = null;
		manager.getTransaction().begin();
		try {
			event = manager.find(Event.class, id);
		} catch (RuntimeException e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return event;
	}
	
	@Override
	public void removeEvent(Event event) {
		manager.getTransaction().begin();
		try {
			Event eventToBeRemoved = manager.getReference(Event.class, event.getId());
			manager.remove(eventToBeRemoved);
			manager.getTransaction().commit();
		} catch (RuntimeException e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
	}
}
