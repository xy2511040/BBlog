<%--
  Created by IntelliJ IDEA.
  User: LTQ
  Date: 2018/2/21
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>

<script>
    $(document).ready(function () {
        setTimeout(function () {
            var navOffset = $(".widgetRoller").offset().top;
            $(window).scroll(function () {
                var scrollPos = $(window).scrollTop();
                if (scrollPos >= navOffset) {
                    $(".widgetRoller").css({position: "fixed", top: 0, zIndex: 0, width: 330}).fadeIn(100);
                } else {
                    $(".widgetRoller").removeAttr("style");
                }
            });
        }, 2000);
    });

    function test() {
        var div1 = $("#biaoqian");
        if (div1.style.display == "block") {
            div1.style.display = "none";
        } else {
            div1.style.display = "block";
        }
    }
</script>
<aside class="sidebar">
    <div class="widget widget_text" style="height: 115px;margin-bottom: 0px">
        <iframe src="http://www.seniverse.com/weather/weather.aspx?uid=U35799536E&cid=CHBJ000000&l=&p=SMART&a=1&u=C&s=13&m=
        0&x=1&d=0&fc=&bgc=2E93D9&bc=&ti=0&in=1&li=" frameborder="0" scrolling="no" width="330" height="115"
                allowTransparency="true"></iframe>
    </div>

    <div class="widget d_tag">
        <div class="title"><h2>热门分类</h2></div>
        <div class="d_tags" id="fenlei" style="height: auto">
            <c:forEach var="hotBlogType" items="${hotBlogType }">
                <a href="${pageContext.request.contextPath}/index.html?typeId=${hotBlogType.id}">${hotBlogType.typeName }</a>
            </c:forEach>
        </div>
    </div>


    <div class="widget d_postlist">
        <div class="title"><h2>猜你喜欢</h2></div>
        <ul>
            <c:forEach var="blog" items="${hotBlog}">
            <li><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html" title=" ${blog.title}">
                <span class="thumbnail">
                    <c:forEach var="image" items="${blog.imageList }">
                         <img src="${image}" alt=" ${blog.title}" width="100px"></span>
                    </c:forEach>
                <span class="text"> ${blog.title}</span><span class="muted"><fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd"/></span>
                <span class="muted">${blog.clickHit}浏览</span></a></li>
            </c:forEach>
        </ul>
    </div>

    <div class="widget widget_text">
        <div class="title"><h2>新浪微博</h2></div>
        <div class="textwidget">
            <iframe width="100%" height="550" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=550&fansRow=2&ptype=1&speed=0&skin=1&isTitle=0&noborder=1&isWeibo=1&isFans=1&uid=5643481905&verifier=4a4ec58f&dpc=1"></iframe>
        </div>
    </div>

    <div class="widget widget_links">
        <div class="title"><h2>友情链接</h2></div>
        <ul class="xoxo blogroll" style="width: 332px;">
            <c:forEach var="link" items="${linkList }">
                <li><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></li>
            </c:forEach>
        </ul>
    </div>


    <div class="widgetRoller">
        <div class="widget widget_divTags" id="divTags">
            <div class="title"><h2>标签云</h2></div>
            <ul class="widget_divTags_inner">
                <div class="tags-box">
                    <c:forEach var="blogTypeCount" items="${blogTypeCountList }">
                        <a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id}">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a>
                    </c:forEach>
                </div>
            </ul>
        </div>
    </div>
</aside>
