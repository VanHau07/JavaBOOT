package com.nvh.SpringOneTech.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orders implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	Date ngaydat;
	Integer phone;
	String dia_chi;
	Double tien;
	String chuthich;
	String status;
	String mau;
	String email;

	@ManyToOne
	@JoinColumn(name = "id_users")
	Users users;

	@OneToMany(mappedBy = "orders", fetch = FetchType.LAZY)
	@JsonIgnore
	List<Order_details> orderDetails;

	public List<Order_details> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<Order_details> orderDetails) {
		this.orderDetails = orderDetails;
	}

}


