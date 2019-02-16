<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<style type="text/css">
	p{
		color: red;
	}
	
	h1{
		color: orange;
	}
	
	h2{
		color: fuchsia;
		background: white;
		text-align: center;
	}
	h4 {
		color: yellow;
	}
</style>

</head>
<body style="background-image: url(${pageContext.request.contextPath}/img/background.jpg);	
	background-position: top left;	background-size: 100%;	background-repeat: repeat;" >
 
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h1 class="text-center">
				图像分割系统
			</h1>
		</div>
	</div>
	
	<div class="jumbotron" style="background-color: transparent">
      <div class="container">
        <p style="color: white;">点击进入图像分割参数设置，文件选择页面</p>
        <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/pictureSelect.action">go into »</a></p>
      </div>
    </div>
    
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>图像</h2>
          <p>图像是人类视觉的基础，是自然景物的客观反映，是人类认识世界和人类本身的重要源泉。“图”是物体反射或透射光的分布，“像“是人的视觉系统所接受的图在人脑中所形版的印象或认识，照片、绘画、剪贴画、地图、书法作品、手写汉学、传真、卫星云图、影视画面、X光片、脑电图、心电图等都是图像。</p>
          <p><a class="btn btn-default" href="#" >View details »</a></p>
        </div>
        <div class="col-md-4">
          <h2>图像分割</h2>
          <p>图像分割就是把图像分成若干个特定的、具有独特性质的区域并提出感兴趣目标的技术和过程。它是由图像处理到图像分析的关键步骤。现有的图像分割方法主要分以下几类：基于阈值的分割方法、基于区域的分割方法、基于边缘的分割方法以及基于特定理论的分割方法等。从数学角度来看，图像分割是将数字图像划分成互不相交的区域的过程。图像分割的过程也是一个标记过程，即把属于同一区域的像索赋予相同的编号。</p>
          <p><a class="btn btn-default" href="#" >View details »</a></p>
       </div>
        <div class="col-md-4">
          <h2>常见分割算法</h2>
          <p>1.基于阈值的分割方法</p>
          <p>2.基于边缘的分割方法</p>
          <p>3.基于区域的分割方法</p>
          <p>4.基于聚类分析的图像分割方法</p>
          <p><a class="btn btn-default" href="#" >View details »</a></p>
        </div>
      </div>
      <hr>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-sm-6" style="text-align: center;">
                <div class="widget">
                    <h4 class="title">友情链接</h4>
                    <div class="content tag-cloud friend-links">
                        <a class="btn btn-info" href="http://www.bootcss.com/" title="Bootstrap中文网" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'Bootstrap中文网'])" target="_blank">Bootstrap中文网</a>
                        <a class="btn btn-info" href="https://www.quanzhanketang.com/" title="全栈课堂" onclick="_hmt.push(['_trackEvent', 'link', 'click', '全栈课堂'])" target="_blank">全栈课堂</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6" style="text-align: center;">
                <div class="widget">
                    <h4 class="title">我用到的技术</h4>
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