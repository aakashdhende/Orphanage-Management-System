package orphanage2.ORPHAN.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Orphan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private int age;
    private String gender;

    @OneToOne(mappedBy = "orphan", cascade = CascadeType.ALL)
    private Adoption adoption;

    @OneToMany(mappedBy = "orphan", cascade = CascadeType.ALL)
    private List<Donation> donations;

    public Orphan() {
    }

    public Orphan(Long id, String name, int age, String gender) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Orphan [id=" + id + ", name=" + name + ", age=" + age + ", gender=" + gender + "]";
    }
}