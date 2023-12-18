package com.developer.admin.customer;

import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.developer.admin.constraint.AddressRepository;
import com.developer.admin.constraint.CartItemRepository;
import com.developer.admin.constraint.OrderContraintRepository;
import com.developer.admin.constraint.CustomerActivityRepository;
import com.developer.admin.paging.PagingAndSortingHelper;
import com.developer.admin.security.DevelopUserDetails;
import com.developer.admin.setting.country.CountryRepository;
import com.developer.common.entity.Address;
import com.developer.common.entity.CartItem;
import com.developer.common.entity.Country;
import com.developer.common.entity.Customer;
import com.developer.common.entity.customer.CustomerActivity;
import com.developer.common.entity.order.Order;
import com.developer.common.entity.order.OrderDetail;
import com.developer.common.entity.order.OrderTrack;
import com.developer.common.exception.CustomerNotFoundException;

@Service
@Transactional
public class CustomerService {
	public static final int CUSTOMERS_PER_PAGE = 10;

	@Autowired private CustomerRepository customerRepo;
	@Autowired private CountryRepository countryRepo;
	@Autowired private PasswordEncoder passwordEncoder;
	
//	@Autowired private CustomerReplayRepository customerReplayRepo;
	
	@Autowired private CartItemRepository cartItemRepo;
	@Autowired private AddressRepository addressRepo;
	@Autowired private OrderContraintRepository contraintRepo;
//	@Autowired private CommentConstraintRepository commentConstraintRepo;
//	@Autowired private CommentRepliesRepository commentRepliesRepo;
	@Autowired private CustomerActivityRepository customerActivityRepo;
	
	public void listByPage(int pageNum, PagingAndSortingHelper helper){
		helper.listEntities(pageNum, CUSTOMERS_PER_PAGE, customerRepo);
		
	}
	
	public void updateCustomerEnabledStatus(Integer id, boolean enabled) {
		customerRepo.updateEnabledStatus(id, enabled);
	}
	
	public Customer get(Integer id) throws CustomerNotFoundException {
		try {
			return customerRepo.findById(id).get();
		}catch (NoSuchElementException ex) {
			throw new CustomerNotFoundException("Không thể tìm thấy người dùng với ID: " + id);
		}
	}
	
	public List<Country> listAllCountries(){
		return countryRepo.findAllByOrderByNameAsc();
	}
	
	public boolean isEmailUnique(Integer id, String email) {
		Customer exitCustomer = customerRepo.findByEmail(email);
		
		if(exitCustomer != null && exitCustomer.getId() != id) {
			return false;
		}
		return true;
	}
	
	public void save(Customer customerInForm) {
		Customer customerInDB = customerRepo.findById(customerInForm.getId()).get();
		
		if(!customerInForm.getPassword().isEmpty()) {
			String encodedPassword = passwordEncoder.encode(customerInForm.getPassword());
			customerInForm.setPassword(encodedPassword);
		}else {
			customerInForm.setPassword(customerInDB.getPassword());
		}
		
		customerInForm.setEnabled(customerInDB.isEnabled());
		customerInForm.setCreatedTime(customerInDB.getCreatedTime());
		customerInForm.setVerificationCode(customerInDB.getVerificationCode());
		customerInForm.setAuthenticationType(customerInDB.getAuthenticationType());
		customerInForm.setResetPasswordToken(customerInDB.getResetPasswordToken());
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		DevelopUserDetails loggedUser = (DevelopUserDetails)auth.getPrincipal();
		customerInForm.setWorkUser(loggedUser.getFullname());
		
		customerInForm.setUpdatedTime(new Date());
		
		customerRepo.save(customerInForm);
	}
	
	public void delete(Integer id) throws CustomerNotFoundException{
		Customer customer = customerRepo.findById(id).orElse(null);
//		Long count = customerRepo.countById(id);
//		if(count == null || count == 0) {
//			throw new CustomerNotFoundException("Không thể tìm thấy người dùng với ID: " + id);
//		}
		if (customer == null) {
			throw new CustomerNotFoundException("Không thể tìm thấy người dùng với ID: " + id);
		}
		
		// Delete associated cart items
		List<CartItem> cartItems = cartItemRepo.findByCustomer(customer);
		cartItemRepo.deleteAll(cartItems);

		// Delete associated orders and order details and order trạck
		List<Order> orders = contraintRepo.findByCustomer(customer);
		for (Order order : orders) {
			Set<OrderDetail> orderDetails = order.getOrderDetails();
			List<OrderTrack> orderTracks = order.getOrderTracks();
			
			contraintRepo.delete(order); // This will delete all associated order tracks as well
			orderDetails.clear(); // This will remove all associated order details from memory
			orderTracks.clear(); // This will remove all associated order trạck from memory
		}

		// Delete associated addresses
		List<Address> addresses = addressRepo.findByCustomer(customer);
		addressRepo.deleteAll(addresses);
		/*
		 * // Delete associated comment List<Comments> comments =
		 * commentConstraintRepo.findByCustomer(customer);
		 * commentConstraintRepo.deleteAll(comments);
		 * 
		 * // Delete associated commentReplies List<CommentReplies> commentReplies =
		 * commentRepliesRepo.findByCustomer(customer);
		 * commentRepliesRepo.deleteAll(commentReplies);
		 */
		
		// Delete associated customer activities
		List<CustomerActivity> activities = customerActivityRepo.findByCustomer(customer);
		customerActivityRepo.deleteAll(activities);
		
		
		customerRepo.deleteById(id);
	}
	
//    public Page<Customer> findAll(Pageable pageable){
//        return customerRepo.findAll(pageable);
//    }
//    
//    public List<CustomerModel> listAllCusRepLay(){
//		return customerReplayRepo.getAllCustomer();
//    	
//    }
	
}

