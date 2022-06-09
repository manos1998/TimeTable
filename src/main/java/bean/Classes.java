package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "Classes")
@Table(name = "CLASSES")
public class Classes {

	@Id
	@Column(name = "ID", nullable = false)
	@SequenceGenerator(name = "ID", sequenceName = "CLASSES_SEQ")
	@GeneratedValue(strategy=GenerationType.IDENTITY, generator = "ID")
	private long BatchId;
	private String subjectId1;
	private String subjectId2;
	private String subjectId3;
	private String subjectId4;
	private String subjectId5;
	private String subjectId6;
	private String subjectId7;
	private String subjectId8;

	public long getBatchId() {
		return BatchId;
	}

	public void setBatchId(long batchId) {
		BatchId = batchId;
	}

	public String getSubjectId1() {
		return subjectId1;
	}

	public void setSubjectId1(String subjectId1) {
		this.subjectId1 = subjectId1;
	}

	public String getSubjectId2() {
		return subjectId2;
	}

	public void setSubjectId2(String subjectId2) {
		this.subjectId2 = subjectId2;
	}

	public String getSubjectId3() {
		return subjectId3;
	}

	public void setSubjectId3(String subjectId3) {
		this.subjectId3 = subjectId3;
	}

	public String getSubjectId4() {
		return subjectId4;
	}

	public void setSubjectId4(String subjectId4) {
		this.subjectId4 = subjectId4;
	}

	public String getSubjectId5() {
		return subjectId5;
	}

	public void setSubjectId5(String subjectId5) {
		this.subjectId5 = subjectId5;
	}

	public String getSubjectId6() {
		return subjectId6;
	}

	public void setSubjectId6(String subjectId6) {
		this.subjectId6 = subjectId6;
	}

	public String getSubjectId7() {
		return subjectId7;
	}

	public void setSubjectId7(String subjectId7) {
		this.subjectId7 = subjectId7;
	}

	public String getSubjectId8() {
		return subjectId8;
	}

	public void setSubjectId8(String subjectId8) {
		this.subjectId8 = subjectId8;
	}

	public Classes(long batchId, String subjectId1, String subjectId2, String subjectId3, String subjectId4,
			String subjectId5, String subjectId6, String subjectId7, String subjectId8) {
		super();
		BatchId = batchId;
		this.subjectId1 = subjectId1;
		this.subjectId2 = subjectId2;
		this.subjectId3 = subjectId3;
		this.subjectId4 = subjectId4;
		this.subjectId5 = subjectId5;
		this.subjectId6 = subjectId6;
		this.subjectId7 = subjectId7;
		this.subjectId8 = subjectId8;
	}

	public Classes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
