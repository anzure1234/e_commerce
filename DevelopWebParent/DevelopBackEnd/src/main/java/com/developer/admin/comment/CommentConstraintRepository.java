//package com.developer.admin.comment;
//
//import java.util.List;
//
//import javax.transaction.Transactional;
//
//import org.springframework.data.jpa.repository.Modifying;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
//
//import com.developer.admin.comment.entity.Comments;
//import com.developer.common.entity.Customer;
//
//public interface CommentConstraintRepository extends CrudRepository<Comments, Integer> {
//	
//	public List<Comments> findByCustomer(Customer customer);
//	
//	@Modifying
//	@Transactional
//	@Query(value = "DELETE FROM comments WHERE customer_id = ?1", nativeQuery = true)
//	void deleteAllByCustomerId(Integer customerId);
//}
