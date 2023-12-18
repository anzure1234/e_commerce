package com.developer.admin.constraint;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.CartItem;
import com.developer.common.entity.Customer;

public interface CartItemRepository extends CrudRepository<CartItem, Integer> {

	public List<CartItem> findByCustomer(Customer customer);

	@Modifying
	@Query(value = "DELETE FROM cart_items WHERE customer_id = ?1", nativeQuery = true)
	void deleteAllByCustomerId(Integer customerId);

}
