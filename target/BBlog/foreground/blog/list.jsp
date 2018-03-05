<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div>
	<!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
		<div class="ws_images">
			<ul>
				<c:forEach var="hotBlog" items="${hotBlog }">
					<li><a href="/blog/articles/${hotBlog.id}.html" target="_self">
						<c:forEach var="image" items="${hotBlog.imageList }">
							<img src="${image }"
								 alt="${hotBlog.title}" title="${hotBlog.title}"
								 style="width:830px;height: 500px;"
								 id="wows1_0"/>
						</c:forEach>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="ws_bullets">
			<div>
				<c:forEach var="blog" items="${hotBlog }">
					<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html"
					   title="${blog.title }">
					<span><c:forEach var="image" items="${blog.imageList }">
									<img src="${image }"
										 style="width:120px;height: 90px;"
										 alt="${blog.title }"/>${blog.title }</span></a>
						   </c:forEach>
				</c:forEach>
				</div>
		</div>
		<div class="ws_shadow"></div>
	</div>
	<!--wowslider依赖的jquery版本太低，只能继续使用jquery1.11.2-->
	<%--<script src="https://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>--%>
	<script type="text/javascript"
			src="${pageContext.request.contextPath}/static/wowslider/engine1/wowslider.js"></script>
	<script type="text/javascript"
			src="${pageContext.request.contextPath}/static/wowslider/engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
</div>
<div>
	<div class="left-ad"
		 style="clear: both;background-color: #fff; width: 30%;float: left;margin-right:2%;"></div>
	<div class="hot-posts">
		<h2 class="title">热门排行</h2>
		<ul>
			<c:set var="count" value="1"/>
			<c:forEach var="blog" items="${hotBlog}">
				<li>
					<p><span class="muted">
                <a data-action="ding" data-id="1052" class="action">
                    <i class="fa fa-eye"></i>
                    <span class="count">${blog.clickHit}</span> 浏览</a></span>
					</p><span class="label label-${count}">${count}</span>
					<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html"
					   title="${blog.title}">${blog.title}</a></li>
				<c:set var="count" value="${count+1}"/>
			</c:forEach>
		</ul>
	</div>
</div>

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
		<span class="note">${blog.summary}...</span>
		<p class="auth-span">

			<span class="muted"><i class="fa fa-clock-o"></i> <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/></span>
			<span class="muted"><i class="fa fa-eye"></i> ${blog.clickHit}浏览</span>
			<span class="muted">
                <a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">
					<span id = "url::${blog.id}" class = "cy_cmt_count" ></span>
					<script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId=cytouqEJQ">
					</script>评论</a>
            </span>

	</article>
</c:forEach>

		<div class="pagination" style="background: transparent">
				<ul>
					${pageCode }
				</ul>
		</div>
