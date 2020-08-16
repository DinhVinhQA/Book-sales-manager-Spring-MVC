/*
 * @author VTA
 * @date May 16, 2020
 * @version 1.0
 */

package com.khosach.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.khosach.entity.ProductEntity;

public interface IProductRepository extends JpaRepository<ProductEntity, Long> {
	List<ProductEntity> findAllByIsDelete(int isdelete);

	// List<ProductEntity> findAllByIsDeleteAndProductSale_ProductSaleID(Boolean
	// isdelete, int productSaleID );
	ProductEntity findOneByIsDeleteAndProductSale_ProductSaleID(int isdelete, long productSaleID);


	List<ProductEntity> findAllByGroupProductEntity_Category_CategoryID(Long categoriesID, Pageable pageable);

	List<ProductEntity> findAllByGroupProductEntity_GroupProductID(Long grpupProductID, Pageable pageable);

	List<ProductEntity> findAllByGroupProductEntity_Category_CategoryID(Long categoriesID);

	List<ProductEntity> findAllByGroupProductEntity_GroupProductID(Long grpupProductID);

	@Query("SELECT productName FROM ProductEntity WHERE productName LIKE ?1")
	List<String> findAllByProductNameLike(String key);

	List<ProductEntity> findAllByProductNameLikeOrGroupProductEntity_GroupProductNameLikeOrGroupProductEntity_Category_CategoryNameLike(String key, String key1, String key2, Pageable pageable);

	List<ProductEntity> findAllByProductNameLikeOrGroupProductEntity_GroupProductNameLikeOrGroupProductEntity_Category_CategoryNameLike(String key, String key1, String key2);
}
