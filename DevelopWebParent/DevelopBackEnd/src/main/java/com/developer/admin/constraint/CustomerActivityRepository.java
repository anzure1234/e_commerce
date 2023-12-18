package com.developer.admin.constraint;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Customer;
import com.developer.common.entity.customer.CustomerActivity;

public interface CustomerActivityRepository extends CrudRepository<CustomerActivity, Integer> {
	public List<CustomerActivity> findByCustomer(Customer customer);

	@Modifying
	@Query(value = "DELETE FROM customer_activity WHERE customer_id = ?1", nativeQuery = true)
	void deleteAllByCustomerId(Integer customerId);
}
