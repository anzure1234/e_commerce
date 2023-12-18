package com.developer.admin.constraint;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Brand;

public interface BrandContraintRepository extends CrudRepository<Brand, Integer> {

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM brands_categories WHERE category_id = ?1", nativeQuery = true)
	void deleteAllByCategoryId(Integer categoryId);
}
