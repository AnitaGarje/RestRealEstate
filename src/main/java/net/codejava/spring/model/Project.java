package net.codejava.spring.model;

import java.util.HashSet;
import java.util.Set;//note that set is there is hibernate.mapping too but we need to refer util.set

public class Project implements  java.io.Serializable {/// why  serializable?
	private int id;
	private String code;
	private String description;
	//private Set<Sector> sectors;//= new HashSet<Sector>(0); //? why  n why set--->one to many but didbn't understand the reason.
	public Project()
	{
		
	}
	public Project(int id, String code, String description/*, Set<Sector> sectors*/) {
		//super();
		this.id=id;
		this.code = code;
		this.description = description;
		//this.sectors = sectors;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	/*public Set<Sector> getSectors() {
		return sectors;
	}
	public void setSectors(Set<Sector> sectors) {
		this.sectors = sectors;
	}*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	


	

}
