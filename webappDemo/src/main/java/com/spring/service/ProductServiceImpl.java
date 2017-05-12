package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.ProductDAO;
import com.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductService, ProductDAO {

	
	
	@Autowired
	private ProductDAO productDAO;
	
	public void saveProduct(Product product) {
		productDAO.saveProduct(product);
		
	}

	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDAO.getAllProducts();
	}

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProductById(id);
	}

	public void deleteProduct(int id) {
		productDAO.deleteProduct(id);
		
	}

}
