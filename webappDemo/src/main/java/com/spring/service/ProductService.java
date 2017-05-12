package com.spring.service;

import java.util.List;

import com.spring.model.Product;


public interface ProductService {
	
	void saveProduct(Product product);

	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);

}
