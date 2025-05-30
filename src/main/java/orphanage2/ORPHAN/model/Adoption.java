package orphanage2.ORPHAN.model;

import jakarta.persistence.*;

@Entity
public class Adoption {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String parentName;
    private String contactInfo;

    @OneToOne
    @JoinColumn(name = "orphan_id", unique = true)
    private Orphan orphan;

    public Adoption() {}

    public Adoption(Long id, String parentName, String contactInfo, Orphan orphan) {
        this.id = id;
        this.parentName = parentName;
        this.contactInfo = contactInfo;
        this.orphan = orphan;
    }

    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getContactInfo() {
		return contactInfo;
	}

	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}

	public Orphan getOrphan() {
		return orphan;
	}

	public void setOrphan(Orphan orphan) {
		this.orphan = orphan;
	}

	@Override
	public String toString() {
		return "Adoption [id=" + id + ", parentName=" + parentName + ", contactInfo=" + contactInfo + ", orphan="
				+ orphan + "]";
	}
}
