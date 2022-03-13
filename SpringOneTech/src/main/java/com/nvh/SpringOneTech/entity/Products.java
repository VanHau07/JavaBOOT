package com.nvh.SpringOneTech.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
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
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table( name ="products")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Products {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String ten;
	private String mo_ta;
	private double gia_goc;
	private double gia_nhap_vao;
	private Integer soluong;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date thoi_gian;
	private double ma_giam;
	private String hinh_anh;
	private boolean deal_week;
	private boolean deal_new;
	private boolean deal_favor;
	private boolean deal_best;
	private boolean sale;
	private boolean deal_hot;
	
	@ManyToOne
	@JoinColumn(name="id_category")
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
    private Categorys categorys;

	
//
//	@ManyToOne
//	@JoinColumn(name = "id_category")
//	Categorys categorys;
//	
	
	private String mo_ta_ngan;
	private String chu_de;
	private String anh_1;
	private String anh_2;
	private String anh_3;
	private Integer giam_gia;
	private Integer luot_xem;
	private Integer luot_thich;
	private String detail_image;

	
	
	
	
	
	
	
	
	@OneToMany(mappedBy = "products", fetch = FetchType.LAZY)
	@JsonIgnore
	List<Order_details> orderDetails;

	public Categorys getCategorys() {
		return categorys;
	}

	public void setCategorys(Categorys categorys) {
		this.categorys = categorys;
	}
}

