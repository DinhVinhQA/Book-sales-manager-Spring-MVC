/*
 * @author VTA
 * @date May 16, 2020
 * @version 1.0
 */

package com.khosach.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.khosach.dto.ProductDTO;
import com.khosach.dto.ProductSaleDTO;
import com.khosach.entity.ProductEntity;
import com.khosach.mapper.IProductMapper;
import com.khosach.repository.IProductRepository;
import com.khosach.service.ICRUDService;
import com.khosach.service.ICategoryService;
import com.khosach.service.IGroupProductService;
import com.khosach.service.IProductSaleService;
import com.khosach.service.IProductService;

@Service
public class ProductServiceImpl implements ICRUDService<ProductDTO>, IProductService {

	@Autowired
	ICRUDService<ProductSaleDTO> productSaleCRUDService;

	@Autowired
	IProductSaleService productSaleService;

	@Autowired
	IProductRepository productRepository;


	@Autowired
	ICategoryService categoryService;

	@Autowired
	IGroupProductService groupProductService;

	@Override
	public List<ProductDTO> findAll() {
		return IProductMapper.INSTANCE.toListProductDTO(productRepository.findAllByIsDelete(1));
	}

	@Override
	public ProductDTO findById(long id) {
		return IProductMapper.INSTANCE.toProductDTO(productRepository.findOne(id));
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			ProductEntity productEntity = productRepository.findOne(id);
			productEntity.setIsDelete(1);
			;
			productRepository.save(productEntity);
		}

	}

	@Override
	public void save(ProductDTO dto) {
		if (dto.getProductID() == null) {
			dto.setDelete(1);
			dto.setStatus(1);
		} else {
			ProductDTO dto2 = findById(dto.getProductID());
			dto.setDateAdded(dto2.getDateAdded());
		}
		ProductEntity productEntity = IProductMapper.INSTANCE.toProductEntity(dto);
		productRepository.save(productEntity);

	}

	@Override
	public Map<String, String> OptionStatus() {
		Map<String, String> result = new HashMap<>();
		result.put("1", "Còn hàng");
		result.put("0", "Hết hàng");
		return result;
	}

	@Override
	public List<ProductDTO> findAllProductSale() {
		List<ProductSaleDTO> listProductSaleDTO = productSaleCRUDService.findAll();
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		for (ProductSaleDTO pS : listProductSaleDTO) {
			ProductEntity productEntity = productRepository.findOneByIsDeleteAndProductSale_ProductSaleID(1,
					pS.getProductSaleID());
			ProductDTO productDTO = IProductMapper.INSTANCE.toProductDTO(productEntity);
			productDTO.setSalePrice(pS.getSale());
			list.add(productDTO);
		}
		return list;
	}


	@Override
	public List<ProductDTO> findAllByCatetogyID(long catetogyID, Pageable pageable) {
		List<ProductEntity> list = productRepository.findAllByGroupProductEntity_Category_CategoryID(catetogyID,
				pageable);
		return IProductMapper.INSTANCE.toListProductDTO(list);
	}

	@Override
	public List<ProductDTO> findAllByGroupProductID(long groupProductID, Pageable pageable) {
		List<ProductEntity> list = productRepository.findAllByGroupProductEntity_GroupProductID(groupProductID,
				pageable);
		return IProductMapper.INSTANCE.toListProductDTO(list);
	}

	@Override
	public boolean checkQuantity(long productID, long quantity) {
		ProductEntity productEntity = productRepository.findOne(productID);
		if (productEntity.getQuantity() < quantity)
			return true;
		return false;
	}

	@Override
	public ProductDTO updateQuantity(long productID, long quantity) {
		ProductEntity productEntity = productRepository.findOne(productID);
		if ((productEntity.getQuantity() - quantity) == 0) {
			productEntity.setStatus(0);
		}
		productEntity.setQuantity(productEntity.getQuantity() - quantity);
		return IProductMapper.INSTANCE.toProductDTO(productRepository.save(productEntity));
	}

	@Override
	public void delete(long id) {

	}

	@Override
	public List<String> findAllNameByKey(String key) {
		String keyNew = "%" + key + "%";
		List<String> listC = categoryService.findAllCategoryName(keyNew);
		List<String> listGP = groupProductService.findAllGroupProductName(keyNew);
		List<String> list = productRepository.findAllByProductNameLike(keyNew);
		list.addAll(listC);
		list.addAll(listGP);
		return list;
	}

	@Override
	public List<ProductDTO> findAllProductByKeySearch(String key, Pageable pageable) {
		List<ProductDTO> listProduct = new ArrayList<>();
		String keyNew = "%" + key + "%";
		List<ProductEntity> listProductEntity = productRepository
				.findAllByProductNameLikeOrGroupProductEntity_GroupProductNameLikeOrGroupProductEntity_Category_CategoryNameLike(
						keyNew, keyNew, keyNew, pageable);
		List<ProductDTO> listProductDTO = IProductMapper.INSTANCE.toListProductDTO(listProductEntity);
		for (ProductDTO productDTO : listProductDTO) {
			ProductSaleDTO productSaleDTO = productSaleService.findByProductID(productDTO.getProductID());
			if (productSaleDTO != null) {
				productDTO.setSalePrice(productSaleDTO.getSale());
			}
			productDTO.setBase64("ttttt");
			listProduct.add(productDTO);
		}
		return listProduct;
	}

	@Override
	public long totalProduct() {
		return productRepository.count();
	}

	@Override
	public long totalProductSearch(String key) {
		String keyNew = "%" + key + "%";
		List<ProductEntity> listProductEntity = productRepository
				.findAllByProductNameLikeOrGroupProductEntity_GroupProductNameLikeOrGroupProductEntity_Category_CategoryNameLike(keyNew, keyNew, keyNew);
		return listProductEntity.size();
	}

	@Override
	public List<ProductDTO> findAllByGroupProductID(long groupProductID) {
		List<ProductEntity> list = productRepository.findAllByGroupProductEntity_GroupProductID(groupProductID);
		return IProductMapper.INSTANCE.toListProductDTO(list);
	}


	@Override
	public long totalProductByCatetogyID(long catetogyID) {
		List<ProductEntity> list = productRepository.findAllByGroupProductEntity_Category_CategoryID(catetogyID);
		return list.size();
	}

	@Override
	public long totalProductByGroupProductID(long groupProductID) {
		List<ProductEntity> list = productRepository.findAllByGroupProductEntity_GroupProductID(groupProductID);
		return list.size();
	}

}
