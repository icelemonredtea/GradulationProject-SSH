package com.yaogan.service.imp;

import java.util.List;

import com.yaogan.dao.PictureDao;
import com.yaogan.domain.Picture;
import com.yaogan.service.PictureService;

/**
 * 业务层实现类（查询，保存图片）
 * @author ASUS
 *
 */
public class PictureServiceImp implements PictureService {

	
	//注入
	private PictureDao pictureDao;
	
	public void setPictureDao(PictureDao pictureDao) {
		this.pictureDao = pictureDao;
	}

	
	//查询图片
	@Override
	public List<Picture> findAllPicture() {
		return pictureDao.findAllPicture();
	}

	//保存图片
	@Override
	public void savePicture(Picture picture) {
		pictureDao.savePicture(picture);
	}

}
