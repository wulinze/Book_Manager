<%--
  Created by IntelliJ IDEA.
  User: 82490
  Date: 2019/4/15
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="../assets/js/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="../assets/css/index_main.css" />
    <!--[if lte IE 9]><link rel="stylesheet" href="../assets/css/ie9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="../assets/css/ie8.css" /><![endif]-->
    <noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
</head>
<body class="is-loading">
<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <section id="main">
        <header>
            <span class="avatar"><img src="../images/timg2.jpg" /></span>
            <form action="${pageContext.request.contextPath}/registerServlet" method="post">
                <ul class="links" style="list-style-type: none">
                    <li><h3>请输入用户名：</h3></li>
                    <li><input type="text" name="uname" id="id" placeholder="学号或工号"></li>
                    <li><h3 style="margin-top: 1em">请输入密码：</h3></li>
                    <li><input type="password" name="fir_psd" id="password" placeholder="密码"></li>
                    <li><input type="password" name="sec_psd" placeholder="密码"></li>
                    <li><button style="height: 3em;margin-top: 1em;vertical-align: middle">注册</button></li>
                </ul>
            </form>
            <p>NEU Courses Selection System</p>
        </header>

        <footer>
            <ul class="icons">
                <li><a href="https://github.com/" class="fa-github">Github</a></li>
                <li><a href="https://weibo.com/" class="fa-weibo">Weibo</a></li>
                <li><a href="https://im.qq.com/" class="fa-qq">QQ</a></li>
            </ul>
        </footer>
    </section>
    <!-- Footer -->
    <footer id="footer">
        <ul class="copyright">
            <li>&copy; WGXZ</li>
            <li>Design: </li>
        </ul>
    </footer>

</div>


<!-- Scripts -->
<!--[if lte IE 8]><script src="../assets/js/respond.min.js"></script><![endif]-->
<script>
    if ('addEventListener' in window) {
        window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
        document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
    }
</script>

</body>
</html>
