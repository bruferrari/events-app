package br.com.ferrarib.events.repository;

import java.util.List;

import br.com.ferrarib.events.model.Event;

public interface EventsRepository {

	public void saveOrUpdate(Event event);
	
	public List<Event> list();
	
	public Event getEventById(Long id);
	
	public void removeEvent(Event event);
}
