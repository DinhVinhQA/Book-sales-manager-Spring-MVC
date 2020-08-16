/*
 * @author VTA
 * @date May 10, 2020
 * @version 1.0
 

package com.khosach.service;

import java.util.List;
import java.util.Map;

import com.khosach.dto.GroupCategoryDTO;

public interface IGroupCategoryService {
	List<GroupCategoryDTO> findAll(); // get list 
	void save(GroupCategoryDTO groupCategoryDTO);
	GroupCategoryDTO findByID(long id);
	void delete(long[] ids);
	Map<String, String> findAllGroupCategoryDTO();
	boolean checkGroupCategory(long groupCategoryID);
	void delete(long id);
	List<String> findAllGroupCategoryName(String key);
}
*/