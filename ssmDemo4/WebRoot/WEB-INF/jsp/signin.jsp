<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en"> 
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
		<meta name="author" content="">
	<title>BEDGASM BLOG</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> -->
	<link href="${pageContext.request.contextPath}/css/jquery.bxslider.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/homeReset.css" type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/officalHome.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/personhome.css">

</head>
<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active" ><a href="#">Home</a></li>
						<li><a href="myaboutme.html">About Me</a></li>
						<li><a href="mycontact.html">Contact</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li id="account"><a id="accountname" href="#" onmouseover="showPromptBox()">欢迎您,${user.username }</a></li>
					</ul>

				</div>
				<!--/.nav-collapse -->
 			
		<div id="prompt-box">
			<p><a href="#">个人中心</p>
			<p><a href="index.html">退出登录</a></p>
		</div>
			
		</nav>
		




			<div class="wrap-col">
						<div class="logo"><a href="#"><img class="becenter" src="${pageContext.request.contextPath}/images/bigLogo.png"/></a></div>	
						<h4 class="tagline becenter">记录过去，憧憬未来 &nbsp; 向下扎根，向上生长</h4>
						<!-- <h4 class="right-tag becenter">向下扎根，向上生长</h4> -->
		</div>

		
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
    <!-- 轮播（Carousel）指标 -->
		    <ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
		        <li data-target="#myCarousel" data-slide-to="3"></li>
		        <li data-target="#myCarousel" data-slide-to="4"></li>
		    </ol>   
		    <!-- 轮播（Carousel）项目 -->
		    <div class="carousel-inner">

		        <div class="item active">
		            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="First slide" style="width: 100%;height: 100%;">
		            <div class="carousel-caption">标题 1</div>
		        </div>
		        <div class="item">
		            <img src="${pageContext.request.contextPath}/images/2.jpg" alt="Second slide" style="width: 100%;height: 100%;">
		            <div class="carousel-caption">标题 2</div>
		        </div>
		        <div class="item">
		            <img src="${pageContext.request.contextPath}/images/3.jpg" alt="Third slide" style="width: 100%;height: 100%;">
		            <div class="carousel-caption">标题 3</div>
		        </div>
		        <div class="item">
		            <img src="${pageContext.request.contextPath}/images/4.jpg" alt="Fourth slide" style="width: 100%;height: 100%;">
		            <div class="carousel-caption">标题 4</div>
		        </div>
		        <div class="item">
		            <img src="${pageContext.request.contextPath}/images/9.jpg" alt="Fifth slide" style="width: 100%;height: 100%;">
		            <div class="carousel-caption">标题 5</div>
		        </div>
		    </div>
		    <!-- 轮播（Carousel）导航 -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		        <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		        <span class="sr-only">Next</span>
		    </a>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<article class="blog-post">
						<!-- <div class="blog-post-image">
							<a href="post.html"><img src="images/750x500-1.jpg" alt=""></a>
						</div> -->
						<div class="blog-post-body">
							<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
							<div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a href="#">343</a></span></div>
							<p>Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was our first visit to the city and, believe it or not, Stockholm in February was more pleasant than Boston in March. It probably has a lot to do with the fact that we arrived completely unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is honestly not even fair.</p>
							<div class="read-more"><a href="#">Continue Reading</a></div>
						</div>
					</article>

					<article class="blog-post">
						<!-- <div class="blog-post-image">
							<a href="post.html"><img src="images/750x500-1.jpg" alt=""></a>
						</div> -->
						<div class="blog-post-body">
							<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
							<div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a href="#">343</a></span></div>
							<p>Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was our first visit to the city and, believe it or not, Stockholm in February was more pleasant than Boston in March. It probably has a lot to do with the fact that we arrived completely unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is honestly not even fair.</p>
							<div class="read-more"><a href="#">Continue Reading</a></div>
						</div>
					</article>

					<article class="blog-post">
						<!-- <div class="blog-post-image">
							<a href="post.html"><img src="images/750x500-1.jpg" alt=""></a>
						</div> -->
						<div class="blog-post-body">
							<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
							<div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a href="#">343</a></span></div>
							<p>Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was our first visit to the city and, believe it or not, Stockholm in February was more pleasant than Boston in March. It probably has a lot to do with the fact that we arrived completely unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is honestly not even fair.</p>
							<div class="read-more"><a href="#">Continue Reading</a></div>
						</div>
					</article>

					<article class="blog-post">
						<!-- <div class="blog-post-image">
							<a href="post.html"><img src="images/750x500-1.jpg" alt=""></a>
						</div> -->
						<div class="blog-post-body">
							<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
							<div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a href="#">343</a></span></div>
							<p>Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was our first visit to the city and, believe it or not, Stockholm in February was more pleasant than Boston in March. It probably has a lot to do with the fact that we arrived completely unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is honestly not even fair.</p>
							<div class="read-more"><a href="#">Continue Reading</a></div>
						</div>
					</article>


					<div class="pageDivide">
						<ul id="page" class="pagination pagination-lg becenter">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul><br>
					</div>

				</div>



				<div class="col-md-4 col-md-offset-1 sidebar-gutter">
					<aside>
						 <div class="sidebar-widget">
							<section id="search"><!-- Search form -->
					            <form action="#" onSubmit="return false;" method="get">
					                <input type="text" onFocus="if (this.value =='Search..' ) this.value=''" onBlur="if (this.value=='') this.value='Search..'" value="Search.." name="q">
					                <input type="submit" value="">
					            </form>
			       			 </section>
					  	</div>

						<div class="sidebar-widget">
						<h3 class="sidebar-title">推荐热文</h3>
						<div class="widget-container">
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">Why The Muppets Needs to Channel 30 Rock</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
						</div>
					   </div>

					   <div class="sidebar-widget">
						<h3 class="sidebar-title">最新文章</h3>
						<div class="widget-container">
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">Why The Muppets Needs to Channel 30 Rock</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">Vintage-Inspired Finds for Your Home</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
							<article class="widget-post">
								<div class="post-body">
									<h2><a href="post.html">The State of the Word 2014</a></h2>
									<div class="post-meta">
										<span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a href="post.html"><i class="fa fa-comment-o"></i> 23</a></span>
									</div>
								</div>
							</article>
						</div>
					   </div>
					   <div class="sidebar-widget">
						<h3 class="sidebar-title">类别栏目</h3>
						<div class="widget-container">
							<ul class="cate">
								<li><a href="#">Fashion</a></li>
								<li><a href="#">Art</a></li>
								<li><a href="#">Design</a></li>
								<li><a href="#">Featured</a></li>
								<li><a href="#">Graphics</a></li>
								<li><a href="#">Peoples</a></li>
								<li><a href="#">Uncategorized</a></li>
							</ul>
						</div>
					</div>

					</aside>

				</div>

			</div>
		</div>
		
		<footer class="footer"> 

			<div class="footer-bottom">
				<h5>感谢使用Bedgasm Blog</h5>
				<i class="fa fa-copyright"></i> Copyright 2018 Bedgasm Blog. All Rights Reserved.<br>
				
			</div>
		</footer>

		<button class="back-to-top">
			<p class="backtop">回到顶部</p>
			<span class="glyphicon glyphicon-plane"></span>
		</button>


		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.bxslider.js"></script>
		<script src="${pageContext.request.contextPath}/js/mooz.scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
</body>
</html>