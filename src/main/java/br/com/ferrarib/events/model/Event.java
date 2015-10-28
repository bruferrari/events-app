package br.com.ferrarib.events.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import com.sun.istack.NotNull;

/**
 * Model class that represents single event (table: "events")
 * 
 * @author Bruno Ferrari
 * @since 18/10/2015
 */

@Entity
@Table(name = "events")
@NamedQueries({
	@NamedQuery(name="EventsList", query="select e from Event e")
})
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Event implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public Event() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank
	private String title;

	@NotBlank
	private String description;

	@NotBlank
	private String author;

	@NotBlank
	private String location;

	@Temporal(TemporalType.TIMESTAMP)
	@NotNull
	private Date date_time;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Date getDate_time() {
		return date_time;
	}

	public void setDate_time(Date date_time) {
		this.date_time = date_time;
	}

}
