package com.backendapp.furnituremagic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backendapp.furnituremagic.Product;


@Repository
public interface ProductRepo extends JpaRepository<Product,Integer> 
{
	 @Query("from Product where product_id=:product_id")
	 Product getProductData(@Param("product_id")int product_id);
}
