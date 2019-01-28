package com.yaogan.dao;

import java.util.List;

import com.yaogan.domain.Picture;

/**
 * 持久层接口(查询，保存图片)
 * @author ASUS
 *
 */

public interface PictureDao {

	List<Picture> findAllPicture();

	void savePicture(Picture picture);

}
