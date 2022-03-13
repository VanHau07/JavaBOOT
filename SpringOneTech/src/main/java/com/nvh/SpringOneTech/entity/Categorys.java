package com.nvh.SpringOneTech.entity;


import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "categorys")

public class Categorys {

	@Id
	@Column(name = "id")
	@GeneratedValue
	private Integer id;
	@Column(name = "ten", length = 50, nullable = false, unique = true)
	private String ten;
	@Column(name = "hinh_anh")
	private String hinh_anh;
	@Column(name = "parent_id")
	private Integer parent_id;
	
	
	
	@OneToMany (mappedBy = "categorys", cascade = CascadeType.ALL) // Quan hệ 1-n với đối tượng ở dưới (Person) (1 địa điểm có nhiều người ở)
    // MapopedBy trỏ tới tên biến Address ở trong Person.
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude // Khoonhg sử dụng trong toString ()
    private Collection<Products > products;
	
//	@OneToMany(mappedBy = "categorys", fetch = FetchType.LAZY)
//	@JsonIgnore
//	List<Products> products;
	@Column(name = "check_id")
	private Integer check_id;
	
//	public List<Products> getProducts() {
//		return products;
//	}
//
//	public void setProducts(List<Products> products) {
//		this.products = products;
//	}
//	

}