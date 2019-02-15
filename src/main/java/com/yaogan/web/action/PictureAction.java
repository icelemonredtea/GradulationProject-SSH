package com.yaogan.web.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yaogan.algorithm.kmeans.K_meansAlgorithm;
import com.yaogan.domain.Picture;
import com.yaogan.service.PictureService;

public class PictureAction extends ActionSupport implements ModelDriven<Picture>{


	private Picture picture = new Picture();
	private List<Picture> pictures;
	private PictureService pictureService;

	//模型驱动
	@Override
	public Picture getModel() {
		return picture;
	}


	//请求参数封装
	public List<Picture> getPictures() {
		return pictures;
	}
	public void setPictures(List<Picture> pictures) {
		this.pictures = pictures;
	}


	//spring注入
	public void setPictureService(PictureService pictureService) {
		this.pictureService = pictureService;
	}

	
	//进入选择页面
	public String pictureSelect() {
		return "pictureSelect";
	}
	

	//查询图片
	public String findAllPicture(){
		pictures = pictureService.findAllPicture();
		return "findAllPicture";
	}

	//保存图片
	public String savePicture() {

		try{
			//查询web-root下file文件路径
            String realPath = ServletActionContext.getServletContext().getRealPath("/file/src");//取file文件夹的路径
            File dir = new File(realPath);//file文件夹
            
            if(!dir.exists()) {//如果未创建则新建
                dir.mkdirs();	
            }

            if(picture.getUploadpicture()!=null) {
	            //commons-io.jar包的FileUtils方法，把上传的的文件移到file文件夹
	            FileUtils.moveFile(picture.getUploadpicture(), 
	            			new File(dir, picture.getUploadpictureFileName()));
            }
            picture.setContent(realPath);//保存文件路径存入数据库
           
        }
        catch (IOException e) {     
        	System.out.println("上传失败");
        	e.printStackTrace();
            return "error";
        } 		
		//保存数据到数据库
		pictureService.savePicture(picture);
		//传入method执行算法
		algorithm(picture.getMethod());
		//保存filename到值栈中
		return "savePicture";
	}


	//分割
	public void algorithm(String method){

		//根据传入method选择方法
		if(method.equals("K-means")) {
			//执行k均值算法,传入src和dest的绝对路径。
			new K_meansAlgorithm().runAlgorithm(path().get(0), path().get(1));
			
		}else {
			System.out.println("执行其他");
			//执行xxxx
		}
		
	}
	
	
	//获取绝对路径
	public List<String> path() {
		
		//存入src和dest的容器
		List<String> list = new ArrayList<String>();
		//获取src绝对路径
		String src = ServletActionContext.getServletContext().getRealPath("/file/src");
		//获取dest绝对路径
		String dest = ServletActionContext.getServletContext().getRealPath("/file/dest");
		
		File dir = new File(dest);//file文件夹  
        if(!dir.exists()) {//如果未创建则新建
              dir.mkdirs();	
        }
        //加上文件名格式
        String srcpath = src+"/"+picture.getUploadpictureFileName();
		String destpath = dest+"/"+picture.getUploadpictureFileName();
	
		list.add(srcpath);
		list.add(destpath);
		
		
		return list;
	}
}
