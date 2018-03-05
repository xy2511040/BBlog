<%--
  Created by IntelliJ IDEA.
  User: LTQ
  Date: 2018/2/21
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<footer class="footer">
    <div class="footer-inner">
        <div style="float: right;margin-top: 0;width: 100px;height: 50px">
            <a href="http://www.jsmoon.cn/">
                <img src="${pageContext.request.contextPath}/static/images/logo.png" style="float: left;width: 250px;height: 51px"/>
            </a>
        </div>
        <div class="copyright pull-left" style="float: left">
            <a href="www.jsmoon.cn" title="江山月下">江山月下</a> 版权所有丨改自<a
                href="http://yusi123.com/"> 欲思 </a>主题丨基于 SSM 构建 © 2017-<script>
            var date = new Date();  //创建对象
            var y = date.getFullYear();     //获取年份
            document.write(y);
        </script>
            丨托管于
            <a rel="nofollow" href="https://cloud.tencent.com/">腾讯云</a>
            |
            <a rel="nofollow" target="_blank" href="http://www.jsmoon.cn/login.jsp">后台管理 </a>
            丨
            <a rel="nofollow" target="_blank"
               href="http://www.miitbeian.gov.cn">湘ICP备17018586号</a>
        </div>
        <div class="copyright pull-left" style="float: left;">
            Powered by <a href="www.jsmoon.cn">jsmoon</a> V2.00
        </div>
        <div>
            <!-- cnzz stats -->
            <script type="text/javascript">
                var cnzz_s_tag = document.createElement('script');
                cnzz_s_tag.type = 'text/javascript';
                cnzz_s_tag.async = true;
                cnzz_s_tag.charset = 'utf-8';
                cnzz_s_tag.src = 'https://w.cnzz.com/c.php?id=1262457277&async=1';
                var root_s = document.getElementsByTagName('script')[0];
                root_s.parentNode.insertBefore(cnzz_s_tag, root_s);
            </script>
        </div>
    </div>
</footer>

