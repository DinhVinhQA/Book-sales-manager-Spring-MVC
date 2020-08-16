/*
 * @author VTA
 * @date May 15, 2020
 * @version 1.0
 */

package com.khosach.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "product")
@EntityListeners(AuditingEntityListener.class)
public class ProductEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "productid")
	private Long productID;

	@Column(name = "productname", columnDefinition = "nvarchar(255)")
	private String productName;

	@Column(name = "quantity")
	private Long quantity;

	@Column(name = "price")
	private Long price;

	@Column(name = "saleprice")
	private Long salePrice;

	@Column(name = "author", columnDefinition = "nvarchar(255)")
	private String author;

	@Column(columnDefinition = "nvarchar(255)")
	private String publisher;

	@Column(name = "yearofpublication")
	private Integer yearOfPublication;

	@Column(columnDefinition = "nvarchar(255)")
	private String thumbnail;

	@Column(name = "description", columnDefinition = "text")
	private String description;

	@Column(name = "numberofpages")
	private Integer numberOfPages;

	@Column(name = "dateadded",columnDefinition="date")
	@CreatedDate
	private Date dateAdded;

	@Column(name = "status")
	private Integer status;

	@Column(name = "isdelete")
	private Integer isDelete;

	@ManyToOne
	@JoinColumn(name = "groupproductid")
	private GroupProductEntity groupProductEntity;

	@OneToMany(mappedBy = "products", fetch = FetchType.LAZY)
	private List<OrderDetailEntity> orderDetails;

	@OneToMany(mappedBy = "products")
	private List<CartEntity> carts;
	
	@OneToOne(mappedBy="product",fetch=FetchType.LAZY)
	private ProductSaleEntity productSale;

	public ProductSaleEntity getProductSale() {
		return productSale;
	}

	public void setProductSale(ProductSaleEntity productSale) {
		this.productSale = productSale;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}
	public List<OrderDetailEntity> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public List<CartEntity> getCarts() {
		return carts;
	}

	public void setCarts(List<CartEntity> carts) {
		this.carts = carts;
	}

	public Long getProductID() {
		return productID;
	}

	public void setProductID(Long productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Long getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Long salePrice) {
		this.salePrice = salePrice;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Integer getYearOfPublication() {
		return yearOfPublication;
	}

	public void setYearOfPublication(Integer yearOfPublication) {
		this.yearOfPublication = yearOfPublication;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getNumberOfPages() {
		return numberOfPages;
	}

	public void setNumberOfPages(Integer numberOfPages) {
		this.numberOfPages = numberOfPages;
	}


	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public GroupProductEntity getGroupProductEntity() {
		return groupProductEntity;
	}

	public void setGroupProductEntity(GroupProductEntity groupProductEntity) {
		this.groupProductEntity = groupProductEntity;
	}

}
