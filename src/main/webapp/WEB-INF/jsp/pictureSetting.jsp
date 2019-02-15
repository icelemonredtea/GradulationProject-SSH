<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 引入css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- 引入jQuery -->
<script src="bootstrap/js/jquery.js"></script>
<!-- 引入js ,必选在此前引入jquery-->
<script src="bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">

	//获取当前时间，组合成格式方便存入数据库，不需要格式转换器
	function showtime() {
		var date = new Date();
		
		var year = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();
		var hour = date.getHours();
		var minute = date.getMinutes();
		var second = date.getSeconds();
		
		//alert(year+'年'+month+'月'+day+'日 '+hour+':'+minute+':'+second)
		//拼接空格时''中要有一个空格，如' '所示。
		var time = year+'-'+month+'-'+day+' '+hour+':'+minute+':'+second;
		//alert( year+'-'+onth+'-'+day+' '+hour+':'+minute+':'+second);	
	
		document.getElementById("time").value=time;
	}
	
	//验证表单是否为空（时间和文件）
	function checkForm(){
		if (document.getElementById("time").value == "" || 
				document.getElementById("upfile").value == "") {
			alert("时间或文件未选取");
			return false;
		} else {
			return true;
		}
	}
	
	
</script>


</head>
<body style="background-image: url(${pageContext.request.contextPath}/img/pictureSelect.jpeg);	
	background-position: top left;	background-size: 100%;	background-repeat: repeat;" >

<div class="container">

	<div class="jumbotron text-center" style="margin-bottom:0;background-color: transparent">
  	<h1>图像分割选择</h1>
	</div>
	
	<a href="${pageContext.request.contextPath}/findAllPicture.action">进行处理</a>
	<s:debug></s:debug>
	
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
					<form action="${pageContext.request.contextPath}/savePicture.action" method="post" 
							enctype="multipart/form-data" onsubmit="return checkForm()">
						<div class="form-group">
							 <label for="exampleInputDate">提交时间</label>
							 <input type="text" id="time" name="date"  class="form-control" readonly="readonly" /><br/>
							 <input type="button" value="获取当前时间" class="btn btn-success" onclick="showtime()"/>
						</div>
						<div class="form-group">
							 <label for="exampleInputmethod">分割类型</label>
							<input type="radio" name="method" value="K-means" checked="checked"/>K均值分割
		  					<input type="radio" name="method" value="xxx"/>xxx分割
						</div>
						<div class="form-group">
							 <label for="exampleInputFile">上传图片</label>
							 <input type="file" id="upfile" name="uploadpicture" style="color: red" />
							<p class="help-block" style="color: red;">
								如:xx.jsp
							</p>
						</div>
						<button type="submit" class="btn btn-success">提交</button>
						<button type="reset" class="btn btn-warning">重置</button>
					</form>
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
	</div>
	
	
	 <div class="container">
        <div class="row">
            <div class="col-sm-6" style="text-align: center;">
                <div class="widget">
                    <h4 class="title" style="color: red">友情链接</h4>
                    <div class="content tag-cloud friend-links">
                        <a class="btn btn-info" href="http://www.bootcss.com/" title="Bootstrap中文网" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'Bootstrap中文网'])" target="_blank">Bootstrap中文网</a>
                        <a class="btn btn-info" href="https://www.quanzhanketang.com/" title="全栈课堂" onclick="_hmt.push(['_trackEvent', 'link', 'click', '全栈课堂'])" target="_blank">全栈课堂</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6" style="text-align: center;">
                <div class="widget">
                    <h4 class="title" style="color: red">我用到的技术</h4>
                    <div class="content tag-cloud">
                        <a class="btn btn-info" href="http://www.bootcss.com/" title="Bootstrap中文网" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'Bootstrap中文网'])" target="_blank">Bootstrap</a>
                    </div>
               	 </div>
            	</div>
       		</div>
    	</div>
	
	
</div>

  

</body>
</html>