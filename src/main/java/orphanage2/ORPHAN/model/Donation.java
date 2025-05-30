package orphanage2.ORPHAN.model;

import jakarta.persistence.*;

@Entity
public class Donation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String donorName;
    private double amount;
    private String message;

    @ManyToOne
    @JoinColumn(name = "orphan_id")
    private Orphan orphan;

    public Donation() {}

    public Donation(Long id, String donorName, double amount, String message, Orphan orphan) {
        this.id = id;
        this.donorName = donorName;
        this.amount = amount;
        this.message = message;
        this.orphan = orphan;
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDonorName() {
		return donorName;
	}

	public void setDonorName(String donorName) {
		this.donorName = donorName;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Orphan getOrphan() {
		return orphan;
	}

	public void setOrphan(Orphan orphan) {
		this.orphan = orphan;
	}

	@Override
	public String toString() {
		return "Donation [id=" + id + ", donorName=" + donorName + ", amount=" + amount + ", message=" + message
				+ ", orphan=" + orphan + "]";
	}
}
