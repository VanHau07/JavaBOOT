package com.nvh.SpringOneTech.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "users")

public class Users {
	@Id	
	@Column(name = "id_user")
	private String id_user;
		
	@Column(name = "full_name")
	private String full_name;

	@Column(name = "password")
	private String password;

	
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "email")
	private String email;

	@Column(name = "address")
	private String address;

	@Column(name = "activated")
	private Boolean activated;

	@Column(name = "admin")
	private Boolean admin;
	
	@Column(name = "images")
	private String images;
	
	
	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	@JsonIgnore
	List<Orders> orders;
	
	
}