/*
 * @author VTA
 * @date May 25, 2020
 * @version 1.0
 */

package com.khosach.dto;

public class OrderCartDTO {
	private String fullName;
	private String address;
	private String numberPhone;
	private String email; 
	private String productIDs;
	private int paymentMethods;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNumberPhone() {
		return numberPhone;
	}
	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProductIDs() {
		return productIDs;
	}
	public void setProductIDs(String productIDs) {
		this.productIDs = productIDs;
	}
	public int getPaymentMethods() {
		return paymentMethods;
	}
	public void setPaymentMethods(int paymentMethods) {
		this.paymentMethods = paymentMethods;
	}
}
