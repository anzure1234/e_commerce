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
//import com.developer.admin.comment.entity.CommentReplies;
//import com.developer.common.entity.Customer;
//
//public interface CommentRepliesRepository extends CrudRepository<CommentReplies, Integer> {
//	
//	public List<CommentReplies> findByCustomer(Customer customer);
//	
//	@Modifying
//	@Transactional
//	@Query(value = "DELETE FROM comment_replies WHERE customer_id = ?1", nativeQuery = true)
//	void deleteAllByCustomerId(Integer customerId);
//}
