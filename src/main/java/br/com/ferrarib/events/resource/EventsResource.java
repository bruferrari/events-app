package br.com.ferrarib.events.resource;

import java.net.URI;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import br.com.ferrarib.events.model.Event;
import br.com.ferrarib.events.model.Events;
import br.com.ferrarib.events.repository.EventsRepositoryImpl;

@Path("events")
public class EventsResource {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Events getAllEvents() {
		List<Event> events = new EventsRepositoryImpl().list();
		Events allEvents = new Events();
		allEvents.setEvents(events);
		return allEvents;
	}
	
	@GET
	@Path("/v2")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Event> getAllEventsV2() {
		List<Event> events = new EventsRepositoryImpl().list();
		return events;
	}
	
	@Path("/{eventId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Event getEventById(@PathParam("eventId") Long eventId) {
		Event event = new EventsRepositoryImpl().getEventById(eventId);
		return event;
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response addNewEvent(Event event) {
		new EventsRepositoryImpl().saveOrUpdate(event);
		URI uri = URI.create("/event/" + event.getId());
		return Response.created(uri).build();
	}
	
	@Path("/{eventId}")
	@DELETE
	public Response removeEvent(@PathParam("eventId") Long eventId) {
		Event event = new EventsRepositoryImpl().getEventById(eventId);
		new EventsRepositoryImpl().removeEvent(event);
		return Response.ok().build();
	}
	
	@Path("/{eventId}")
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response updateEvent(Event modifiedEvent, @PathParam("eventId") Long eventId) {
		Event event = new EventsRepositoryImpl().getEventById(eventId);
		event.setAuthor(modifiedEvent.getAuthor());
		event.setDescription(modifiedEvent.getDescription());
		event.setDate_time(modifiedEvent.getDate_time());
		event.setLocation(modifiedEvent.getLocation());
		event.setTitle(modifiedEvent.getTitle());
		new EventsRepositoryImpl().saveOrUpdate(event);
		return Response.ok().build();
	}
}
