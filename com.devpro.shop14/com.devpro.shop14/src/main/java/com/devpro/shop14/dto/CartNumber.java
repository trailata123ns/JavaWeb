package com.devpro.shop14.dto;

public class CartNumber {
private int productNumber;

public int getProductNumber() {
	return productNumber;
}

public void setProductNumber(int productNumber) {
	this.productNumber = productNumber;
}

public CartNumber(int productNumber) {
	super();
	this.productNumber = productNumber;
}

public CartNumber() {
	super();
}


}
