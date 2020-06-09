package com.backendapp.furnituremagic;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	int product_id;
	String product_name;
	String description;
	int price;
	int disc_price;
	String isactive;

	public Product() {
		
	}
	public Product(int product_id, String product_name, String description, int price, int disc_price, String isactive) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.description = description;
		this.price = price;
		this.disc_price = disc_price;
		this.isactive = isactive;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDisc_price() {
		return disc_price;
	}

	public void setDisc_price(int disc_price) {
		this.disc_price = disc_price;
	}

	public String getIsactive() {
		return isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", product_name=" + product_name + ", description=" + description
				+ ", price=" + price + ", discPrice=" + disc_price + ", isactive=" + isactive + "]";
	}

}
