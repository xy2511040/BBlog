<script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shCore.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css">
<%--<script type="text/javascript">
    SyntaxHighlighter.all();
    
    function showOtherComment(){
    	$(".otherComment").show();
    }
    
    function loadimage(){
		document.getElementById("randImage").src="${pageContext.request.contextPath}/image.jsp?"+Math.random();
	}
    
    function submitData(){
    	var content = $("#content").val();
    	var imageCode = $("#imageCode").val();
    	if(content==null || content==""){
    		alert("老铁，总是要输入点东西吧");
    	}else if(imageCode==null || imageCode==""){
			alert("铁子，验证码还没输呢");
		}else {
			$.post("${pageContext.request.contextPath}/comment/save.do",{'content':content,'imageCode':imageCode,'blog.id':'${blog.id}'},function(result){
    			if(result.success){
    				window.location.reload();
    				alert("评论已提成成功，审核通过后显示！");
    			}else{
    				alert(result.errorInfo);
    			}
			},"json");
			resetValue();
		}
    }
    
    function resetValue(){
		$("#content").val("");
		$("#imageCode").val("");
	}
</script>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
    SyntaxHighlighter.all();
</script>
<%--<c:choose>
    <c:when test="${blog.BlogType.id==0}">
        <jsp:include page="../common/head.jsp">
            <jsp:param name="lifeactive" value="active"/>
            <jsp:param name="title" value="${blog.title}"/>
        </jsp:include>
    </c:when>
    <c:otherwise>
        <jsp:include page="../common/head.jsp">
            <jsp:param name="techactive" value="active"/>
            <jsp:param name="title" value="${blog.title}"/>
        </jsp:include>
    </c:otherwise>
</c:choose>--%>


<link href="${pageContext.request.contextPath}/static/css/lanrenzhijia.css" type="text/css"
      rel="stylesheet"/>
<!--畅言获取评论数，未来有可能变为https-->
<script type="text/javascript"
        src="http://assets.changyan.sohu.com/upload/plugins/plugins.count.js">
</script>
<link href="${pageContext.request.contextPath}/static/css/editormd.preview.css" rel="stylesheet" />
<script src="https://cdn.bootcss.com/marked/0.3.6/marked.js"></script>
<script src="https://cdn.bootcss.com/prettify/r224/prettify.min.js"></script>
<script src="https://cdn.bootcss.com/raphael/2.2.7/raphael.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/static/js/editormd.js"></script>--%>
<script src="https://cdn.bootcss.com/highlight.js/9.12.0/highlight.min.js"></script>
<script type="text/javascript">
    $(function () {
        editormd.markdownToHTML("test-editormd-view2", {
            htmlDecode: "style,script,iframe",  // you can filter tags decode
            emoji: true,
            taskList: true,
            tex: true  // 默认不解析
        });
    });
