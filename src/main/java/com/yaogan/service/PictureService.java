package com.yaogan.service;

import java.util.List;

import com.yaogan.domain.Picture;

/**
 * 业务层接口
 * @author ASUS
 *
 */

public interface PictureService {
	
	
	//查询图像。
	List<Picture> findAllPicture();
	
	//保存图像。
	void savePicture(Picture picture);
}
