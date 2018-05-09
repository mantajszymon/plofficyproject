package pl.office.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="PLOFFICE_PLANZAJEC")
public class PlanZajec {

private static final long serialVersionUID = 5183336103335518601L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name="_Event")
	private String event;
	
	@Column(name="_EventCat")
	private String eventCategory;
	
	@Column(name="_Weighting")
	private String weighting;
	
	@Column(name="_Module")
	private String module;
	
	@Column(name="_Room")
	private String room;
	
	@Column(name="_StaffSurname")
	private String staffSurname;
	
	@Column(name="_StaffForenames")
	private String staffForename;
	
	@Column(name="_Group")
	private String group;
	
	@Column(name="_Student")
	private String student;
	
	@Column(name="_Protected")
	private String isProtected;
	
	@Column(name="_Global")
	private String global;
	
	@Column(name="_Description")
	private String description;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getEventCategory() {
		return eventCategory;
	}

	public void setEventCategory(String eventCategory) {
		this.eventCategory = eventCategory;
	}

	public String getWeighting() {
		return weighting;
	}

	public void setWeighting(String weighting) {
		this.weighting = weighting;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getStaffSurname() {
		return staffSurname;
	}

	public void setStaffSurname(String staffSurname) {
		this.staffSurname = staffSurname;
	}

	public String getStaffForename() {
		return staffForename;
	}

	public void setStaffForename(String staffForename) {
		this.staffForename = staffForename;
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	public String getStudent() {
		return student;
	}

	public void setStudent(String student) {
		this.student = student;
	}

	public String getIsProtected() {
		return isProtected;
	}

	public void setIsProtected(String isProtected) {
		this.isProtected = isProtected;
	}

	public String getGlobal() {
		return global;
	}

	public void setGlobal(String global) {
		this.global = global;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
