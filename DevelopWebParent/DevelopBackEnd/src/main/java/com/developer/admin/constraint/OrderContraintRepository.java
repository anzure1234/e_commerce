package com.developer.admin.constraint;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Customer;
import com.developer.common.entity.order.Order;

public interface OrderContraintRepository extends CrudRepository<Order, Integer> {

	public List<Order> findByCustomer(Customer customer);
	
	@Modifying
    @Transactional
    @Query(value = "DELETE FROM orders WHERE customer_id = ?1", nativeQuery = true)
    void deleteAllByCustomerId(Integer customerId);
	
}
