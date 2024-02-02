package Food_Tech.Dto;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.Data;
@Data
@Entity
public class HotelManager {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String pwd;
	private long phone;
	private String address;
	private String gender;
	private String HName;
	@OneToMany(mappedBy = "manager")
	private List<Item> item;
	public HotelManager() {
		super();
	}
	public HotelManager(String name, String email, String pwd, long phone, String address, String gender,
			String hName) {
		super();
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		HName = hName;
	}
	


}
