/*
 * @author VTA
 * @date May 18, 2020
 * @version 1.0
 */

package com.khosach.api.admin;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.khosach.dto.ProductDTO;
import com.khosach.service.ICRUDService;
import com.khosach.util.UploadFileUtils;

@RestController
public class ProductAPI {
	@Autowired
	UploadFileUtils uploadFileUtils;
	
	@Autowired
	ICRUDService<ProductDTO> productService;

	@PostMapping("/api/product")
	public ResponseEntity<Void> uploadFile(@RequestBody ProductDTO productDTO,HttpServletRequest request) {
		byte[] decodeBase64 = Base64.getDecoder().decode(productDTO.getBase64().split(",")[1].getBytes());
		uploadFileUtils.writeOrUpdate(decodeBase64, request.getServletContext().getRealPath("image/product"),request.getServletContext().getRealPath("image/product/") + productDTO.getThumbnail());
		productService.save(productDTO);
		return ResponseEntity.noContent().build();
	}
	
	@PutMapping("/api/product")
	public ResponseEntity<Void> updateFile(@RequestBody ProductDTO productDTO,HttpServletRequest request){
		if(productDTO.getThumbnail()!=null) {
			byte[] decodeBase64 = Base64.getDecoder().decode(productDTO.getBase64().split(",")[1].getBytes());
			uploadFileUtils.writeOrUpdate(decodeBase64, request.getServletContext().getRealPath("image/product"),request.getServletContext().getRealPath("image/product/") + productDTO.getThumbnail());
			productService.save(productDTO);
		}else {
			ProductDTO productDTO2 = productService.findById(productDTO.getProductID());
			productDTO.setThumbnail(productDTO2.getThumbnail());
			productService.save(productDTO);
		}
		
		return ResponseEntity.noContent().build();
	}

	@DeleteMapping("/api/product")
	public void deleteNew(@RequestBody long[] ids) {
		productService.delete(ids);
	}
}
