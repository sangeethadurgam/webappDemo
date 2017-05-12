package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Product;
import com.spring.service.ProductService;

@Controller
public class ProductController {
	
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String getPage(@ModelAttribute("product")Product product,BindingResult bindingResult)
	{
		
		return "productform";
		
		
	}
	
	

	@RequestMapping("admin/product/productform")
	public String getProductForm(Model model)
	{
		model.addAttribute("product",new Product());
		return "productform";
	}	
	
/*	=======================saving product Object=====================================*/
	@RequestMapping("admin/product/saveproduct")
	public String saveProduct(@ModelAttribute(name="product") Product product)
	{
		productService.saveProduct(product);
		return "redirect:/all/product/productlist";
	}
	
	
	/*	=======================Listing product Object=====================================*/
	
	@RequestMapping("/all/product/productlist")
	public String getAllProducts(Model model)
	{
		List<Product> products=productService.getAllProducts();
		for(Product p:products)
		{
			System.out.println(p.getName());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products",products);
		return "productlist";
	}
	
	/*	=======================Listing Individual product Object=====================================*/
	@RequestMapping("/all/product/viewproduct/{id}")
	public String viewProduct(@PathVariable int id,Model model)
	{
		Product product=productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
	}
	
	/*	=======================Deleting Individual product Object=====================================*/
	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id)
	{
		productService.deleteProduct(id);
		return "redirect:/all/product/productlist";
	}

}
