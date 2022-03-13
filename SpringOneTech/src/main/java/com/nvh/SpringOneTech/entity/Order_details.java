package com.nvh.SpringOneTech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="order_details")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order_details {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	Double giaban;
	Integer soluongban;
	Double giamgia;

	@ManyToOne
	@JoinColumn(name = "id_orders")
	Orders orders;

	@ManyToOne
	@JoinColumn(name = "id_products")
	Products products;
}
