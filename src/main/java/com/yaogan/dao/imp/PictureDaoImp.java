package com.yaogan.dao.imp;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.yaogan.dao.PictureDao;
import com.yaogan.domain.Picture;

/**
 * 持久层实现类
 * @author ASUS
 *
 */
public class PictureDaoImp extends HibernateDaoSupport implements PictureDao {


	
	//查询
	@Override
	public List<Picture> findAllPicture() {
		return (List<Picture>) getHibernateTemplate().find("from Picture");
	}

	
	//保存
	@Override
	public void savePicture(Picture picture) {
		getHibernateTemplate().save(picture);

	}


}
