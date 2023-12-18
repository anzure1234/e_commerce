package com.developer.admin.constraint;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Product;
import com.developer.common.entity.order.OrderDetail;

public interface OrderDetailConstraintRepository extends CrudRepository<OrderDetail, Integer> {

	public List<OrderDetail> findByProduct(Product product);

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM order_details WHERE product_id = ?1", nativeQuery = true)
	void deleteAllByProductId(Integer productId);
	
	/*
	 * @Modifying
	 * 
	 * @Transactional
	 * 
	 * @Query(value =
	 * "DELETE FROM OrderDetail or WHERE or.product IN (SELECT p FROM Product p WHERE p.category.id = ?1)"
	 * ) void deleteAllByCategoryId(Integer categoryId);
	 */
	
}