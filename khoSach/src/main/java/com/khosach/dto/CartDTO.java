/*
 * @author VTA
 * @date May 23, 2020
 * @version 1.0
 */

package com.khosach.dto;

public class CartDTO {
	private Long cartID;
	private Long quantity;
	private ProductDTO product;
	private Long userID;

	public Long getCartID() {
		return cartID;
	}

	public void setCartID(Long cartID) {
		this.cartID = cartID;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public ProductDTO getProduct() {
		return product;
	}

	public void setProduct(ProductDTO product) {
		this.product = product;
	}

	public Long getUserID() {
		return userID;
	}

	public void setUserID(Long userID) {
		this.userID = userID;
	}
}
