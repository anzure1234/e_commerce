package com.developer.admin.constraint;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Product;

public interface ProductContraintRepository extends CrudRepository<Product, Integer> {

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM products WHERE brand_id = ?1", nativeQuery = true)
	void deleteAllByBrandId(Integer brandId);
	
	@Modifying
	@Transactional
	@Query(value = "DELETE FROM products WHERE category_id = ?1", nativeQuery = true)
	void deleteAllByCategoryId(Integer categoryId);
	
	@Modifying
	@Transactional
	@Query(value = "DELETE FROM ProductDetail pd WHERE pd.product IN (SELECT p FROM Product p WHERE p.brand.id = ?1)")
	void deleteAllProductDetailByBrandId(Integer brandId);

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM ProductImage pi WHERE pi.product IN (SELECT p FROM Product p WHERE p.brand.id = ?1)")
	void deleteAllProductImageByBrandId(Integer brandId);
}
