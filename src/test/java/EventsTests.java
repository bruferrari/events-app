import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.junit.Ignore;
import org.junit.Test;

import br.com.ferrarib.events.model.Event;
import br.com.ferrarib.events.repository.EventsRepositoryImpl;
import br.com.ferrarib.events.util.JPAUtil;

public class EventsTests {

	EventsRepositoryImpl events = new EventsRepositoryImpl();

	@Test
	@Ignore
	public void testInsertOfAnEventOnDatabase() {

		Event event = new Event();
		event.setDescription("test event");
		event.setTitle("TEST");
		event.setAuthor("Bruno Ferrari");
		event.setDate_time(new Date());
		event.setLocation("Ocean av. Miami beach. Miami, FL");

		events.saveOrUpdate(event);
	}

	@Test
	@Ignore
	public void mustReturnListOfAllEvents() {
		List<Event> listOf = events.list();
		System.out.println(listOf);
	}
	
	@Test
	@Ignore
	public void mustReturnSingleEventByIdParam() {
		Event event = new EventsRepositoryImpl().getEventById(5L);
		System.out.println(event);
	}
	
	@Test
	public void mustUpdateEvent() {
		Event event = new Event();
		event.setId(1L);
		event.setTitle("MODIFIED!!!");
		event.setDescription("modified");
		event.setAuthor("modified");
		event.setLocation("modified");
		event.setDate_time(new Date());
		try {
			new EventsRepositoryImpl().saveOrUpdate(event);
			System.out.println("updated!");
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
	}
}
