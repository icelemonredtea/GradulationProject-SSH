package com.yaogan.domain;

import java.io.File;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;


/**
 * 实体类
 * @author ASUS
 *
 */
@Entity
@Table(name="yaoganpicture")
public class Picture implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//成员变量。
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="date")
	@Temporal(TemporalType.TIMESTAMP)
	private Date date;

	@Column(name="method")
	private String method;
	
	@Column(name="content")	//存放上传文件的路径
	private String content;
	
	
	@Transient	//不映射在数据库中
	private File uploadpicture; //上传的文件名称,固定写法:name+FileName;
	
	private String uploadpictureFileName; //上传的文件名称,固定写法:name+FileName; 
	
	private String uploadpictureContentType;  //上传的文件类型,固定写法:name+ContentType;
	
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public File getUploadpicture() {
		return uploadpicture;
	}
	public void setUploadpicture(File uploadpicture) {
		this.uploadpicture = uploadpicture;
	}
	public String getUploadpictureFileName() {
		return uploadpictureFileName;
	}
	public void setUploadpictureFileName(String uploadpictureFileName) {
		this.uploadpictureFileName = uploadpictureFileName;
	}
	public String getUploadpictureContentType() {
		return uploadpictureContentType;
	}
	public void setUploadpictureContentType(String uploadpictureContentType) {
		this.uploadpictureContentType = uploadpictureContentType;
	}
	
	@Override
	public String toString() {
		return "Picture [id=" + id + ", date=" + date + ", method=" + method + ", content=" + content
				+ ", uploadpictureFileName=" + uploadpictureFileName + ", uploadpictureContentType="
				+ uploadpictureContentType + "]";
	}
	
	
	
	
}
