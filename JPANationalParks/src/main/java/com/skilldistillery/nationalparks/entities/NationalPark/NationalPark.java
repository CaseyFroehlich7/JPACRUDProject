package com.skilldistillery.nationalparks.entities.NationalPark;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "national_park")
public class NationalPark {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String state;
	
	private String description;

//	@Column(name = "image_url")
//	private String imageUrl;

	@Column(name = "year_established")
	private String yearEstablished;

	public NationalPark() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

//	public String getImageUrl() {
//		return imageUrl;
//	}
//
//	public void setImageUrl(String imageUrl) {
//		this.imageUrl = imageUrl;
//	}

	public String getYearEstablished() {
		return yearEstablished;
	}

	public void setYearEstablished(String yearEstablished) {
		this.yearEstablished = yearEstablished;
	}

	@Override
	public String toString() {
		return "NationalPark [id=" + id + ", name=" + name + ", state=" + state + ", description=" + description
				+ ", imageUrl=" + ", yearEstablished=" + yearEstablished + "]";
	}


}
