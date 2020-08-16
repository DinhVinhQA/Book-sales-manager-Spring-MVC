/*
 * @author VTA
 * @date May 29, 2020
 * @version 1.0
 */

package com.khosach.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.khosach.dto.UserDTO;
import com.khosach.service.ICRUDService;

@RestController(value = "userAPIOfAdmin")
public class UserAPI {
	@Autowired
	ICRUDService<UserDTO> userCRUDService;
	
	@DeleteMapping("/api/admin/user")
	public ResponseEntity<?> deleteUser(@RequestBody long[] userID) {
		userCRUDService.delete(userID);
		return ResponseEntity.noContent().build();
		
	}
}
