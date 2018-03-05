<%--
  Created by IntelliJ IDEA.
  User: LTQ
  Date: 2018/2/21
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<jsp:include page="foreground/common/head.jsp">
    <jsp:param name="indexactive" value="active"/>
    <jsp:param name="title" value="${pageTitle }-Powered by 丶所谓哟"/>
</jsp:include>
<html>
<head>
    <title>${pageTitle }-Powered by 丶所谓哟</title>

    <%--sidebar go--%>
    <link href="${pageContext.request.contextPath}/static/css/newlypublished.css" rel="stylesheet">
    <%--sidebar end--%>

    <%--view go--%>
    <script src="${pageContext.request.contextPath}/static/js/responsiveslides.min.js"></script>
    <%--view end--%>

    <!-- Start WOWSlider.com HEAD section -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/wowslider/engine1/wowsliderstyle.css"/>
    <!-- End WOWSlider.com HEAD section -->
    <script type="text/javascript">
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: false
            });
        });
    </script>

</head>
<body class="home blog hPC">
<section class="contentcontainer">
    <div class="content-wrap">
        <div class="content">
            <jsp:include page="${mainPage }"/>
        </div>
    </div>
    <jsp:include page="foreground/common/sidebar.jsp"/>
</section>
<jsp:include page="foreground/common/foot.jsp"/>
</body>
<%--<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
    <script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
    <title>博客首页</title>
    <style type="text/css">
        body{
            padding-top: 10px;
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <img alt="江山月下博客系统" src="${pageContext.request.contextPath}/static/images/logo.png">
        </div>
        <div class="col-md-8">
            <iframe style="float: right;" width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5&site=12"></iframe>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><font color="black"><strong>首页</strong></font></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><font color="black"><strong>关于我啊</strong></font></a></li>
                            <li><a href="#"><font color="black"><strong>各种福利</strong></font></a></li>
                        </ul>
                        <form class="navbar-form navbar-right">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="请输入要搜索的内容...">
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>
                        </form>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>

    <div class="row">
        <div class="col-md-9">
            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/list_icon.png">
                    最新博客
                    <div class="datas">
                        <ul>
                            <li style="margin-bottom: 30px">
                                <span class="date"><a href="${pageContext.request.contextPath}/blog/articles/363.html">2017年12月08日</a></span>
                                <span class="title"><a href="${pageContext.request.contextPath}/blog/articles/363.html">elasticsearch head插件 增加索引映射</a></span>
                                <span class="summary">摘要: elasticsearch head插件 增加索引映射elasticsearch HTTP API 允许你向索引(index)添加文档类型(type)，或者向文档类型(type)中添加字段(field)。PUT http://192.168.1.110:9200/student/ {   "mappings"...</span>
                                <span class="img">
						  	<a href="/blog/articles/360.html"><img src="${pageContext.request.contextPath}/static/userImages/a.jpg" title="1511761377103063093.jpg" alt="QQ鎴浘20171127134021.jpg"></a>
						  		&nbsp;&nbsp;

						  	<a href="/blog/articles/360.html"><img src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1511761442744092789.jpg" alt="QQ鎴浘20171127134120.jpg" width="685" height="656" style="width: 685px; height: 656px;"></a>
						  		&nbsp;&nbsp;

						  	<a href="/blog/articles/360.html"><img src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1511761478431032709.jpg" alt="QQ鎴浘20171127134126.jpg"></a>
						  		&nbsp;&nbsp;
					  	</span>
                                <span class="info">发表于 2017-12-08 16:21 阅读(186) </span>
                            </li>
                            <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />

                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/user_icon.png"/>
                    博主信息
                </div>
                <div class="user_image">
                    <img src="${pageContext.request.contextPath}/static/userImages/${blogger.imageName}"/>
                </div>
                <div class="nickName">${blogger.nickName}</div>
                <div class="userSign">${blogger.sign}</div>
            </div>

            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
                    按日志类别
                </div>
                <div class="datas">
                    <ul>
                        <c:forEach var="blogTypeCount" items="${blogTypeCountList }">
                            <li><span><a href="#">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/byDate_icon.png"/>
                    按日志日期
                </div>
                <div class="datas">
                    <ul>
                        <c:forEach var="blogCount" items="${blogCountList }">
                            <li><span><a href="">${blogCount.releaseDateStr }(${blogCount.blogCount })</a></span></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
                    友情链接
                </div>

                <div class="datas">
                    <ul>
                        <c:forEach var="link" items="${linkList }">
                            <li><span><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></span></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12" >
            <div align="center" style="padding-top: 120px" >
                <span style="float: left;">Powered by <a  href="http://www.jsmoon.cn" target="_blank">jsmoon</a> V9.99</span>
                Copyright © 2017-2018 江山月下博客 版权所有
            </div>
        </div>
    </div>
</div>
</body>--%>
</html>
