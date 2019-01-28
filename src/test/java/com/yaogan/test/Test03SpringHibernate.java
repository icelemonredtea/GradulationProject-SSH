package com.yaogan.test;



import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yaogan.domain.Picture;
import com.yaogan.service.PictureService;

/**
 * 配置Spring和Hibernate整合
 * @author ASUS
 *
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:config/spring/applicationContext.xml"})
public class Test03SpringHibernate {
	
	@Autowired
	private PictureService ps;
	
	

	@Test
	public void testsave() {
		Picture picture = new Picture();
		picture.setId(10);
		picture.setDate(new Date(System.currentTimeMillis()));
		picture.setMethod("KKKK");
		picture.setContent("测试");
		ps.savePicture(picture);
		
	}
	
//	@Test
//	public void testfindAll(){
//		List<Picture> pictures = ps.findAllPicture();
//		for(Picture picture : pictures) {
//			System.err.println(picture);
//		}
//	}
//	
//	
	
}
