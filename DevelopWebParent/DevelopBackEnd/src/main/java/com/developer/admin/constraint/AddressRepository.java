package com.developer.admin.constraint;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Address;
import com.developer.common.entity.Customer;

public interface AddressRepository extends CrudRepository<Address, Integer> {

	public List<Address> findByCustomer(Customer customer);

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM addresses WHERE customer_id = ?1", nativeQuery = true)
	void deleteAllByCustomerId(Integer customerId);
}
