package com.yaogan.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yaogan.service.PictureService;

//测试spring中ioc环境是否可用。

public class Test01Spring1 {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("bean.xml");
		PictureService pictureService = (PictureService) ac.getBean("pictureService");
		pictureService.findAllPicture();
	}
}
