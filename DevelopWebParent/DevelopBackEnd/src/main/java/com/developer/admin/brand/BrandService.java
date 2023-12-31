package com.developer.admin.brand;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.developer.admin.constraint.ProductContraintRepository;
import com.developer.admin.paging.PagingAndSortingHelper;
import com.developer.common.entity.Brand;

@Service
public class BrandService {
	
	public static final int BRANDS_PER_PAGE = 5;
	
	@Autowired
	private BrandRepository repo;
	
	@Autowired
	private ProductContraintRepository pdtRepo;

	public List<Brand> listAll() {
		return (List<Brand>) repo.findAll();
	}
	
	public void listByPage(int pageNum, PagingAndSortingHelper helper){
		helper.listEntities(pageNum, BRANDS_PER_PAGE, repo);
	}
	
	public Brand save(Brand brand) {
		return repo.save(brand);
	}
	
	public Brand get(Integer id) throws BrandNotFoundException{
		try {
			return repo.findById(id).get();
		} catch (NoSuchElementException ex) {
			throw new BrandNotFoundException("Không thể tìm thấy ID thương hiệu: " + id);
		}
	}
	
	public void delete(Integer id) throws BrandNotFoundException{
		Long countById = repo.countById(id);
		if(countById == null || countById == 0) {
			throw new BrandNotFoundException("Không thể tìm thấy ID thương hiệu: " + id);
		}
		
	    pdtRepo.deleteAllProductDetailByBrandId(id);
	    pdtRepo.deleteAllProductImageByBrandId(id);
		
		pdtRepo.deleteAllByBrandId(id);
		
		repo.deleteById(id);
	}
	
	public String checkUnique(Integer id, String name) {
		boolean isCreatingNew = (id == null || id == 0);
		Brand brandByName = repo.findByName(name);
		
		if(isCreatingNew) {
			if(brandByName != null) return "Duplicate";
		}else {
			if(brandByName != null && brandByName.getId() != id) {
				return "Duplicate";
			}
		}
		return "OK";
	}
	

}
