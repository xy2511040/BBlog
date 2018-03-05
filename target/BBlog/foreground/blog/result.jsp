<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--<div class="data_list">
		<div class="data_list_title">
		<img src="/static/images/search_icon.png"/>
		搜索&nbsp;<font color="red">${q }</font>&nbsp;的结果 &nbsp;(总共搜索到&nbsp;${resultTotal }&nbsp;条记录) </div>
		<div class="datas search">
		  <ul>
		  	<c:choose>
		  		<c:when test="${blogList.size()==0 }">
		  			<div align="center" style="padding-top: 20px">未查询到结果，请换个关键字试试看！</div>
		  		</c:when>
		  		<c:otherwise>
		  			<c:forEach var="blog" items="${blogList}">
		  				<li style="margin-bottom: 20px">
						  	<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id }.html" target="_blank">${blog.title }</a></span>
						  	<span class="summary">摘要:${blog.content }...</span>
						  	<span class="link"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id }.html">http://www.jsmoon.cn/blog/articles/${blog.id }.html</a>&nbsp;&nbsp;&nbsp;&nbsp;发布日期：${blog.releaseDateStr }</span>
						  </li>
		  			</c:forEach>
		  		</c:otherwise>
		  	</c:choose>
		  </ul>
		</div>
</div>--%>


<div class="breadcrumbs" style="margin-bottom: 10px;">
		<a title="返回首页" href="${pageContext.request.contextPath}">
			<i class="fa fa-home fa-2x"></i>
		</a>
		<small>&gt;</small>
		<a href="${pageContext.request.contextPath}/index.html" style="font-size: 17px">技术杂谈</a>
		<c:if test="${category.cName!=null}">
			<small>&gt;</small>
			<a href="${pageContext.request.contextPath}/index.html?typeId=${blog.blogType.id}">类别：${blog.blogType.typeName}</a>
		</c:if>
		<c:if test="${tag.tName!=null}">
			<small>&gt;</small>
			<a href="${pageContext.request.contextPath}/blog/q.html?q=${keyWord }>标签：${keyWord }</a>
		</c:if>
</div>
<c:choose>
	<c:when test="${blogList.size()==0 }">
		<div align="center" style="padding-top: 20px">未查询到结果，请换个关键字试试看！</div>
	</c:when>
	<c:otherwise>
		<c:forEach var="blog" items="${blogList}">
			<article class="excerpt">
				<header>
					<a class="label label-important"
					   href="${pageContext.request.contextPath}/index.html?typeId=${blog.blogType.id}">${blog.blogType.typeName}<i
							class="label-arrow"></i></a>
					<h2><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html"
						   title="${blog.title}">${blog.title}</a>
					</h2>
				</header>
				<div class="focus"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">
					<c:forEach var="image" items="${blog.imageList }">
						<img class="thumb" src="${image}" style="width:200px;height: 123px;" alt="${blog.title}"></a>
					</c:forEach>
				</div>
				<span class="note">${blog.content }...</span>
				<p class="auth-span">
					<span class="muted"><i class="fa fa-clock-o"></i> ${blog.releaseDateStr }</span>
					<span class="muted"><i class="fa fa-eye"></i> ${blog.clickHit}点击浏览</span>
					<span class="muted">
						<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">
						<span id = "url::${blog.id}" class = "cy_cmt_count" ></span>
						<script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId=cytouqEJQ">
						</script>评论</a>
				</span>
			</article>
		</c:forEach>
	</c:otherwise>
</c:choose>
${pageCode }