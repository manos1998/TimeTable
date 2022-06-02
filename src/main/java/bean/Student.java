package bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Student implements Serializable {
	
	@Id
	@GeneratedValue
	private long studentId;
	private String name;
	private String address;
	private String contact;
	private String batchId;


	public long getStudentId() {
		return studentId;
	}

	public void setStudentId(long studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}

	

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String name, String address, String contact, String batchId) {
		super();
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.batchId = batchId;
	}
	
	
}