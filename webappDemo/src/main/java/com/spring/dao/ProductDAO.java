package com.spring.dao;

import java.util.List;

import com.spring.model.Product;

public interface ProductDAO {
	
	void saveProduct(Product product);

	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);

}