</script>
<style>
    .article-content h1 {
        margin: 20px -20px 20px -20px;
        padding: 10px 20px 9px 10px;
        border-left: 4px solid #00a67c;
        background-color: #fbfbfb
    }

    a:hover {
        text-decoration: none;
    }

    #share a {
        width: 34px;
        height: 34px;
        padding: 0;
        margin: 6px;
        border-radius: 25px;
        transition: all .4s;
        cursor: url(http://www.mizuiren.com/wp-content/themes/QIUYE/images/link.cur), pointer;
    }

    .bdshare-button-style0-24 a:hover {
        box-shadow: 0 0 2px 2px #FFF;
        transition: all .4s !important;
    }

    #share a.bds_qzone {
        background: url(${pageContext.request.contextPath}/static/images/t_QQZone.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share a.bds_tsina {
        background: url(${pageContext.request.contextPath}/static/images/t_XinLang.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share a.bds_sqq {
        background: url(${pageContext.request.contextPath}/static/images/t_QQ.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share a.bds_weixin {
        background: url(${pageContext.request.contextPath}/static/images/t_Friend.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share a.bds_fbook {
        background: url(${pageContext.request.contextPath}/static/images/t_Fbook.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share a.bds_copy {
        background: url(${pageContext.request.contextPath}/static/images/t_URL.png
        ) no-repeat;
        background-size: 34px 34px;
    }

    #share-box {
        float: right;
    }

    .article-tags {
        margin-top: 10px;
    }

    @media (max-width: 800px) {
        .article-tags {
            float: none;
            margin-bottom: 10px;
        }

        #share-box {
            float: left;
        }
    }

</style>
<script>window._bd_share_config = {
    "common": {
        "bdSnsKey": {},
        "bdText": "",
        "bdMini": "2",
        "bdMiniList": false,
        "bdPic": "",
        "bdStyle": "1",
        "bdSize": "32"
    },
    "share": {}
};
with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
</script>

            <div class="breadcrumbs">
                <a title="返回首页" href="${pageContext.request.contextPath}"> <i class="fa fa-home fa-2x"></i></a>
                <small>&gt;</small>
                <a href="${pageContext.request.contextPath}/index.html?typeId=${blog.blogType.id}"
                   style="font-size: 17px">${blog.blogType.typeName}</a>
                <small>&gt;</small>
                <span class="muted" style="font-size: 17px">${blog.title}</span>
            </div>
            <header class="article-header">
                <h1 class="article-title" style="text-align: center; margin: 15px 0"
                    href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">${blog.title}
                </h1>
                <div class="meta" style="text-align: center">
                    <span id="mute-category" class="muted"><i class="fa fa-list-alt"></i><a
                            href="${pageContext.request.contextPath}/index.html?typeId=${blog.blogType.id}"
                            style="padding-left: 7px">${blog.blogType.typeName}</a></span>
                    <time class="muted"><i class="fa fa-clock-o"></i> <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/></time>
                    <span class="muted"><i class="fa fa-eye"></i>  ${blog.clickHit}浏览</span>
                    <span class="muted"><i class="fa fa-comments-o"></i>
                        <a href="#SOHUCS" id="changyan_count_unit"></a>评论
                    </span>
                </div>
            </header>
           <article class="article-content">
                <div id="test-editormd-view2" style="padding:10px 20px; ">
                    ${blog.content }
                </div>
            </article>

            <div style="background:#fff;padding-bottom:20px;font-size:14px;">
                <p style="text-align: center;margin-bottom:20px;padding:0px 20px">
                    您的支持是博主写作最大的动力，如果您喜欢我的文章，感觉我的文章对您有帮助，请狠狠点击下面的</p>
                <li class="disabled"><p style="text-align: center;"><a href="${pageContext.request.contextPath}/donate.jsp"> <input
                        style="width: 310px; margin: 10px auto 0px; background-color: #f58a87; color: #ffffff; height: 40px; border: none; font-family: 'Microsoft Yahei'; font-size: 16px; letter-spacing: 2px;"
                        type="button" value="我要小额赞助"></a>
                </p></li></div>
            <footer class="article-footer">
                <div class="article-tags">
                    <i class="fa fa-tags"></i>
                    <c:choose>
                        <c:when test="${keyWord==null }">
                            &nbsp;&nbsp;无
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="keyWord" items="${keyWord}">
                                <a href="${pageContext.request.contextPath}/blog/q.html?q=${keyWord }" rel="tag"
                                   data-original-title="" title="">${keyWord }</a>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </div>
                <div id="share-box">
                    <div id="share">
                        <div class="bdsharebuttonbox bdshare-button-style0-24" data-bd-bind="1510388056059">
                            <a href="#" class="bds_qzone" data-cmd="qzone" title="Share to Qzone">
                            </a>
                            <a href="#" class="bds_tsina" data-cmd="tsina" title="Share to Sina">
                            </a>
                            <a href="#" class="bds_sqq" data-cmd="sqq" title="Share to QQ">
                            </a>
                            <a href="#" class="bds_weixin" data-cmd="weixin" title="Share to Wechat">
                            </a>
                            <a href="#" class="bds_more" data-cmd="more"></a>
                        </div>
                    </div>
                </div>
            </footer>
            <nav class="article-nav">
                ${pageCode }
            </nav>
            <a name="comments"></a>
            <!--畅言-->
            <!--PC和WAP自适应版-->
            <div id="SOHUCS" sid="${blog.id}"></div>
            <script type="text/javascript">
                (function () {
                    var appid = 'cytouqEJQ';
                    var conf = '150fcbb024cfe6601be99a5be9ce9b84';
                    var width = window.innerWidth || document.documentElement.clientWidth;
                    if (width < 960) {
                        window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>');
                    } else {
                        var loadJs = function (d, a) {
                            var c = document.getElementsByTagName("head")[0] || document.head || document.documentElement;
                            var b = document.createElement("script");
                            b.setAttribute("type", "text/javascript");
                            b.setAttribute("charset", "UTF-8");
                            b.setAttribute("src", d);
                            if (typeof a === "function") {
                                if (window.attachEvent) {
                                    b.onreadystatechange = function () {
                                        var e = b.readyState;
                                        if (e === "loaded" || e === "complete") {
                                            b.onreadystatechange = null;
                                            a()
                                        }
                                    }
                                } else {
                                    b.onload = a
                                }
                            }
                            c.appendChild(b)
                        };
                        loadJs("https://changyan.sohu.com/upload/changyan.js", function () {
                            window.changyan.api.config({appid: appid, conf: conf})
                        });
                    }
                })(); </script>
            <!--畅言end-->


<%--
<div class="data_list">
	<div class="data_list_title">
		<img src="${pageContext.request.contextPath}/static/images/blog_show_icon.png"/>
		博客信息
	</div>
	<div>
		<div class="blog_title"><h3><strong>${blog.title }</strong></h3></div>
		<div class="blog_share">
			<div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
		</div>
		<div class="blog_info">
			发布时间：『 <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>』&nbsp;&nbsp;博客类别：${blog.blogType.typeName }&nbsp;&nbsp;阅读(${blog.clickHit }) 评论(${blog.replyHit })
		</div>
		<div class="blog_content">
		${blog.content }
		</div>
		<div class="blog_keyWord">
			<font><strong>关键字：</strong></font>
			<c:choose>
				<c:when test="${keyWord==null }">
					&nbsp;&nbsp;无
				</c:when>
				<c:otherwise>
					<c:forEach var="keyWord" items="${keyWord }">
						&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/blog/q.html?q=${keyWord }" target="_blank">${keyWord }</a>&nbsp;&nbsp;
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="blog_lastAndNextPage">
			${pageCode }
		</div>
	</div>
</div>

<!--畅言评论PC版-->
		<div id="SOHUCS" sid="${blog.id }"></div>
		<script charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/changyan.js" ></script>
		<script type="text/javascript">
		window.changyan.api.config({
		appid: 'cytouqEJQ',
		conf: 'prod_a8f1a662af162811fdc8762082788a77'
		});
		</script>
--%>

<%-- <div class="data_list">
	<div class="data_list_title">
		<img src="${pageContext.request.contextPath}/static/images/comment_icon.png"/>
		评论信息
		<c:if test="${commentList.size()>10 }">
			<a href="javascript:showOtherComment()" style="float: right;padding-right: 40px;">显示所有评论</a>
		</c:if>
	</div>
 	<div class="commentDatas">
		<c:choose>
			<c:when test="${commentList.size()==0 }">
				暂无评论
			</c:when>
			<c:otherwise>
				<c:forEach var="comment" items="${commentList}" varStatus="status">
					<c:choose>
						<c:when test="${status.index<10 }">
							<div class="comment">
								<span><font>${status.index+1 }楼&nbsp;&nbsp;&nbsp;&nbsp;${comment.userIp }：</font>${comment.content }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&nbsp;<fmt:formatDate value="${comment.commentDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>&nbsp;]</span>			
							</div>
						</c:when>
						<c:otherwise>
							<div class="otherComment">
								<span><font>${status.index+1 }楼&nbsp;&nbsp;&nbsp;&nbsp;${comment.userIp }：</font>${comment.content }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&nbsp;<fmt:formatDate value="${comment.commentDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>&nbsp;]</span>			
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div> 
		
</div>

<div class="data_list" >
	<div class="data_list_title">
		<img src="${pageContext.request.contextPath}/static/images/publish_comment_icon.png"/>
		发表评论
	</div>
	<div class="publish_comment">
			<div>
				<textarea style="width: 100%" rows="3" id="content" name="content" placeholder="来说两句吧..."></textarea>
			</div>
			<div class="verCode">
				验证码：<input type="text" value="" name="imageCode"  id="imageCode" size="10" onkeydown= "if(event.keyCode==13)form1.submit()"/>&nbsp;<img onclick="javascript:loadimage();"  title="换一张试试" name="randImage" id="randImage" src="/image.jsp" width="60" height="20" border="1" align="absmiddle"> 
			</div>
			<div class="publishButton">
				<button class="btn btn-primary" type="button" onclick="submitData()">发表评论</button>
			</div>
		</form>
	</div>
</div> --%>