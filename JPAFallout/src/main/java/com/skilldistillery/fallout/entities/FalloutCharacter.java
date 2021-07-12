package com.skilldistillery.fallout.entities;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fallout_character")
public class FalloutCharacter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String primarySkill;
	private String faction;
	private boolean alive;
	private String born;
	private int caps;
	private String photo;
	
	
	// NO-ARG
	public FalloutCharacter() {
		super();
	}
	

	public FalloutCharacter(int id, String name, String primarySkill, String faction, boolean alive, String born,
			int caps, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.primarySkill = primarySkill;
		this.faction = faction;
		this.alive = alive;
		this.born = born;
		this.caps = caps;
		this.photo = photo;
	}


	// GETTERS-SETTERS
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

	public String getPrimarySkill() {
		return primarySkill;
	}
	public void setPrimarySkill(String primarySkill) {
		this.primarySkill = primarySkill;
	}

	public String getFaction() {
		return faction;
	}
	public void setFaction(String faction) {
		this.faction = faction;
	}

	public boolean isAlive() {
		return alive;
	}
	public void setAlive(boolean alive) {
		this.alive = alive;
	}

	public String getBorn() {
		return born;
	}
	public void setBorn(String born) {
		this.born = born;
	}

	public int getCaps() {
		return caps;
	}
	public void setCaps(int caps) {
		this.caps = caps;
	}
	

	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FalloutCharacter [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", primarySkill=");
		builder.append(primarySkill);
		builder.append(", faction=");
		builder.append(faction);
		builder.append(", alive=");
		builder.append(alive);
		builder.append(", born=");
		builder.append(born);
		builder.append(", caps=");
		builder.append(caps);
		builder.append("]");
		return builder.toString();
	}

}
