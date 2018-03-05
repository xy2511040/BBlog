<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/8/5
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title><%=request.getParameter("title")%>
    </title>
<%--head go--%>
<link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link href="${pageContext.request.contextPath}/static/css/blogbootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/static/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/static/css/jingmi.css" rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/static/css/lanrenzhijia.css" type="text/css" rel="stylesheet"/>
<%--font-awesome cdn--%>
<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/social-share/dist/social-share.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/social-share/dist/social-share.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/easing.js"></script>
<%--head end--%>
<script>
    $(function () {
        var el = document.getElementById('share-area');
        var links = [{
            plugin: 'github',
            url: 'https://github.com/xy2511040'
        }, {
            plugin: 'weibo',
            url: 'https://weibo.com/u/5643481905?from=myfollow_all&is_all=1'
        }, {
            plugin: 'facebook',
            args: {
                id: 'tianqi.liu.79'           // Your facebook ID
            }
        }];
        var options = {
            size: 'sm'
        };
        window.socialShare(el, links, options);
    });
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!--//end-smoth-scrolling-->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!--SEO-->
<meta name="title" content="江山月下 | 所谓哟的个人日志">
<meta name="keywords" content="所谓哟,liutianqi,java,机器学习,python,日志"/>
<meta name="description" content="所谓哟的个人日志"/>
<meta name="author" content="所谓哟"/>
</head>
<body>
<!--navigation-->
<div class="top-nav">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="${pageContext.request.contextPath}/index.html"
                           class="<%=request.getParameter("indexactive")%>">主页</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/blog/tech.html"
                           class="<%=request.getParameter("techactive")%>">技术杂谈</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/life.html?pagenum=1"
                           class="<%=request.getParameter("lifeactive")%>">生活笔记</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/trip.html"
                           class="<%=request.getParameter("tripactive")%>">旅行</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/log.html"
                           class="<%=request.getParameter("logactive")%>">日志系统</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/board.html"
                           class="<%=request.getParameter("boardactive")%>">留言板</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/blogger/aboutme.html"
                           class="<%=request.getParameter("aboutmeactive")%>">关于我</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/donate.html"
                           class="<%=request.getParameter("donateactive")%>">捐赠</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/weibonlp.html"
                           class="<%=request.getParameter("interestactive")%>">有点意思</a></li>
                    <li class="disabled"><a href="${pageContext.request.contextPath}/open.html"
                           class="<%=request.getParameter("openactive")%>">开放平台</a></li>
                </ul>
                <div class="social-icons">
                    <div id="share-area" style="margin-top: -5px"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </nav>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<a href="#" id="toTop"></a>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
    function checkData(){
        var q=document.getElementById("q").value.trim();
        if(q==null || q==""){
            alert("请输入您要查询的关键字！");
            return false;
        }else{
            return true;
        }
    }
</script>
<!--header-->
<div class="header">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">
                <img src="${pageContext.request.contextPath}/static/images/logo.png" alt="">
            </a>
        </div>
        <form action="${pageContext.request.contextPath}/blog/q.html" method="post" class="navbar-form navbar-right" role="search" onsubmit="return checkData()">
            <div class="input-group" style="margin-bottom: -10px">
                <input type="text" name="q" id="q" class="form-control" value="${q }"  placeholder="Searching...">
                <span class="input-group-btn">
                    <button id="open" class="btn btn-default" type="submit" >搜索</button>
			    </span>
            </div>
        </form>
    </div>
</div>
</body>
</html>


